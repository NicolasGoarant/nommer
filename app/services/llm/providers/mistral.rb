module Llm
  module Providers
    class Mistral < Base
      DEFAULT_MODEL    = "mistral-large-latest"
      DEFAULT_ENDPOINT = "https://api.mistral.ai/v1/chat/completions"

      def chat(system:, messages:, max_tokens:, temperature: nil)
        chat_messages = []
        chat_messages << { role: "system", content: system } if system && !system.to_s.empty?
        chat_messages.concat(messages)

        body = {
          model:      ENV.fetch("MISTRAL_MODEL", DEFAULT_MODEL),
          messages:   chat_messages,
          max_tokens: max_tokens
        }
        body[:temperature] = temperature unless temperature.nil?

        headers = {
          "Authorization" => "Bearer #{ENV.fetch("MISTRAL_API_KEY")}",
          "Accept"        => "application/json"
        }

        raw = post_json(
          ENV.fetch("MISTRAL_ENDPOINT", DEFAULT_ENDPOINT),
          headers: headers,
          body:    body
        )

        choice = raw.dig("choices", 0) || {}
        Result.new(
          text:          choice.dig("message", "content").to_s,
          model:         raw["model"],
          input_tokens:  raw.dig("usage", "prompt_tokens"),
          output_tokens: raw.dig("usage", "completion_tokens"),
          finish_reason: choice["finish_reason"],
          raw:           raw
        )
      end
    end
  end
end
