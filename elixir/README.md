# Elixir PagerdutyClient

This is a simple, incomplete client written in Elixir that lets you make HTTPS requests and return the text body. For the interview prep, feel free to use any portion of this code or write your code from scratch.

## Setup to run the sample

The sample code uses the `httpoison` and `json` libraries. If you'd like use the sample code, make sure you install these libraries with:

```
mix deps.get
```

You can generate an the `pagerduty_client` executable using:

```
mix escript.build
```

You can try the sample code by running:

```
./pagerduty_client
```

For now, it will just print a string telling you where you can add code to execute. You will need to:

* Modify the code to access the PagerDuty API by calling `PagerdutyClient.http_get`.
* Make any other changes you need to make to fulfill the exercise requirements.
* Incorporate the authorization header to access the API. You can use this one that provides example data:

```
Authorization: Token token=y_NbAkKc66ryYTWUXYEu
```

For information about the API documentation, go to: https://developer.pagerduty.com/api-reference/