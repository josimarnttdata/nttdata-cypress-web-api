const {
  Given,
  When,
  Then,
} = require("@badeball/cypress-cucumber-preprocessor");
const { validateResponse } = require("../pages/common-page");

Then("Verify the response status code {string}", (statusCode) => {
  validateResponse(statusCode);
});
