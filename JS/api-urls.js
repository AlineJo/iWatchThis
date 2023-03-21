export const HTTP_METHOD_GET_NO_CACHE = {
    method: 'GET', headers: { 'Cache-Control': 'no-cache' }
}

export function HTTP_METHOD_POST_NO_CACHE(jsonRequestObj) {
    const httpObj = {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
            'Cache-Control': 'no-cache'
        },
        // your expected POST request payload goes here
        body: JSON.stringify(jsonRequestObj)
    };
    return httpObj;
}


// ******** userAPI URLS ***********//
export const API_URL_GET_ALL_CONTENT = "http://localhost/expprojects/iWatchThis/php/get-content-all.php"
export const API_URL_GET_PLANNED_CONTENT = "http://localhost/expprojects/iWatchThis/php/get-content-planned.php"
export const API_URL_INSERT_CONTENT = "http://localhost/expprojects/iWatchThis/php/insert-content.php"
