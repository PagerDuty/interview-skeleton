# Java PagerdutyClient

This is a simple, incomplete client written in Java that lets you make HTTPS requests and return the text body. For the interview prep, feel free to use any portion of this code or write your code from scratch.

## Setup to run the sample

The sample code uses the Google `Gson` library to convert from JSON to a Map. This library has been included in the `lib` directory. If you'd like use the sample code, make sure to set your `CLASSPATH` environment variable appropriately or pass it it on the command line for for each command. Alternatively, you can use your favorite build tool.

To compile the code in the sample:

```
javac -classpath ./lib/gson-2.8.6.jar  ./src/main/java/com/pagerduty/client/*.java
```

You can try the sample code by running:

```
java -classpath ./lib/gson-2.8.6.jar:./src/main/java com.pagerduty.client.Main
```

For now, it will just print a string telling you where you can add code to execute. You will need to:

* Modify the code to access the PagerDuty API by calling `com.pagerduty.client.Util.httpGetRequest`.
* Make any other changes you need to make to fulfill the exercise requirements.
* Incorporate the authorization header to access the API. You can use this one that provides example data:

```
Authorization: Token token=y_NbAkKc66ryYTWUXYEu
```

For information about the API documentation, go to: https://developer.pagerduty.com/api-reference/