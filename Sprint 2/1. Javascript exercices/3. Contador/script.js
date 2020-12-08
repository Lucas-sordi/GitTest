function contar() {
    var inicio = document.getElementById('inicio')
    var fim = document.getElementById('fim')
    var passo = document.getElementById('passo')
    var resp = document.getElementById('resp')

    if (inicio.value.length == 0 || fim.value.length == 0 || passo.value.length == 0) {
        window.alert('Por favor, preencha os três campos.')
    }
    else {
        var i = Number(inicio.value)
        var f = Number(fim.value)
        var p = Number(passo.value)

        if (i < f) {
            for (var cont = i; cont <= f; cont+= p) {
                resp.innerHTML += `${cont} \u{1F449}`
            }
        }
        
        else {
            for (var cont = i; cont >= f; cont-= p) {
                resp.innerHTML += `${cont} \u{1F449}`
            }
        }

        resp.innerHTML += `\u{1F3C1} <br><br>`
    }
}