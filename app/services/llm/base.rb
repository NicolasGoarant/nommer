require "net/http"
require "json"
require "uri"

module Llm
  class Base
    Error  = Class.new(StandardError)
    Result = Data.define(:text, :model, :input_tokens, :output_tokens, :finish_reason, :raw)

    def chat(system:, messages:, max_tokens:, temperature: nil)
      raise NotImplementedError, "#{self.class} must implement #chat"
    end

    private

    def post_json(url, headers:, body:)
      uri  = URI.parse(url)
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl     = uri.scheme == "https"
      http.read_timeout = 60

      req = Net::HTTP::Post.new(uri.request_uri)
      headers.each { |k, v| req[k] = v }
      req["Content-Type"] = "application/json"
      req.body = JSON.generate(body)

      response = http.request(req)
      unless response.is_a?(Net::HTTPSuccess)
        raise Error, "HTTP #{response.code}: #{response.body}"
      end
      JSON.parse(response.body)
    rescue Error
      raise
    rescue => e
      raise Error, "LLM request failed: #{e.class}: #{e.message}"
    end
  end
end
