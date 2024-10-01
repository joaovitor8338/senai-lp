const frm = document.querySelector("form")
const resp1 = document.querySelector("h3")

frm.addEventListener("submit", (e)=>{
    const valor = Number(frm.inValor.value)
    const tempo = Number(frm.inTempo.value)
    //Math.round()
    
    const time = Math.round(valor / 15) * tempo
    resp1.innerText`valor a Pagar ${time}`
e.preventDefault()
})

