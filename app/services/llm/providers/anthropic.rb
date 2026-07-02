module Llm
  module Providers
    class Anthropic < Base
      DEFAULT_MODEL = "claude-haiku-4-5-20251001"
      ENDPOINT      = "https://api.anthropic.com/v1/messages"
      API_VERSION   = "2023-06-01"

      def chat(system:, messages:, max_tokens:, temperature: nil)
        body = {
          model:      ENV.fetch("ANTHROPIC_MODEL", DEFAULT_MODEL),
          max_tokens: max_tokens,
          messages:   messages
        }
        body[:system]      = system if system && !system.to_s.empty?
        body[:temperature] = temperature unless temperature.nil?

        headers = {
          "x-api-key"         => ENV.fetch("ANTHROPIC_API_KEY"),
          "anthropic-version" => API_VERSION
        }

        raw = post_json(ENDPOINT, headers: headers, body: body)

        Result.new(
          text:          raw.dig("content", 0, "text").to_s,
          model:         raw["model"],
          input_tokens:  raw.dig("usage", "input_tokens"),
          output_tokens: raw.dig("usage", "output_tokens"),
          finish_reason: raw["stop_reason"],
          raw:           raw
        )
      end
    end
  end
end
