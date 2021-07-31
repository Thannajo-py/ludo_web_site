let for_games = document.getElementsByClassName("game-only")
let for_add_on = document.getElementById("id_associated_game").parentElement.parentElement
let for_multi_add_on = document.getElementById("id_associated_games").parentElement.parentElement

let selector = document.getElementById("id_type")
switch (selector.value) {
    case "Jeu":
        for_add_on.setAttribute("hidden","")
        for_multi_add_on.setAttribute("hidden","")
        break
    case "Extension simple":
        for_multi_add_on.setAttribute("hidden","")
        for (let i of for_games){i.parentElement.parentElement.setAttribute('hidden','')}
}

selector.addEventListener("input",function () {
    console.log(selector.value)
    switch (selector.value) {
        case "Jeu":
            for_add_on.setAttribute("hidden","")
            for_multi_add_on.setAttribute("hidden","")
            for (let i of for_games){i.parentElement.parentElement.removeAttribute('hidden')}
            break
        case "Extension simple":
            for_multi_add_on.setAttribute("hidden","")
            for (let i of for_games){i.parentElement.parentElement.setAttribute('hidden','')}
            for_add_on.removeAttribute("hidden")
            break
        case "Extension multiples":
            for_add_on.setAttribute("hidden","")
            for (let i of for_games){i.parentElement.parentElement.setAttribute('hidden','')}
            for_multi_add_on.removeAttribute("hidden")
            break
    }

})