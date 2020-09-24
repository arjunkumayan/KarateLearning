Feature: call to token generation feature

Background:
 * def myFeature = call read('UserAuthentication2.feature'){'email':'arjn@gmail.com','password': 'test123'}
 * def authToken = myFeature.accessToken
 
 
 Scenario: GET Call
 
 Given url ' '
 When method GET
 And header Authorization = authToken
 Then print 'Response---',response
 Then status 200
 
 
 
 