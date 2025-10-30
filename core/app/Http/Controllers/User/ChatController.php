<?php
namespace App\Http\Controllers\User;

use App\Constants\Status;
use App\Http\Controllers\Controller;
use App\Models\ChatHistory;
use App\Services\GeminiService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ChatController extends Controller {
    protected $gemini;

    public function __construct(GeminiService $gemini) {
        $this->gemini = $gemini;
    }

    public function index() {
        $pageTitle = "AI Chatbot";
        $userId    = auth()->id();

        $lastConversation = ChatHistory::where('user_id', $userId)
            ->orderByDesc('conversation_id')
            ->first();

        $currentConversationId = $lastConversation ? $lastConversation->conversation_id : null;

        $messages = $currentConversationId
            ? ChatHistory::where('user_id', $userId)
            ->where('conversation_id', $currentConversationId)
            ->orderBy('created_at')
            ->get()
            : collect();

        $conversations = ChatHistory::where('user_id', $userId)
            ->where('sender', 1)
            ->select('conversation_id', 'message', 'created_at')
            ->orderBy('created_at', 'asc')
            ->get()
            ->groupBy('conversation_id')
            ->map(fn($group) => $group->first())
            ->sortByDesc(fn($conv) => $conv->created_at);

        return view('Template::chat', compact('pageTitle', 'messages', 'conversations', 'currentConversationId'));
    }

    private function nextConversationId($userId) {
        $lastConversation = ChatHistory::where('user_id', $userId)
            ->orderByDesc('conversation_id')
            ->first();

        return $lastConversation ? $lastConversation->conversation_id + 1 : 1;
    }

    public function chat(Request $request) {
        $request->validate([
            'message' => 'required|string',
        ]);

        $userId         = auth()->id();
        $conversationId = $request->conversation_id ?? $this->nextConversationId($userId);

        $userChat                  = new ChatHistory();
        $userChat->user_id         = $userId;
        $userChat->conversation_id = $conversationId;
        $userChat->message         = $request->message;
        $userChat->sender          = Status::USER;
        $userChat->save();

        $botReply = $this->gemini->generateContent($request->message);

        $botChat                  = new ChatHistory();
        $botChat->user_id         = $userId;
        $botChat->conversation_id = $conversationId;
        $botChat->message         = $botReply;
        $botChat->sender          = Status::BOT;
        $botChat->save();

        return response()->json([
            'reply'           => $botReply,
            'conversation_id' => $conversationId,
        ]);
    }

    public function newConversation() {
        $userId = auth()->id();

        $newConversationId = $this->nextConversationId($userId);

        return response()->json([
            'success'         => true,
            'conversation_id' => $newConversationId,
        ]);
    }

    public function loadConversation($conversationId) {
        $userId = auth()->id();

        $messages = ChatHistory::where('user_id', $userId)
            ->where('conversation_id', $conversationId)
            ->orderBy('created_at')
            ->get();

        return response()->json($messages);
    }
}