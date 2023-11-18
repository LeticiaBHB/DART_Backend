console.log("teste")

const { apolloServe, gql, ApolloServer} = require ('apollo-server')
const typeDefs = gql`
`

const resolvers = {

}

const server = new ApolloServer ({
    typeDefs,
    resolvers
})

server.listen().then(({url}) => {
    console.log(`Executando em ${url}`)
})