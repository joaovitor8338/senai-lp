// criar uma referencia ao form e ao h3(onde será exibida a resposta)
const frm = document.querySelector("form");
const resp = document.querySelector("h3");

//cria um 'ouvinte' de evento, aciona quando o botão submit for clicado 
frm.addEventListener("submit", (e)=>{
    const nome = frm.inNome.value; // obtem o nome digitado
    resp.innerText = `Olá ${nome}`;// exibe a resposta do programa
    e.preventDefault(); // vai envitar que o form envie os dados pro destino.php
})