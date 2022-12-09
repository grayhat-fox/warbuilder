const Items = require('warframe-items');


module.exports = (category) => {
    return new Items({category: [category]});
}