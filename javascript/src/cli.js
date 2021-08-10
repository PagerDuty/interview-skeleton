#!/usr/bin/env node

const https = require('https')
const readline = require('readline').createInterface({
  input: process.stdin,
  output: process.stdout
});

function http_get(url, callback) {

  const options = {
    method: 'GET',
    headers: {
      'User-Agent': 'Mozilla/5.0',
    }
  }

  console.log("\nSending 'GET' request to URL : " + url)

  let request = https.request(url, options, (res) => {
    if (res.statusCode != 200) {
      console.error(`Did not get an OK from this server. Code: ${res.statusCode}`);
      res.resume();
      return;
    }

    let data = '';
    res.on('data', chunk => data += chunk);
    res.on('close', () => callback(data));
  })

  request.on('error', error => {
    console.error(`Encountered an error trying to make a request: ${error}`);
  })

  request.end()
}

function json_to_object(json_string) {
  return JSON.parse(json_string)
}

function get_input_line(prompt, callback) {
  readline.question(prompt, input => {
    readline.close();
    callback(input);
  })
}

console.log("This is where the execution code can be added")