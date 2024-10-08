const frm = document.querySelector("form")
const resp1 = document.querySelector("#outResp1")
const resp2 = document.querySelector("#outResp2")

frm.addEventListener("submit", (e)=>{
e.preventDefault()
 const valor = Number(frm.inValor.value)
  const troco = valor - Math.floor(valor)
 if(valor <= 1.75){
    resp1.innerText = `Tempo: 30`
 } else if(valor< 3 ) {
    resp1.innerText = `Tempo: 60`
 } else if(valor>= 3)
    resp1.innerText = `Tempo: 120`

if(troco <= 0){
    resp2.innerText = `Sem Troco`
} else {
    resp2.innerText = `troco: ${troco.toFixed(2)} R$`
}



 

})



