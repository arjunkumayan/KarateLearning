Feature: to get the req res check

Scenario: to get the user id with value

* def expectedOutput = read('result.json')

Given url 'https://reqres.in/api/users/2'
And method GET
Then status 200
Then print response
And match response == {"data":{"id":2,"email":"janet.weaver@reqres.in","first_name":"Janet","last_name":"Weaver","avatar":"https:\/\/s3.amazonaws.com\/uifaces\/faces\/twitter\/josephstein\/128.jpg"},"ad":{"company":"StatusCode Weekly","url":"http:\/\/statuscode.org\/","text":"A weekly newsletter focusing on software development, infrastructure, the server, performance, and the stack end of things."}}

* def myVar1 = 'Janet'
And match response == expectedOutput
And match response.data.id == 2
And match response.data.last_name != null
And match response.data.first_name == myVar1

* def job_code = response.data.job_code
And match job_code == null

* def myVar = 'test'
Then print myVar


Scenario: request user 3 details
Given url 'https://reqres.in/api/users/3'
And method GET
Then status 200
Then print response

