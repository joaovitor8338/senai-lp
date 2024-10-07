const frm = document.querySelector("form")
const resp = document.querySelector("h3")

frm.addEventListener("submit", (e)=>{
    e.preventDefault()
    const veloP = Number(frm.inVelocidadePermitida.value)
    const veloC = Number(frm.inVelocidadeCondutor.value)

    if(veloC <= veloP) {
        resp.innerText = `Sem Multa`
    } else if(veloC <= (veloP * 1.2)){
        resp.innerText = `Multa Leve`
    } else {
        resp.innerText = `Multa Grave`
    }
})