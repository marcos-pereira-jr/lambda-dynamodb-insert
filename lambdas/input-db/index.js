const AWS = require('aws-sdk');
const dynamo = new AWS.DynamoDB.DocumentClient();
const ssm = new AWS.SSM();

exports.handler = async (event) => {
  try {
    const { Parameter: { Value: table } } = await ssm.getParameter({ Name: process.env.TABLE }).promise();

    const params = {
        TableName: table,
        Item:{ ...event }
    };
    await dynamo.put(params).promise();
    return { body: 'Successfully created item!' }
  } catch (err) {
    return { error: err }
  }
};