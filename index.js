const express = require("express");
const expressGraphQL = require("express-graphql").graphqlHTTP;
const schema = require("./schema");
const app = express();

app.get("/", (_, response) => {
  response.send("go to http://localhost:4000/graphql to see the qraphql ui");
});

app.use(
  "/graphql",
  expressGraphQL({
    schema,
    graphiql: true,
  })
);

app.listen(4000, () => {
  console.log("Listening: http://localhost:4000");
});
