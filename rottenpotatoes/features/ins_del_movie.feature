Feature: create and destroy movies at will!
    
  As a movie buff
  While looking through a movie database
  I want to be able to add and remove movies at will
    
Background:
    
  Given the following movies exist:
  | title        | rating | director     | release_date |
  | Star Wars    | PG     | George Lucas |   1977-05-25 |
  | Blade Runner | PG     | Ridley Scott |   1982-06-25 |
  | Alien        | R      |              |   1979-05-25 |
  | THX-1138     | R      | George Lucas |   1971-03-11 |


Scenario: user wants to remove a movie (destroy)
  Given I am on the home page
  And I follow "More about Alien"
  And I press "Delete"
  Then I should not see "Alien"

Scenario: user wants to add a movie (create)
  Given I am on the home page
  And I follow "Add new movie"
  And I fill in "Title" with "Magic Mike"
  And I press "Save Changes"
  Then I should see "Magic Mike"