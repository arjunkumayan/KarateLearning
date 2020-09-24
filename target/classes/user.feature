Feature: check user return by the API

  Background:
      * url 'https://gorest.co.in/'
      * header Authorization = 'Bearer g0JIGvfO6SIYnwmMYDM-Kp3nCYVw-xInSDif'
      
   Scenario: list all the user having name with john
   
      Given path '/public-api/users'
      And   param first_name= 'Ambrose'
      When method get
      Then  status 200