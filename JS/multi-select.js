let genraCheckboxesContainer = document.getElementById("genraCheckboxesContainer")
let genraCheckboxTemplate = document.getElementById("genraCheckboxTemplate")

let genraButtonsContainer = document.getElementById("genraButtonsContainer")
let genraButtonTempalate = document.getElementById("genraButtonTempalate")


// let genras = ["g1", "g2", "g3", "g4", "g5", "g6", "g7", "g8", "g9", "g10"]



export function displayGenrasCheckboxes(genras) {

    console.log(genras)

    // let genras = getArrayFromString(genrasString)
    genras.forEach(g => {
        populateCheckboxes(g.genra)
    })


}

function populateCheckboxes(g) {
    const clone = genraCheckboxTemplate.content.cloneNode(true)
    let genraCheckBox = clone.getElementById("genraCheckBox")
    let genraCheckBoxLabel = clone.getElementById("genraCheckBoxLabel")

    genraCheckBox.value = g
    genraCheckBoxLabel.innerText = g

    genraCheckBox.addEventListener('change', (event) => {
        if (event.currentTarget.checked) {
            addGenraButton(g)
        } else {
            removeGenraButton(g)
        }
    })
    genraCheckboxesContainer.append(clone)
}

function addGenraButton(g) {
    const clone = genraButtonTempalate.content.cloneNode(true)
    let genraButton = clone.getElementById("genraButton")

    genraButton.innerText = g
    genraButton.id = genraButton.id + "_" + g
    genraButtonsContainer.append(genraButton)

}

function removeGenraButton(g) {
    document.getElementById("genraButton_" + g).remove();

}

function getSelectedGenras() {

    const collection = genraButtonsContainer.children;
    let selectGenras = []
    for (let i = 0; i < collection.length; i++) {
        selectGenras.push(collection[i].innerText);
    }

    return selectGenras
}



// function getArrayFromString(str) {
//     return str.split(',');
// }