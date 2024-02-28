require 'net/http'
require 'uri'
require 'json'
require_relative "./key"

api_key = get_key

# OpenAIのAPIエンドポイント
uri = URI.parse("https://api.openai.com/v1/chat/completions")

content = ARGV.join(' ')

if content.empty?
  puts "引数に質問を指定してください"
  exit
end

http = Net::HTTP.new(uri.host, uri.port)
http.use_ssl = true
request = Net::HTTP::Post.new(uri.request_uri, {
  "Content-Type" => "application/json",
  "Authorization" => "Bearer #{api_key}"
})

body = {
  model: "gpt-3.5-turbo",
  temperature: 0.7,
  max_tokens: 1000,
  messages: [
    { role: "user", content: content },
  ]
}
request.body = body.to_json

response = http.request(request)

# レスポンスを出力
puts "#{JSON.parse(response.body)["choices"][0]["message"]["content"]}"
