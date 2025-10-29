<?php
namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use OpenAI\Laravel\Facades\OpenAI;

class ChatController extends Controller {
    // Blade view
    public function chatform() {
        $pageTitle = "Chat";
        return view('Template::chat', compact('pageTitle'));
    }
    // Ajax POST
    public function chat(Request $request) {
        $request->validate(['message' => 'required|string']);
        $message = $request->input('message');

        try {
            $response = OpenAI::chat()->create([
                'model'    => 'gpt-3.5-turbo',
                'messages' => [
                    ['role' => 'system', 'content' => 'You are a helpful assistant.'],
                    ['role' => 'user', 'content' => $message],
                ],
            ]);

            $reply = $response['choices'][0]['message']['content'] ?? 'No response';
            return response()->json(['reply' => $reply]);

        } catch (\OpenAI\Exceptions\RateLimitException $e) {
            return response()->json([
                'reply'   => null,
                'message' => "API rate limit exceeded. Please wait a moment.",
            ], 429);
        } catch (\Exception $e) {
            return response()->json([
                'reply'   => null,
                'message' => $e->getMessage(),
            ], 500);
        }
    }
}
