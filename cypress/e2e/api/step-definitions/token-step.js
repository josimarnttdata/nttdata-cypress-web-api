const {
  Given,
  When,
  Then,
} = require("@badeball/cypress-cucumber-preprocessor");
const { obtenerToken } = require("../pages/token-page");

Given("User registered on the API", () => {});

When("I access the API request endpoint to create token", (datatable) => {
  obtenerToken(datatable);
});
