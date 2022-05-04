const express = require('express')
const axios = require('axios').default
const app = express()

const PORT = 8000

app.get('/', (req, res) => {
    res.status(200).send('Pong')
})

app.get('/async', async (req, res) => {
    axios.get('http://bbox:9090').then( response => {
        res.status(200).send(`Async response: ${response.data}`)
    }).catch(e => console.log(`Error: ${e}`))
})

app.get('/sync', async (req, res) => {
    axios.get('http://bbox:9091').then( response => {
        res.status(200).send(`Sync response: ${response.data}`)
    }).catch(e => console.log(`Error: ${e}`))
})

app.get('/heavy', (req, res) => {
    let start = new Date()
    while ((new Date()) - start < 5000) {}
    res.status(200).send('Heavy response OK')
})

app.listen(PORT, () => {
    console.log(`Server listening on port ${PORT}`)
})
