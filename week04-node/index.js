const express = require("express");
const app = express();
const PORT = 3000;

app.get("/", (req, res) => {
    res.send("Hello from Node.js server!");
});

app.get("/hello", (req,res) => {
	res.send("Hello route working!");
});

app.get("/json",(req,res)=> {
	res.json({status:"ok", user:'xihxxn'});
});

app.get("/greet",(req,res)=> {
	const name = req.query.name || "Guest";
	res.send(`Hello, ${name}!`);
});

app.listen(PORT, () => {
    console.log(`Server running on http://localhost:${PORT}`);
});
