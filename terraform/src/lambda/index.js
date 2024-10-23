import pino from "pino";
import { lambdaRequestTracker, pinoLambdaDestination } from "pino-lambda";

// custom destination formatter
const destination = pinoLambdaDestination();
const logger = pino(
  {
    // typical pino options
  },
  destination,
);
const withRequest = lambdaRequestTracker();

export async function handler(event, context) {
  withRequest(event, context);

  logger.info({ data: "Some data" }, "A log message");

  const response = {
    statusCode: 200,
    body: JSON.stringify("Hello from Lambda!"),
  };
  return response;
}
