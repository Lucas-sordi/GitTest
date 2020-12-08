function calcular() {
    var num = document.getElementById('numero')
    var sel = document.getElementById('select')
    if (num.value.length == 0) {
        window.alert('Por favor, digite um número')
    }
    else {
        var n = Number(num.value)
        sel.innerHTML = ``
        for (cont = 1; cont < 11; cont++) {
            let item = document.createElement('option')
            item.text = `${n} x ${cont} = ${n*cont}`
            sel.appendChild(item)
        }
    }

}