const fs = require('fs');
if (fs.existsSync('config.env')) require('dotenv').config({
    path: './config.env'
});

function convertToBool(text, fault = 'true') {
    return text === fault ? true : false;
}

module.exports = {
    SESSION_ID: process.env.SESSION_ID || 'YASIYA-MD~8Jo3gRzQ#m9_u3Ty8oxJ7UmPwIP--y3hFUpr2Owkp4sHrf7qASl8'
};
