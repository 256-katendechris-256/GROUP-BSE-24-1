const express = require("express");
const cors = require("cors");
const { default: axios } = require("axios");

const app = express();
app.use(express.json());
app.use(cors({ origin: true }));

app.post("/authenticate", async (req, res) => {
  const { username } = req.body;

  try {
    const response = await axios.put(
      'https://api.chatengine.io/users/',
      {username: username, secret: username, first_name: username },
      { headers: { "Private-Key": "4dd14d0f-b767-4d5d-b220-f92ec584b879" } }
    );
    return res.send(response.data);
  } catch (e) {
    return res.status(404).json(e.response.data);
  }
  
 
});

app.listen(3000, ()=> {
  console.log('Server is running on http://localhost:3000')
});