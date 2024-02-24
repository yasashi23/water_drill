
const json2csv = require('json2csv').parse;

const test = {
    "Filters":"20",
    "Driller":"John",
    "Assistans":"dani",
    "Charged":"$20",
    "Diesel liters":"30",
    "Engine Oil":"90",
    "Grease Kg":"90",
    "Earnings":"$200",
    "Total Cost":"$150",
    "Profit":"$350"
};

exports.downloadCsvGet = async (req, res) => {
    const nameFile = `${test.Driller}`
    jsonToCsv(res,test,nameFile)

};


exports.downloadCsv = async(req,res) =>{
    const {body,query} = req
    console.log({body})
    const nameFile = `${body.Driller}`
    jsonToCsv(res,body,nameFile)

}

function jsonToCsv(res,data,nameFile){
    try {
        const csv = json2csv(data);

        // Mengatur header dan mengirimkan CSV sebagai respons
        res.setHeader('Content-Type', 'text/csv');
        res.setHeader('Content-Disposition', `attachment; filename=data-${nameFile}.csv`);
        res.send(csv);
    } catch (err) {
        console.error(err);
        res.status(500).send('Internal Server Error');
    }
}