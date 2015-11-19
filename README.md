# Project-Two
The basic idea for the project is an online resource for spouses and families within the foreign service, military, or corporate expat community to contribute and access information about different places as an expat. The information should be formatted as "tips."  This site will be a way to easily share tricks and tips about tours in the foreign service, military, etc. from the point of view of the spouse/family.  It would allow for follow-up questions to posts people write, in order to help provide context to it all.

Models:

Users, tours, Categories

Basic Design:

There will be a home page that lists all of the tours and categories.  On each index page will be a list of all of the different tours, categories, and users.  The categories will be pre-set.

Show Pages:

On the user show page there will be the ability to post name, contact info, previous and current tours, family status (unmarried(MOH), married or civil union (EFM), kids, pets).

On the show page for a Posting will be headings of all the different categories with information under each one posted by users.

On the show page for each category will be information under different headings with each heading being a posting.  For example, clicking on category for housing there will be headers for each different posting and under that the information for that posting on the category of housing.

Relationships:

A user has zero, one or many tours.  A tour has zero, one or many users; many categories.  A category has many tours.

For this I used Ruby on Rails with gems Devise and Cancancan.  I started by setting up the most basic models and implementing the functionality for them first.  If running this locally, make sure to seed the locations data.

Some issues which I was not able to get to include validation for the url input boxes on the profile page.  If a user enters in something that is not a workable URL, a link will be created on the profile page but then if clicked on it will throw an error.  I also would have liked to have included the new report creator in the same page as the reports or locations, rather than routing to a different page.
