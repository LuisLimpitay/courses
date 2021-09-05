

//------ extraer paises de cada region ----------//
let usan = 'https://restcountries.eu/rest/v2/regionalbloc/usan'
let cais = 'https://restcountries.eu/rest/v2/regionalbloc/cais'
let nafta = 'https://restcountries.eu/rest/v2/regionalbloc/nafta'

let usanPaises = ['Argentina', 'Bolivia', 'Brasil', 'Chile', 'Colombia','Ecuador', 'Guyana', 'Paraguay', 'Perú', 'Suriname', 'Uruguay', 'Venezuela']

let caisPaises = ['Belice', 'Costa Rica', 'Republica Dominicana', 'El salvador', 'Guatemala', 'Honduras', 'Nicaragua','Panama']

let naftaPaises = ['Canada', 'Mexico', 'Estados Unidos']


let usanDom = document.getElementById('usan')
let caisDom = document.getElementById('cais')
let naftaDom = document.getElementById('nafta')

function extraerPaises(paises, dom){
    let paisesAux = ''
    for(pais of paises){
        paisesAux += `<option value = "${pais.replace(" ", "_").toLowerCase()}"> ${pais} </option>`
    }
    dom.innerHTML = paisesAux
}

extraerPaises(usanPaises, usanDom)
extraerPaises(caisPaises, caisDom)
extraerPaises(naftaPaises, naftaDom)
