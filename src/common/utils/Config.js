require('dotenv').config({ path: '/app/.env'})

module.exports = {
  TOKENID: process.env.TOKENID || false,
  CLIENTID: process.env.CLIENTID || false,
}
