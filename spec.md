# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
  - Ran command to set up basic Ruby app when beginning project.
- [x] Include at least one has_many relationship (x has_many y e.g. User has_many Recipes) 
  - Users and Franchises have many Ratings
- [x] Include at least one belongs_to relationship (x belongs_to y e.g. Post belongs_to User)
  - Ratings belong to one User and one Franchise
- [x] Include at least one has_many through relationship (x has_many y through z e.g. Recipe has_many Items through Ingredients)
  - Users and Franchises have many instances of each other through Ratings
- [x] The "through" part of the has_many through includes at least one user submittable attribute (attribute_name e.g. ingredients.quantity)
  - Each Rating instance has a `star` attribute, where the user selects a number from 1 to 5 and then posts the star rating to the website.
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
  - User, Franchise, and Rating class models all contain validations
- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
  - Users can sort franchises by name or rating using class level scope methods.
- [x] Include signup (how e.g. Devise)
  - Users can signup using Facebook or by creating a manual account. Bcrypt salts and authenticates passwords
- [x] Include login (how e.g. Devise)
  - Users can login through Facebook or their manual accounts.
- [x] Include logout (how e.g. Devise)
  - A logout link is provided in a nav bar if the user is logged in 
- [x] Include third party signup/login (how e.g. Devise/OmniAuth)
  - The omniauth gem is used so users can sign in via Facebook
- [x] Include nested resource show or index (URL e.g. users/2/recipes)
  - All nested resources related to ratings are nested in the franchise resource.
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients)
  - The form to edit/create ratings can only be found in a nested resource
- [x] Include form display of validation errors (form URL e.g. /recipes/new)
  - Errors are displayed when they exist in the main app layout

Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate
