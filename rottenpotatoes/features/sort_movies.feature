Feature: sort movies in a list by title or date
    
  As a movie buff
  While looking through a movie database
  I want to be able to sort the movies in their table
    
Background:
    
  Given the following movies exist:
  | title        | rating | director     | release_date |
  | Star Wars    | PG     | George Lucas |   1977-05-25 |
  | Blade Runner | PG     | Ridley Scott |   1982-06-25 |
  | Alien        | R      |              |   1979-05-25 |
  | THX-1138     | R      | George Lucas |   1971-03-11 |

Scenario: sort a list by its title
  Given I am on the home page
  When I follow "Movie Title"
  Then I should see "Alien" before "Blade Runner"
  And I should see "Star Wars" before "THX-1138"

Scenario: sort a list by its release date
  Given I am on the home page
  When I follow "Release Date"
  Then I should see "Blade Runner" before "Alien"
  And I should see "Star Wars" before "THX-1138"