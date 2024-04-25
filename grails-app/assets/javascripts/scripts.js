const form = document.getElementById("myForm")
const cep = document.getElementById('cep')
const sucessMessage = document.getElementById('msg-success')


form.addEventListener("submit", (e) => {
    const data = {
        "name": e.target.elements["name"].value,
        "cpf": e.target.elements["cpf"].value,
        "email": e.target.elements["email"].value,
        "phone": e.target.elements["phone"].value,
        "place": e.target.elements["cep"].value,
        "neighborhood": e.target.elements["cep"].value,
        "city": e.target.elements["cep"].value,
        "state": e.target.elements["cep"].value,
    }
    sucessMessage.classList.remove('hidden')
})
cep.addEventListener("change", (e) => {
    if(e.target.value.length == 8){
        getCepInfo(e.target.value).then(resp => {
            document.getElementById("neighborhood").value = resp.bairro ?? ''
            document.getElementById("city").value = resp.localidade ?? ''
            document.getElementById("place").value = resp.logradouro ?? ''
            document.getElementById("state").value = resp.uf ?? ''
        })
    }
})
async function getCepInfo(cep){
    const response = await fetch(`https://viacep.com.br/ws/${cep}/json/`)
    const convertedCep = await response.json()
    return convertedCep
}
