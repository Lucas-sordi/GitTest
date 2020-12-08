function load() {
    var msg = window.document.getElementById('msg')
    var img = window.document.getElementById('img')
    var date = new Date()
    var hours = date.getHours()
    var minutes = date.getMinutes()
    msg.innerHTML = `Agora são ${hours} horas e ${minutes} minutos`

    if (4 < hours && hours < 12) {
        img.src = "img/morning.jpg"
        document.body.style.background = "#FCD14D"
    }
    else if (11 < hours && hours < 20) {
        img.src = "img/evening.jpg"
        document.body.style.background = "#FFD27F"
    }
    else {
        img.src = "img/night.jpg"
        document.body.style.background = "#7B8993"
    }
}