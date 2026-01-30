import express from "express";

const app = express();
const PORT = 8000;

app.use(express.json());

app.get("/", (req, res) => {
  res.json({
    message: "🚀 Express app running in Docker! CI/CD added",
    status: "success",
  });
});

app.get("/health", (req, res) => {
  res.status(200).send("OK");
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
