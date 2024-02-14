const fs = require('fs')
const path = require("path")
const glob = require('glob');

exports.editHost = async (req, res) => {
    try {
        const { host } = req.body;
        const filePattern = path.join(__dirname, '..', 'public/*/script/frontend/host.js');
        
        // Mencari file host.js yang sesuai dengan pola
        const files = glob.sync(filePattern);
        const varHost = `const host = "${host}"`
        
        // Menggunakan fungsi fs.writeFile untuk menulis host baru ke setiap file
        files.forEach(file => {
            fs.writeFile(file, varHost, function (err) {
                if (err) {
                    throw err;
                }
                console.log('File', file, 'updated with new host:', host);
            });
        });
        
        res.json({ success: true, filesUpdated: files.length });
    } catch (error) {
        console.error('Error updating host:', error);
        res.status(500).json({ error: 'Failed to update host' });
    }
};
