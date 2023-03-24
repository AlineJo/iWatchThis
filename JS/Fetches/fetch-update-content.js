import { API_URL_UPDATE_CONTENT, HTTP_METHOD_POST_NO_CACHE } from "../api-urls.js";
import { getSelectedGenras } from "../multi-select.js";
import { toggleModal } from "../libs.js"




export function validateUpdate() {

    let modalElement = document.getElementById("addModal")

    /*
   "title" : "post man test399" ,              
   "website"  : "postman.com" , 
   "status" : "planed" , 
   "description" : "some deec" , 
   >>>"contentLink" : "https://9animetv.to/watch/my-hero-academia-season-6-18154?ep=97604" , 
   "imgSrc" : "https://img.bunnycdnn.ru/_r/300x400/100/20/b7/20b7580c1abdf45a6eaf4826fc9fdf33/20b7580c1abdf45a6eaf4826fc9fdf33.jpg" , 
   "season" : 6 , 
   "episode" : 20 , 
   "ganrasArray" :["Action", "School", "Fantasy"]
       */

    let jsonRequestBody = {}
    jsonRequestBody.contentId = parseInt(modalElement.dataset.id)
    jsonRequestBody.seasonId = parseInt(modalElement.dataset.seasonId)

    let inputStatus = document.getElementById("inputStatus")
    if (inputStatus.value == "-1") {
        inputStatus.classList.add("is-invalid")
        return;
    }
    else {
        inputStatus.classList.remove("is-invalid")
        jsonRequestBody.status = inputStatus.value
    }
    
    let inputRank = document.getElementById("inputRank")
    if (inputRank.value == "") {
        inputRank.classList.add("is-invalid")
        return;
    }
    else {
        inputRank.classList.remove("is-invalid")
        jsonRequestBody.rank = inputRank.value
    }

    let inputTitle = document.getElementById("inputTitle")
    if (inputTitle.value == "") {
        inputTitle.classList.add("is-invalid")
        return;
    }
    else {
        inputTitle.classList.remove("is-invalid")
        jsonRequestBody.title = inputTitle.value
    }

    let inputWebsite = document.getElementById("inputWebsite")
    if (inputWebsite.value == "") {
        inputWebsite.classList.add("is-invalid")
        return;
    }
    else {
        inputWebsite.classList.remove("is-invalid")
        jsonRequestBody.website = getDomainFromUrl(inputWebsite.value)
        jsonRequestBody.contentLink = inputWebsite.value

    }

    let inputImgSrc = document.getElementById("inputImgSrc")
    if (inputImgSrc.value == "") {
        inputImgSrc.classList.add("is-invalid")
        return;
    }
    else {
        inputImgSrc.classList.remove("is-invalid")
        jsonRequestBody.imgSrc = inputImgSrc.value
    }

    let dropdownMenuButton = document.getElementById("dropdownMenuButton")
    if (getSelectedGenras().length == 0) {
        dropdownMenuButton.classList.add("is-invalid")
        return;
    }
    else {
        dropdownMenuButton.classList.remove("is-invalid")
        jsonRequestBody.ganrasArray = getSelectedGenras()
    }

    let inputSeason = document.getElementById("inputSeason")
    if (inputSeason.value == "") {
        inputSeason.classList.add("is-invalid")
        return;
    }
    else {
        inputSeason.classList.remove("is-invalid")
        jsonRequestBody.season = inputSeason.value
    }

    let inputEpisode = document.getElementById("inputEpisode")
    if (inputEpisode.value == "") {
        inputEpisode.classList.add("is-invalid")
        return;
    }
    else {
        inputEpisode.classList.remove("is-invalid")
        jsonRequestBody.episode = inputEpisode.value
    }

    let inputDescription = document.getElementById("inputDescription")
    if (inputDescription.value == "") {
        inputDescription.classList.add("is-invalid")
        return;
    }
    else {
        inputDescription.classList.remove("is-invalid")
        jsonRequestBody.description = inputDescription.value
    }

    fetchUpdateContent(jsonRequestBody)
}


async function fetchUpdateContent(jsonRequestBody) {

    console.log(JSON.stringify(jsonRequestBody));

    // fetch response using API URL and HTTP method
    const response = await fetch(API_URL_UPDATE_CONTENT, HTTP_METHOD_POST_NO_CACHE(jsonRequestBody));

    // if error display error massege
    if (!response.ok) {
        throw new Error(`HTTP error! status : ${response.status}`)
    }

    // extract json from the response
    const jsonResponse = await response.json();

    toggleModal()

    location.reload();
}


function getDomainFromUrl(contentUrl) {
    let domain = (new URL(contentUrl));
    domain = domain.hostname.replace('www.', '');//remove www.
    return domain
}

