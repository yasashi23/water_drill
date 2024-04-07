const fs = require('fs')
const path = require("path")
const glob = require('glob');

exports.editHost = async (req, res) => {
    try {
        const { host } = req.body;
        const filePattern = path.join(__dirname, '..', 'public/*/script/frontend/host.js');
        
        const files = glob.sync(filePattern);
        const varHost = `const host = "${host}"`
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
