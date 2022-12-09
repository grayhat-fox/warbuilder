const express = require('express');
const router = express.Router();

const json_response = require('./controllers/json_response');
const items = require('./datasource/items');


router.get('/ping', (req, res) => {
    res.send('pong');
});

const categoties = [
    'Arcanes', 
    'Archwing', 
    'Fish', 
    'Gear', 
    'Glyphs', 
    'Misc', 
    'Mods', 
    'Node', 
    'Pets', 
    'Quests', 
    'Relics',
    'Resources',
    'Sentinels',
    'Sigils',
    'Skins',
    'Warframes'
];

categoties.forEach((category, index, arr) => {
    router.get(
        '/' + category.toLowerCase(), 
        (req, res) => json_response(res, items(category))
    );
});

module.exports = router;