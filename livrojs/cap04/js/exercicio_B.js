const frm = document.querySelector("form")
const resp = document.querySelector("h3")

frm.addEventListener("submit", (e)=>{
    e.preventDefault()
    const velo1 = Number(frm.inVelocidadePermitida.value)
    const velo2 = Number(frm.inVelocidadeCondutor.value)

    if(velo1 <= velo2) {
        resp.innerText = `Sem Multa`
    } else if(velo1 >= velo2 * 1.2){
        resp.innerText = `Multa Leve`
    } else {
        resp.innerText = `Multa Grave`
    }
})