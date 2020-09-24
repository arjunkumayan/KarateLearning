Feature: check returned users by the API

   Background:
      * url 'https://gorest.co.in'
      * header Content-Type = 'application/json'
      * header Authorization = 'Bearer g0JIGvfO6SIYnwmMYDM-Kp3nCYVw-xInSDif'
      
    Scenario: Create a new user
    Given path '/public-api/users'
    And request {"first_name": "Simaa","last_name": "Skileer","gender": "male","dob": "1973-09-29","email": "Skill@gmail.com","phone": "1-555-388-3330 09237","website": "https://www.abc.com","address": "Pune RTO rdd ","status": "active"}
    When method POST
    Then status 200