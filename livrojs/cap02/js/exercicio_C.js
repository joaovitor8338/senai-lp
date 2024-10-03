const frm = document.querySelector("form")
const resp1 = document.querySelector("#outResp1")
const resp2 = document.querySelector("#outResp2")

frm.addEventListener("submit", (e) => {
    const prod = frm.inProduto.value
    const preco = Number(frm.inPreco.value)

    const desc = (preco * 0.50) * 3
    resp1.innerText = `${prod.toFixed(2)} - Promoção: Leve 3 por R$: ${desc.toFixed(2)}`

    e.preventDefault()

})