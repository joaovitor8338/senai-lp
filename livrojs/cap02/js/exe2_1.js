// criar uma referencia ao form e ao h3(onde será exibida a resposta)
const frm = document.querySelector("form");
const resp = document.querySelector("h3");

//cria um 'ouvinte' de evento, aciona quando o botão submit for clicado 
frm.addEventListener("submit", executar);

function executar(envento) {
const nome = frm.inNome.value// obtem o nome digitado no form
resp.innerHTML = `olá <i> ${nome} `;
envento.preventDefault();
}