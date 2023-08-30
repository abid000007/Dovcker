const express = require('express');
const app = express();
const port = 3000;

// Middleware to log the IP address
app.use((req, res, next) => {
    const clientIp = req.ip;
    console.log(`Visitor IP: ${clientIp}`);
    next();
});

app.get('/', (req, res) => {
    res.send('Hello, YOU ARE HACKED.');
});

app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});
