const fs = require('fs');
if (fs.existsSync('config.env')) require('dotenv').config({
    path: './config.env'
});

function convertToBool(text, fault = 'true') {
    return text === fault ? true : false;
}

module.exports = {
    SESSION_ID: process.env.SESSION_ID || 'YASIYA-MD~RFwF1brR#Ty6bA4T93TazD5ioyed1OISd0Fb3n74SaGZXVo8qRKw'
};
