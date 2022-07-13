const express = require('express');
const app = express();

const mongoose = require('mongoose');
const Drawing = require('./models/Drawing');
const User = require('./models/User')

mongoose.connect("mongodb+srv://deveshbag:tEq4G2otw7tRTH47@cluster0.ertgnat.mongodb.net/sketchpastedb").then(function()
{
    //Use JSON request body
    app.use(express.json());

    // Home Route (/)
    app.get("/", function(req, res) {
        res.send("This is the homepage");
    });

    //Auth Route (/auth)
    app.post("/auth", async function(req, res) {
        const matchedUser = await User.find({email: req.body.email});
        var response;

        // Register
        if (user_name in req.body) {
            if (matchedUser) {
                console.log("User already exists!");
                response = { "user_id": matchedUser._id };
            }
            else  {
                console.log("Adding new user to database...");
                const newUser = new User({
                    user_name: req.body.user_name,
                    email: req.body.email,
                    password: req.body.password,
                })
                await newUser.save();
                response = { "user_id" : newUser._id };
            }
        }
        //Log In
        else {
            if (matchedUser) {
                console.log("User exists in database");
                response = { "user_id": matchedUser._id };
            } 
            else {
                console.log("User doesn't exist!");
                response = { "user_id" : null };
            }
        }

        res.json(response);
    })

    app.get("/drawings/list", async function(req, res) {
        const drawings = await Drawing.find();
        res.json(drawings);
    });
    
    //Drawing Route (/drawings)
    app.post("/drawings", async function(req, res) {
        
        switch (req.body.action) {
            case "create_drawing":
                const newDrawing = new Drawing({
                    user_id: req.body.user_id,
                    drawing_name: req.body.drawing_name,
                    strokes: [0, 0, 0, 1] 
                });
                await newDrawing.save();
                const response = { message: "New Note Created!" }
                res.json(response);
                break;
            default:
                console.log("Invalid action")
        }
    })
})

app.listen(5000, function() {
    console.log("Server started at PORT 5000")
});