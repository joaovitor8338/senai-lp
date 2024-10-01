const frm = document.querySelector("form")
const resp1 = document.querySelector("#outResp1")
const resp2 = document.querySelector("#outResp2")

frm.addEventListener("submit", (e)=>{
    const med = (frm.inMed.value)
    const preco = Number(frm.inPreco.value)

    const desc = Math.floor(preco) * 2

    resp1.innerText = `Promoção de ${med}`//Math.floor(num)
    resp2.innerText = `Leve dois por apenas ${desc}`
    e.preventDefault()




    
 })