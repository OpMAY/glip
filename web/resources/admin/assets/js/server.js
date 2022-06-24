const normalFetchFunction = (url, method, data, doneFunction, errorFunction) => {
    const options = {
        method: method,
        headers: {
            'Content-Type': 'application/json;charset=utf-8'
        },
        body: method === 'POST' ? JSON.stringify(data) : null
    }

    fetch(url, options)
        .then(res => res.json())
        .then((res) => doneFunction(res))
        .catch(errorFunction !== null && errorFunction !== undefined ? rej => errorFunction(rej) : rej => {
            console.error(rej);
        })
}

const fileUploadFetchFunction = () => {

}