import http from "k6/http";
import { sleep } from "k6";

export let options = {
  stages: [
    { duration: "10s", target: 10 }, // 10 usuários por 10 segundos
    { duration: "20s", target: 50 }, // 50 usuários por 20 segundos
    { duration: "20s", target: 100 }, // 50 usuários por 20 segundos
    { duration: "10s", target: 0 }, // Sem usuários por 10 segundos
  ],
};

export default function () {
  const url = "https://api.example.com"; // Substitua pela URL da sua API.

  const payload = JSON.stringify({
    data: "example",
  });

  const params = {
    headers: {
      "Content-Type": "application/json",
    },
  };

  let response = http.get(url, payload, params);

  // Realize asserções adicionais na resposta, se necessário

  sleep(1); // Aguarde 1 segundo antes de enviar a próxima requisição
}