defmodule PagerdutyClient do
  def main(_args) do
    IO.puts("This is where the execution code can be added")
  end

  def http_get(url) do
    headers = %{"User-Agent" => "Mozilla/5.0"}

    IO.puts("\nSending 'GET' request to URL : #{url}")
    response = HTTPoison.get!(url, headers)
    IO.puts("Response Code : #{response.status_code}")
    response.body
  end

  def json_to_map(json_string) do
    JSON.decode!(json_string)
  end

  def get_input_line() do
    IO.read(:line) |> String.trim()
  end
end
