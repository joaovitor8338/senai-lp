const frm = document.querySelector("form")
const resp1 = document.querySelector("#outResp1")
const resp2 = document.querySelector("#outResp2")

frm.addEventListener("submit", (e) => {
    const prod = frm.inProduto.value
    const preco = Number(frm.inPreco.value)

    const desc = Math.floor(preco * 3) - (preco * 0.5)
   resp1.innerText = `Promoção de:${prod}, Leve 3 por apenas: ${desc}`
   resp2.innerText = ` o 3º produto sai por apenas: R$ ${(preco * 0.5).toFixed(2)}`

    e.preventDefault()

})