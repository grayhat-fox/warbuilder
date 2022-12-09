module.exports = (res, data) => {
    try {
        res.set('Content-Type', 'application/json');
        res.type('json');
        const body = {
            success: true,  
            code: 200,  
            data: data 
        };
    res.status(200).send(body);
    } catch (e) {
        res.set('Content-Type', 'application/json');
        res.type('json');
        const body = {
            success: false,  
            code: 400,
            data: {
                'error': e
            } 
        };
    }
}