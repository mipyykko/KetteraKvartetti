Feature: As a user i want to add an inproceedins easily so that the reference is saved

Scenario: user can add a new inproceedings reference with minimum metadata
    Given add new "inproceedings" is selected
    And correct title "Test inpro" is given
    And correct author "Tero Test" is given
    And correct year "1234" is given
    And correct book_title "Book title" is given
    And inproceedings reference form is submitted
    Then page has content "Listataan kaikki viitteet"

Scenario: user can add a new inproceedings reference with maximum metadata
    Given add new "inproceedings" is selected
    And correct title "Test inpro" is given
    And correct author "Tero Test" is given
    And correct year "1234" is given
    And correct book_title "Book title" is given  
    And correct month "02" is given
    And correct publisher "Pub" is given
    And correct edition "edition" is given
    And correct volume "1" is given
    And correct series "series name" is given
    And correct address "Testaddress 2" is given
    And correct note "notes" is given
    And correct pages start "12" and end "123" are given
    And correct editor "Editor" is given
    And correct volume_number "2" is given
    And correct organisation "Org" is given
    And inproceedings reference form is submitted
    Then page has content "Listataan kaikki viitteet"   

Scenario: user fails to give inproceedings title
    Given add new "inproceedings" is selected
    When correct author "Tero Test" is given
    And correct year "1234" is given
    And correct book_title "Book title" is given
    And inproceedings reference form is submitted
    Then page has content "Lisää uusi viite"

Scenario: user fails to give inproceedings author
    Given add new "inproceedings" is selected
    When correct title "Test inpro" is given
    And correct year "1234" is given
    And correct book_title "Book title" is given
    And inproceedings reference form is submitted
    Then page has content "Lisää uusi viite"

Scenario: user fails to give inproceedings year
    Given add new "inproceedings" is selected
    When correct title "Test inpro" is given
    And correct author "Tero Test" is given
    And correct book_title "Book title" is given
    And inproceedings reference form is submitted
    Then page has content "Lisää uusi viite"

Scenario: user fails to give inproceedings book title
    Given add new "inproceedings" is selected
    When correct title "Test inpro" is given
    And correct author "Tero Test" is given
    And correct year "1234" is given
    And inproceedings reference form is submitted
    Then page has content "Lisää uusi viite"