// write sample lambda function to test the lambda-local module
exports.handler = async (event) => {
  const response = {
    statusCode: 200,
    body: JSON.stringify("Hello from Lambda!"),
    event: event,
  };
  return response;
};
