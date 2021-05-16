Feature: For Sale search
  As a customer
  I want the ability to search for any house of my choice
  So that I can buy the property

  Scenario Outline: Customer can Search for a Property
    Given I navigate to zoopla homepage
    When I enter "<Location>" into tne search field
    And I select "<MinPrice>" from Min price
    And I select "<MaxPrice>" from Max price
    And I select "<PropertyType>" from Property type
    And I select "<NoOfBeds>" from Bedrooms
    And I click on Search button
    Then the search for "<Location>" is displayed
    And I click on one of the search result

    Examples:
      |Location|MinPrice|MaxPrice|PropertyType|NoOfBeds|
      |London  |  No min| No Max | Show all   |No min       |
#      |London  |  £120,000| No Max | Show all   |No min       |
#      |London  |  No min| £400,000 | Show all   |No min       |
#      |London  |  £120,000|£400,000 | houses   |No min       |
#      |London  |  £120,00|£400,000 | Show all   |No min       |
#      |London  |  £120,000| £400,000 | Show all   |3+      |
#      |M24 2FZ  |  £120,00|£400,000 | Show all   |No min       |
#      |Piccadilly Station |  £120,000| £400,000 | Show all   |3+      |

  Scenario Outline: Error page is displayed for search
    Given I navigate to zoopla homepage
    When I enter "<Location>" into tne search field
    And I select "<MinPrice>" from Min price
    And I select "<MaxPrice>" from Max price
    And I select "<PropertyType>" from Property type
    And I select "<NoOfBeds>" from Bedrooms
    And I click on Search button
    Then an error page is displayed

    Examples:
      |Location|MinPrice|MaxPrice|PropertyType|NoOfBeds|
      |NNNNNN |  No min| No Max | Show all   |No min       |

#  Scenario: Search for Property in the City with max price
#    Given I navigate to zoopla homepage
#    When I enter "London" into tne search field
#    And I select "No min" from Min price
#    And I select "£400,000" from Max price
#    And I select "Show all" from Property type
#    And I select "No min" from Bedrooms
#    And I click on Search button
#    Then the search for "London" displayed
#
#  Scenario: Search for Property in the City with min and max price
#    Given I navigate to zoopla homepage
#    When I enter "London" into tne search field
#    And I select "£120,000" from Min price
#    And I select "£400,000" from Max price
#    And I select "Show all" from Property type
#    And I select "No min" from Bedrooms
#    And I click on Search button
#    Then the search for "London" displayed
#