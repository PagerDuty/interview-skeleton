import requests

class PagerdutyClient:
  def http_get(url):
    headers = {
      "User-Agent": "Mozilla/5.0"
    }
    print(f"\nSending 'GET' request to URL : %s" %(url))
    response = requests.get(url, headers=headers)

    print("Response Code : %s" %(response.status_code))
    print(response)
    return response.text

  def get_input_line():
    return input()

print("This is where the execution code can be added")