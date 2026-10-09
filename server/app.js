import express from 'express';
const app = express();


app.get('/', (req, res) => {
    res.send("Hello world!");
})
app.get('/lists/:id', (req,res) => { //id is user_id

    res.send("All of user x's lists");
})
app.get('/list/:id', (req,res) => { //id is check_id

    res.send("List y with all tasks in list y");
})
app.get('/shared/:id', (req,res) => { //id is user id

    res.send("All lists user x has been given access to");
})

app.post('/login', (req,res) => {


})

app.post('/signup', (req,res) => {

})

app.post('/list', (req,res) => {

})

app.post('/task', (req,res) => {
    
})

app.patch('/complete/:id/status', (req,res) => { //id is task id

})

app.patch('/list_name/:id/name', (req,res) => { //id is list id

})

app.delete('/dlist/:id', (req,res) => {

})

app.delete('dtask/:id', (req,res) => {

})

export default app;

