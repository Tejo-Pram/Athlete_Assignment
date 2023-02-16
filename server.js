const express = require('express');
const app=express();
const port = 8081;

app.get('/athlete', function (req, res)
{
    res.send({"myFavouriteAthlete":"Virat Kohli"});
});

app.listen(port,function ()
{
    console.log("Running");
});