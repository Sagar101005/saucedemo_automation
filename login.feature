Feature:  Login functionality

  Scenario Outline:  Validate Login functionality with valid credentails
    Given I have application url and i am on login page
    When I enter username "<username>"
    And I Enter password "<password>"
    And I click on login button
    Then Inventory page is displayed

    Examples:
      |username |password	|
      |standard_user	|secret_sauce	|					
			|problem_user	|secret_sauce	|
			|performance_glitch_user	|secret_sauce	|
			
			
	Scenario Outline:  Validate Login functionality with invalid credentails
    Given I have application url and i am on login page
    When I enter username "<username>"
    And I Enter password "<password>"
    And I click on login button
    Then Error Message "<ErrorMessage>" is displayed in login page

    Examples:
      |testname	|username |password	| ErrorMessage	|
      |valid_username_invalid_password|standard_user	|secret_sauce1	|	Username and password do not match any user in this service |				
			|blank_username|	|secret_sauce	| Username is required |
			|blank_password|performance_glitch_user	|	|Password is required|
			|blank_username_and_password|	|	| Username is required |