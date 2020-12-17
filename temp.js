const MongoClient = require('mongodb').MongoClient;

const url = 'mongodb://localhost:27017';
const dbName = 'myproject';

MongoClient.connect(url, function(err, client) {

    if(!err){
        console.log("Connected successfully to server");
        const db = client.db(dbName);
        
        let collection = db.collection("articles");

        let student = {
            name: "hhh",
            age: 10
        }

        collection.insertOne(student,(err,result)=>{
            console.log(result.result);
        });

        collection.insertOne({name:Math.random(),age:Math.random()},(err,result)=>{
            console.log(result.result);
        });

        collection.updateMany({name:"hhh"},{$set:{age:10}},(err,result)=>{
            console.log(result.result);
        });

        collection.find({}).toArray((err, docs)=>{
            docs.forEach(item=>{
                console.log(item.name);
            })
        });

        collection.find({name:"hhh"}).toArray((err,docs)=>{
            console.log(docs.length);
        });

        collection.deleteMany({name:1},(err,result)=>{
            console.log(result.result);
        });

        collection.deleteMany({name:{$ne:"hhh"}},(err,result)=>{
            console.log(result.result);
        });

        client.close();
    }
    else{
        console.log("Connected defeat to server");
    }
});
