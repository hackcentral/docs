# Welcome to the HackCentral API!

The goal of this API is to be RESTful and as simple as needed.

**Beta:**

Please note that the API still has a red beta flag on it. We try to have no breaking changes, but please don't expect this API to be completely frozen yet.

The API is reachable at http://api.hackcentral.co/v1/`ENDPOINT`. Currently the API is only accessible with a provided access_token.

**Get started: Getting an OAuth2 token**

Get a token on behalf of a user:

Follow the steps in OAuth User Authentication oauth#authorize to receive an access_grant
Use the access_grant in oauth#token
Add the Authentication http header with the token to all requests
Test this and troubleshoot according to the examples in oauth#test
Get a token without user context. (eg before a user logs in)

Follow the steps explained in OAuth Client Only Authentication oauth#token

Happy hacking!

