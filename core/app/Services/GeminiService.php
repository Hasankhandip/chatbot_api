<?php
namespace App\Services;

use GuzzleHttp\Client;
use Illuminate\Support\Facades\Log;

class GeminiService {
    protected $client;
    protected $apiKey;
    protected $model;

    public function __construct() {
        $this->client = new Client([
            'base_uri' => 'https://generativelanguage.googleapis.com/',
            'timeout'  => 30,
        ]);

        $this->apiKey = env('GEMINI_API_KEY');
        $this->model  = env('GEMINI_MODEL', 'gemini-2.0-flash');
    }

    public function generateContent($prompt) {
        try {
            $response = $this->client->post("v1beta/models/{$this->model}:generateContent", [
                'headers' => [
                    'x-goog-api-key' => $this->apiKey,
                    'Content-Type'   => 'application/json',
                ],
                'json'    => [
                    'contents' => [
                        [
                            'parts' => [['text' => $prompt]],
                        ],
                    ],
                ],
            ]);

            $data = json_decode($response->getBody(), true);

            return $data['candidates'][0]['content']['parts'][0]['text'] ?? 'No response from Gemini.';
        } catch (\Exception $e) {
            Log::error('Gemini API Error: ' . $e->getMessage());
            return 'Error connecting to Gemini API.';
        }
    }
}
