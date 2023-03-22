import { fetchAllContent as fetchAllContent } from "../Fetches/fetch-all-content.js";
import { toggleModal } from "../libs.js";
import { addGenraButton, displayGenrasCheckboxes } from "../multi-select.js";



let plannedContainer = document.getElementById("plannedContainer")
let nowContainer = document.getElementById("nowContainer")
let doneContainer = document.getElementById("doneContainer")
let cardTemplate = document.getElementById("cardTemplate")

fetchAllContent();

initClickables();

export function contentAdapter(jsonResponse) {
    let content = jsonResponse.content
    displayGenrasCheckboxes(jsonResponse.genras)

    content.forEach(contentItem => {
        const clone = cardTemplate.content.cloneNode(true)

        let contentCard = clone.getElementById("contentCard")
        let contentImg = clone.getElementById("contentImg")
        let contentTitle = clone.getElementById("contentTitle")
        let contentDescription = clone.getElementById("contentDescription")
        let contentSeasone = clone.getElementById("contentSeason")
        let contentEpisode = clone.getElementById("contentEpisode")
        let contentWebsite = clone.getElementById("contentWebsite")
        let btnContentUpdate = clone.getElementById("btnContentUpdate")


        /*
       [{
        "id": 1,
        "title": "post man test399",
        "websiteName": "postman.com",
        "status": "planned",
        "description": "some deec",
        "contentLink": "https://9animetv.to/watch/my-hero-academia-season-6-18154?ep=97604",
        "imgSrc": "https://img.bunnycdnn.ru/_r/300x400/100/20/b7/20b7580c1abdf45a6eaf4826fc9fdf33/20b7580c1abdf45a6eaf4826fc9fdf33.jpg",
        "genra": "Action, Fantasy, School",
        "season": 6,
        "episode": 20
    }]
        */

        contentImg.src = contentItem.imgSrc
        contentTitle.innerText = contentItem.title
        contentDescription.innerText = contentItem.description.substring(0, 100)
        contentSeasone.innerText = "Season " + contentItem.season
        contentEpisode.innerText = "Episode " + contentItem.episode
        contentWebsite.innerText = "Website " + contentItem.websiteName


        contentWebsite.onclick = function () {
            window.open(contentItem.contentLink, "_blank")
        }

        btnContentUpdate.onclick = function () {
            toggleModal()
            populateUploadModalData(contentItem)
        }

        switch (contentItem.status) {
            case "planned": { plannedContainer.append(clone); break; }
            case "now": { nowContainer.append(clone); break; }
            case "done": { doneContainer.append(clone); break; }
        }


    });
}




function initClickables() {
    plannedContainer.onclick = function () {
        // toggleModal(plannedContainer)
    }
    nowContainer.onclick = function () {
        // toggleModal(nowContainer)
    }
    doneContainer.onclick = function () {
        // toggleModal(doneContainer)
    }
}


function populateUploadModalData(contentItem) {

    let modalElement = document.getElementById("addModal")
    let btnAdd = document.getElementById("btnAdd")
    modalElement.dataset.id = contentItem.id
    modalElement.dataset.seasonId = contentItem.seasonId
    modalElement.dataset.action = "update"
    btnAdd.innerText = "Update"


    let inputTitle = document.getElementById("inputTitle")
    let inputWebsite = document.getElementById("inputWebsite")
    let inputImgSrc = document.getElementById("inputImgSrc")
    let inputSeason = document.getElementById("inputSeason")
    let inputEpisode = document.getElementById("inputEpisode")
    let inputDescription = document.getElementById("inputDescription")

    inputTitle.value = contentItem.title
    inputWebsite.value = contentItem.contentLink
    inputImgSrc.value = contentItem.imgSrc
    inputSeason.value = contentItem.season
    inputEpisode.value = contentItem.episode
    inputDescription.value = contentItem.description


    let genraCheckboxesContainer = document.getElementById("genraCheckboxesContainer")
    const collection = genraCheckboxesContainer.children;
    for (let i = 0; i < collection.length; i++) {
        let genra = collection[i].innerText.trim()
        if (contentItem.genra.includes(genra)) {
            document.getElementById(genra).checked = true
            addGenraButton(genra)
        }
    }


}



