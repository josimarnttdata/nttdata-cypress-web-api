export const obtenerToken = (datatable) => {
  datatable.hashes().forEach((row) => {
    cy.request({
      method: "POST",
      url: `${Cypress.env("api")[row.enviroment]}/auth`,
      headers: {
        "Content-Type": "application/json",
      },
      body: {
        username: row.username,
        password: row.password,
      },
    }).as("endpoint");
  });
};
