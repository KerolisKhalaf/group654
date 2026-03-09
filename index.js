const express = require('express');
const app = express();

app.get('/', (req, res) => {
    res.send('edited from vi ,we are learning devops in group 654 with depi');
});

const PORT = process.env.PORT || 8080;
app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});
