function verificar() {
    var date = new Date()
    var year = date.getFullYear()
    var formyear = document.getElementById('txtano')
    var resp = document.getElementById('resp')


    if (formyear.value.length == 0 || 1900 > formyear.value || formyear.value > 2020) {
        window.alert('Data de nascimento inválida! Verifique os dados e tente novamente.')
    }
    else {
        var formsex = document.getElementsByName('radsex')
        var age = year - formyear.value
        var gender = ''
        if (formsex[0].checked){
            gender = 'Homem'
            if (age < 12) {
                img.src = "img/criancah.jpg"
            }
            else if (age < 18) {
                img.src = "img/jovemh.jpg"
            }
            else if (age < 55) {
                img.src = "img/adultoh.jpg"
            }
            else {
                img.src = "img/idosoh.jpg"
            }
        }

        else if (formsex[1].checked){
            gender = 'Mulher'
            if (age < 12) {
                img.src = "img/criancam.jpg"
            }
            else if (age < 18) {
                img.src = "img/jovemm.jpg"
            }
            else if (age < 55) {
                img.src = "img/adultom.jpg"
            }
            else {
                img.src = "img/idosom.jpg"
            }
        }


        resp.innerHTML = `${gender} de ${age} anos.`

    }
}