Feature: to get the req res check

Scenario: to get the user id with value

Given url 'https://reqres.in/api/users/2'
And method GET
Then status 200
Then print response
And match response == {"data":{"id":2,"email":"janet.weaver@reqres.in","first_name":"Janet","last_name":"Weaver","avatar":"https:\/\/s3.amazonaws.com\/uifaces\/faces\/twitter\/josephstein\/128.jpg"},"ad":{"company":"StatusCode Weekly","url":"http:\/\/statuscode.org\/","text":"A weekly newsletter focusing on software development, infrastructure, the server, performance, and the stack end of things."}}