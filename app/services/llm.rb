# Llm — thin abstraction over LLM providers.
#
# Environment variables:
#   LLM_PROVIDER      Provider to use: "anthropic" (default) or "mistral".
#   ANTHROPIC_API_KEY Required when LLM_PROVIDER=anthropic.
#   ANTHROPIC_MODEL   Optional. Defaults to "claude-haiku-4-5-20251001".
#   MISTRAL_API_KEY   Required when LLM_PROVIDER=mistral.
#   MISTRAL_MODEL     Optional. Defaults to "mistral-large-latest".
#   MISTRAL_ENDPOINT  Optional. Defaults to "https://api.mistral.ai/v1/chat/completions".
module Llm
  def self.client
    case ENV.fetch("LLM_PROVIDER", "anthropic")
    when "anthropic" then Providers::Anthropic.new
    when "mistral"   then Providers::Mistral.new
    else
      raise Base::Error, "Unknown LLM_PROVIDER: #{ENV["LLM_PROVIDER"].inspect}"
    end
  end
end
