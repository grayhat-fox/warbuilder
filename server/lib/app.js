const express = require('express');
const routes = require('./routes');


module.exports = class Server {
    constructor() {
        const app = express();

        app.use('/', routes);
        app.listen(25585)
    }
}
