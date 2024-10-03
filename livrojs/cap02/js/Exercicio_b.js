const frm = document.querySelector("form")
const resp1 = document.querySelector("h3")

frm.addEventListener("submit", (e)=>{
    const valor = Number(frm.inValor.value)
    const tempo = Number(frm.inTempo.value)
    //Math.round()
    
    const time = Math.round(tempo / 15)
    const valorTotal = time * valor
    resp1.innerText = `valor a Pagar: ${valorTotal}`

    e.preventDefault()
})

//const blocosDe15Minutos = Math.ceil(tempoUso / 15); // Arredonda para cima
