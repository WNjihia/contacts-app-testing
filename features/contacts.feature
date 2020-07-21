Feature: Contacts

  Scenario: Create and Update Contact
    Given I tap on create contact
    Then I add contact details
    Then I save the contact
    And contact is "created"
    When I tap on edit contact
    And I update contact name
    Then contact is "updated"