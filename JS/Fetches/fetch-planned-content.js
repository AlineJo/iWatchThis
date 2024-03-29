import { contentAdapter } from "../Adapters/adapter-all-content.js";
import { API_URL_GET_PLANNED_CONTENT, HTTP_METHOD_GET_NO_CACHE } from "../api-urls.js";

export async function fetchPlannedContent() {


    // fetch response using API URL and HTTP method
    const response = await fetch(API_URL_GET_PLANNED_CONTENT, HTTP_METHOD_GET_NO_CACHE);

    // if error display error massege
    if (!response.ok) {
        throw new Error(`HTTP error! status : ${response.status}`)
    }

    // extract json from the response
    const content = await response.json();

    // console.log(JSON.stringify(content));

    contentAdapter(content)
}