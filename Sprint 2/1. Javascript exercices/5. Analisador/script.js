    var num = document.getElementById('numero')
    var sel = document.getElementById('select')
    var res = document.getElementById('res')
    var valores = []

    function isNumber(n){
        if (Number(n) > 0 && Number(n) <= 100) {
            return true
        }
        else {
            return false
        }
    }

    function inList(n, l) {
        if (l.indexOf(Number(n)) != -1) {
            return true
        }
        else {
            return false
        }

    }


    function add() {
        if (isNumber(num.value) && !inList(num.value, valores)) {
            valores.push(Number(num.value))
            let item = document.createElement('option')
            item.text = `${num.value}`
            sel.appendChild(item)
            res.innerHTML = ``
        }
        else {
            window.alert('O valor informado já está na lista ou é inválido.')
        }
        num.value = ''
        num.focus()
    }

    function fin() {
        if (valores.length == 0) {
            window.alert('Adicione valores antes de finalizar!')
        }
        else {
            var total = valores.length
            var maior = valores[0]
            var menor = valores[0]
            var soma = 0
            for (let pos in valores) {
                soma += valores[pos]
                if (valores[pos] > maior) {
                    maior = valores[pos]
                }
                else if (valores[pos] < menor) {
                    menor = valores[pos]
                }
            }
            res.innerHTML = ``
            res.innerHTML += `<p>A lista possui ${total} elemento(s).</p>`
            res.innerHTML += `<p>O maior valor informado foi ${maior}.</p>`
            res.innerHTML += `<p>O menor valor informado foi ${menor}.</p>`
            res.innerHTML += `<p>A soma dos valores é ${soma}.</p>`
            res.innerHTML += `<p>A média dos valores é ${soma/total}.</p>`
        }
    }