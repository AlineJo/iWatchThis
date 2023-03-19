let genraCheckboxesContainer = document.getElementById("genraCheckboxesContainer")
let genraCheckboxTemplate = document.getElementById("genraCheckboxTemplate")

let genraButtonsContainer = document.getElementById("genraButtonsContainer")
let genraButtonTempalate = document.getElementById("genraButtonTempalate")


let btnSubmit = document.getElementById("btnSubmit")
btnSubmit.onclick = function () {

    const collection = genraButtonsContainer.children;

    let text = "";
    for (let i = 0; i < collection.length; i++) {
        text += collection[i].id + "\n";
    }

    console.log(text);

}


let genras = ["g1", "g2", "g3", "g4", "g5"]


displayGenrasCheckboxes()

function displayGenrasCheckboxes() {
    console.log("displayGenrasCheckboxes");

    genras.forEach(g => {
        populateCheckboxes(g)
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