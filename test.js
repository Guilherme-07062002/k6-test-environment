import http from "k6/http";
import { sleep } from "k6";

export default function () {
  const url = "https://api.example.com"; // Substitua pela URL da sua API

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

  sleep(1); // Aguarda 1 segundo antes de enviar a próxima solicitação
}
