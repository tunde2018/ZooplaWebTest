Feature: For Rent search
  As a customer
  I want the ability to search for any house of my choice
  So that I can choose one to rent

  Scenario Outline: Customer can Search for a Property to rent
    Given I navigate to zoopla homepage
    When I enter "<Location>" into tne search field
    And I select "<MinPrice>" from Min price for rent
    And I select "<MaxPrice>" from Max price for rent
    And I select "<PropertyType>" from Property type
    And I select "<NoOfBeds>" from Bedrooms
    And I click on Search button
    Then the search for "<Location>" is displayed
    And I click on one of the search result

    Examples:
      |Location|MinPrice|MaxPrice|PropertyType|NoOfBeds|
      |London  |  No min| No Max | Show all   |No min       |