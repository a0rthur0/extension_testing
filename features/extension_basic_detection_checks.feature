Feature: Check Website detection in Avira Browser Safety extension

 Scenario: Open safe website with extension
   Given I am on a given safe page
   When I see that extension visible and click on it
   Then I see safe page with "Safe Website" and "No known threats"

  Scenario: Open phishing website with extension
    Given I am on unsafe page
    When I see warning page
    And I click Add exception and continue
    And I check extension existence for unsafe website
    Then I see unsafe page with "Unsafe Website" and "This website has been identified as a phishing site."