
const json2csv = require('json2csv').parse;

exports.downloadCsvGet = async (req, res) => {
    const nameFile = `${test.Driller}`
    jsonToCsv(res,test,nameFile)

};


exports.downloadCsv = async(req,res) =>{
    const {body,query} = req
    const nameFile = `${body.Driller}`
    jsonToCsv(res,body,nameFile)

}

function jsonToCsv(res,data,nameFile){
    try {
        const csv = json2csv(data);
        res.setHeader('Content-Type', 'text/csv');
        res.setHeader('Content-Disposition', `attachment; filename=data-${nameFile}.csv`);
        res.send(csv);
    } catch (err) {
        console.error(err);
        res.status(500).send('Internal Server Error');
    }
}