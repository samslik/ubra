require 'savon'

# create a client for the service
WEBAPI_KEY = "****"
SERVICE_LOCAL_VERSION = 1464169155
client = Savon.client(wsdl: 'https://webapi.allegro.pl/service.php?wsdl')

puts client.operations

puts client.call(:do_query_sys_status, message: {sysvar: 3, countryId:1, webapiKey: WEBAPI_KEY})

puts client.call(:do_login, message: {
    userLogin: "*********",
    userPassword: "******",
    countryCode: 1,
    webapiKey: WEBAPI_KEY,
    localVersion: 1464169155
})