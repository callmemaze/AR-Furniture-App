import express from "express";

const app = express();

app.get("/", (req, res) => {
  res.send("Welcome to saja app api");
});

const PORT = process.env.PORT || 8000;

app.listen(PORT, () => console.log(`Server running on port ${PORT}`));
