require "json"
require "net/http"

class PagerdutyClient
  class << self
    def http_get(url)
      uri = URI(url)

      request = Net::HTTP::Get.new(uri)
      request["User-Agent"] = "Mozilla/5.0"

      puts "\nSending 'GET' request to URL : #{url}"
      response = Net::HTTP.start(uri.hostname, uri.port, use_ssl: true) { |http|
        http.request(request)
      }

      puts "Response Code : #{response.code}"
      response.body
    end

    def json_to_map(json_string)
      JSON.parse(json_string)
    end

    def get_input_line()
      STDIN.gets().chomp()
    end
  end
end

puts "This is where the execution code can be added"