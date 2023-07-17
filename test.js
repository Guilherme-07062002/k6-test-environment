import http from "k6/http";
import { sleep } from "k6";

export default function () {
  const url = "https://api.example.com"; // Replace with your API URL.

  const payload = JSON.stringify({
    data: "example",
  });

  const params = {
    headers: {
      "Content-Type": "application/json",
    },
  };

  let response = http.post(url, payload, params);

  console.log(`Status: ${response.status}`);
  console.log(`Body: ${response.body}`);

  sleep(1); // Wait 1 second before sending the next request
}
