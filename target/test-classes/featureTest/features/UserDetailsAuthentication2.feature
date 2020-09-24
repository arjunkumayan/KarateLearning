Feature: Authentication token feature


  Background: 
   * url 'https://reqres.in'
  
  Scenario: Authentication test
  When path ' '
  And form field grant_type ='client_credential'
  And form field email = 'arjun@gmail.com'
  And form field password = 'pistol'
  When method POST
  Then status 200
  Then print 'response----',response
  
  
  * def accessToken = response.token
  Then print 'accessToken--',accessToken
  
  When path ' '
 # And header Authorization = 'Bearer' + accessToken 
  
  * def params = 
  """
  {
  'email': '#(email)',
  'password': '#(password)'
  }
  """
  
  And form field params