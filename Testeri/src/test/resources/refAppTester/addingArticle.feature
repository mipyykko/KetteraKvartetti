Feature: As a user i want to add a book easily so that the reference is saved

Scenario: user can add a new article reference with minimum metadata
    Given add new "article" is selected
    And correct title "Test Article" is given
    And correct author "Tero Test" is given
    And correct year "1234" is given
    And correct volume "2" is given
    And correct journal "Journal" is given
    And article reference form is submitted
    Then page has content "Listataan kaikki viitteet"

Scenario: user can add a new article reference with maximum metadata
    Given add new "article" is selected     
    And correct title "Test Article" is given
    And correct author "Tero Test" is given
    And correct year "1234" is given    
    And correct month "02" is given
    And correct publisher "Pub" is given
    And correct edition "edition" is given
    And correct volume "1" is given
    And correct note "notes" is given
    And correct journal "Journal" is given
    And correct number "2" is given
    And correct pages start "12" and end "123" are given
    And article reference form is submitted
    Then page has content "Listataan kaikki viitteet"

Scenario: user fails to give article title
    Given add new "article" is selected
    When correct author "Tero Test" is given
    And correct year "1234" is given
    And correct volume "2" is given
    And correct journal "Journal" is given
    And article reference form is submitted
    Then page has content "Lisää uusi viite"

Scenario: user fails to give article author
    Given add new "article" is selected
    When correct title "Test Article" is given
    And correct year "1234" is given
    And correct volume "2" is given
    And correct journal "Journal" is given
    And article reference form is submitted
    Then page has content "Lisää uusi viite"

Scenario: user fails to give article year
    Given add new "article" is selected
    When correct title "Test Article" is given
    And correct author "Tero Test" is given
    And correct volume "2" is given
    And correct journal "Journal" is given
    And article reference form is submitted
    Then page has content "Lisää uusi viite"

Scenario: user fails to give article volume
    Given add new "article" is selected
    When correct title "Test Article" is given
    And correct author "Tero Test" is given
    And correct year "1234" is given
    And correct journal "Journal" is given
    And article reference form is submitted
    Then page has content "Lisää uusi viite"

Scenario: user fails to give article journal
    Given add new "article" is selected
    When correct title "Test Article" is given
    And correct author "Tero Test" is given
    And correct year "1234" is given
    And correct volume "2" is given
    And article reference form is submitted
    Then page has content "Lisää uusi viite"