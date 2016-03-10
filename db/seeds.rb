FactoryGirl.create(:user, email: 'adminadmin@socialrecipes.com', password: 'adminadmin', admin: true,  first_name: 'Admin', last_name: 'King', city: 'Adminland', facebook: 'facebook.com/admin', twitter: '@admin', cuisines: 'None, of, your, business')
FactoryGirl.create(:user, email: 'johndoe@socialrecipes.com',    password: 'useruser',   admin: false, first_name: 'John', last_name: 'Doe', city: 'Doeland', facebook: 'facebook.com/doe', twitter: '@doe', cuisines: 'Brazilian, Italian, Portuguese')
FactoryGirl.create(:user, email: 'marydoe@socialrecipes.com',    password: 'useruser',   admin: false, first_name: 'Mary', last_name: 'Doe', city: 'Doeland', facebook: 'facebook.com/mdoe', twitter: '@mdoe', cuisines: 'Chinese, Japanese, Thai')
FactoryGirl.create(:user, email: 'rolimba@socialrecipes.com',    password: 'useruser',   admin: false, first_name: 'Rolimba', last_name: 'Imba', city: 'Rolandia', facebook: 'facebook.com/onaroll', twitter: '@onaroll', cuisines: 'Indian, German')
FactoryGirl.create(:user, email: 'crookedman@socialrecipes.com', password: 'useruser',   admin: false, first_name: 'Crooked', last_name: 'Man', city: 'Fairyland', facebook: 'facebook.com/crookedman', twitter: '@crookedman', cuisines: 'Fictional, American, French')
FactoryGirl.create(:user, email: 'palmirinha@socialrecipes.com', password: 'useruser',   admin: false, first_name: 'Palmi', last_name: 'Rinha', city: 'Gazeta', facebook: 'facebook.com/palmirinha', twitter: '@palmirinha', cuisines: 'De vó, Brazilian')

Cuisine.create(name: 'Brazilian')
Cuisine.create(name: 'American')
Cuisine.create(name: 'Canadian')
Cuisine.create(name: 'French')
Cuisine.create(name: 'German')
Cuisine.create(name: 'Italian')
Cuisine.create(name: 'Portuguese')
Cuisine.create(name: 'Japanese')
Cuisine.create(name: 'Chinese')
Cuisine.create(name: 'Thai')
Cuisine.create(name: 'Indian')
Cuisine.create(name: 'African')
Cuisine.create(name: 'Vegan')
Cuisine.create(name: 'Alternative')

Course.create(name: 'Main Course')
Course.create(name: 'Relevés')
Course.create(name: 'Dessert')
Course.create(name: 'Breakfast')
Course.create(name: 'Brunch')
Course.create(name: 'Supper')
Course.create(name: 'Snacks')
Course.create(name: 'Appetizer')
Course.create(name: 'Drinks')
Course.create(name: 'Soft-Drinks')

Preference.create(name: 'Pork')
Preference.create(name: 'Beef')
Preference.create(name: 'Chicken')
Preference.create(name: 'Fishes')
Preference.create(name: 'Greenery')
Preference.create(name: 'Legumen')
Preference.create(name: 'Grains')
Preference.create(name: 'Fruits')
Preference.create(name: 'Chocolate')
Preference.create(name: 'Sweets')
Preference.create(name: 'Drinks')

Difficulty.create(name: 'Beginner')
Difficulty.create(name: 'Easy')
Difficulty.create(name: 'Medium')
Difficulty.create(name: 'Hard')
Difficulty.create(name: 'Insane')
Difficulty.create(name: 'Ultra-violence')
Difficulty.create(name: 'Nightmare')

Recipe.create(name: 'Pork Ribs',                          portion: 10, cooking_time: 260, ingredient: 'Pork ribs, sauce, onions',          directions: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', cuisine_id: 1, course_id: 1, preference_id: 3, difficulty_id: 1, user_id: 1, image: File.new("#{Rails.root}/public/foods.jpg") )
Recipe.create(name: 'Pork Marsala',                       portion: 20, cooking_time: 395, ingredient: 'Lorem,ipsum,dolor,sit,amet',        directions: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', cuisine_id: 2, course_id: 2, preference_id: 4, difficulty_id: 2, user_id: 2, image: File.new("#{Rails.root}/public/foods.jpg") )
Recipe.create(name: 'Cilantro Garlic Lime Sauteed',       portion: 12, cooking_time: 125, ingredient: 'consectetur,adipisicing,elit,sed',  directions: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', cuisine_id: 3, course_id: 3, preference_id: 5, difficulty_id: 3, user_id: 3, image: File.new("#{Rails.root}/public/foods.jpg") )
Recipe.create(name: 'Spaghetti Squash Primavera',         portion: 11, cooking_time: 263, ingredient: 'do,eiusmod,tempor,incididunt,ut',   directions: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', cuisine_id: 4, course_id: 4, preference_id: 6, difficulty_id: 4, user_id: 4, image: File.new("#{Rails.root}/public/foods.jpg") )
Recipe.create(name: 'Rhubarb Cheesecake',                 portion: 21, cooking_time: 245, ingredient: 'labore,et,dolore,magna',            directions: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', cuisine_id: 5, course_id: 5, preference_id: 7, difficulty_id: 5, user_id: 5, image: File.new("#{Rails.root}/public/foods.jpg") )
Recipe.create(name: 'Homemade Pizza Dough',               portion: 16, cooking_time: 24,  ingredient: 'quis,nostrud,exercitation,ullamco', directions: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', cuisine_id: 6, course_id: 6, preference_id: 7, difficulty_id: 6, user_id: 6, image: File.new("#{Rails.root}/public/foods.jpg") )
Recipe.create(name: 'Buffalo Chicken baked potatoes',     portion: 13, cooking_time: 123, ingredient: 'Ut,enim,ad,minim,veniam',           directions: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', cuisine_id: 7, course_id: 6, preference_id: 6, difficulty_id: 7, user_id: 6, image: File.new("#{Rails.root}/public/foods.jpg") )
Recipe.create(name: 'Banana Coffee cake',                 portion: 5,  cooking_time: 36,  ingredient: 'laboris,nisi,ut,aliquip',           directions: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', cuisine_id: 7, course_id: 5, preference_id: 5, difficulty_id: 7, user_id: 5, image: File.new("#{Rails.root}/public/foods.jpg") )
Recipe.create(name: 'Old Irish Scalloped Potatoes',       portion: 7,  cooking_time: 90,  ingredient: 'ex,ea,commodo,consequat',           directions: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', cuisine_id: 6, course_id: 4, preference_id: 4, difficulty_id: 6, user_id: 4, image: File.new("#{Rails.root}/public/foods.jpg") )
Recipe.create(name: 'Roasted Yam and Kale Salad',         portion: 8,  cooking_time: 42,  ingredient: 'Duis,aute,irure,dolor',             directions: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', cuisine_id: 5, course_id: 3, preference_id: 3, difficulty_id: 5, user_id: 3, image: File.new("#{Rails.root}/public/foods.jpg") )
Recipe.create(name: 'Orange Shallot Marsala Pork Chops',  portion: 2,  cooking_time: 118, ingredient: 'in,reprehenderit,in,voluptate',     directions: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', cuisine_id: 4, course_id: 2, preference_id: 3, difficulty_id: 4, user_id: 2, image: File.new("#{Rails.root}/public/foods.jpg") )
Recipe.create(name: 'Fluffy Pancackes',                   portion: 16, cooking_time: 23,  ingredient: 'velit,esse,cillum,dolore',          directions: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', cuisine_id: 3, course_id: 1, preference_id: 4, difficulty_id: 3, user_id: 1, image: File.new("#{Rails.root}/public/foods.jpg") )
Recipe.create(name: 'Ham and Potato Soup',                portion: 3,  cooking_time: 32,  ingredient: 'eu,fugiat,nulla,pariatur',          directions: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', cuisine_id: 2, course_id: 1, preference_id: 5, difficulty_id: 2, user_id: 1, image: File.new("#{Rails.root}/public/foods.jpg") )
Recipe.create(name: 'Banana Crumb Muffins',               portion: 9,  cooking_time: 2,   ingredient: 'Excepteur,sint,occaecat,cupidatat', directions: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', cuisine_id: 1, course_id: 2, preference_id: 6, difficulty_id: 1, user_id: 2, image: File.new("#{Rails.root}/public/foods.jpg") )
Recipe.create(name: 'Banana Bread',                       portion: 4,  cooking_time: 23,  ingredient: 'non,proident',                      directions: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', cuisine_id: 1, course_id: 3, preference_id: 7, difficulty_id: 1, user_id: 3, image: File.new("#{Rails.root}/public/foods.jpg") )
Recipe.create(name: 'Chocolate Chip Cookies',             portion: 34, cooking_time: 347, ingredient: 'sunt,in,culpa,qui,officia',         directions: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', cuisine_id: 2, course_id: 4, preference_id: 7, difficulty_id: 2, user_id: 4, image: File.new("#{Rails.root}/public/foods.jpg") )
Recipe.create(name: 'Blueberry Muffins',                  portion: 2,  cooking_time: 234, ingredient: 'deserunt,mollit,anim',              directions: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', cuisine_id: 3, course_id: 5, preference_id: 6, difficulty_id: 3, user_id: 5, image: File.new("#{Rails.root}/public/foods.jpg") )
Recipe.create(name: 'Chicken Pot Pie',                    portion: 1,  cooking_time: 267, ingredient: 'id,est,laborum',                    directions: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', cuisine_id: 4, course_id: 6, preference_id: 5, difficulty_id: 4, user_id: 6, image: File.new("#{Rails.root}/public/foods.jpg") )
Recipe.create(name: 'Broiled Tilapia Parmesan',           portion: 5,  cooking_time: 345, ingredient: 'velit,esse,cillum,dolore',          directions: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', cuisine_id: 5, course_id: 6, preference_id: 4, difficulty_id: 5, user_id: 6, image: File.new("#{Rails.root}/public/foods.jpg") )
Recipe.create(name: 'Apple Pie',                          portion: 8,  cooking_time: 123, ingredient: 'et,dolore,magna,aliqua',            directions: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', cuisine_id: 6, course_id: 5, preference_id: 3, difficulty_id: 6, user_id: 5, image: File.new("#{Rails.root}/public/foods.jpg") )
Recipe.create(name: 'Chocolate Brownies',                 portion: 3,  cooking_time: 321, ingredient: 'laboris,nisi,ut',                   directions: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', cuisine_id: 7, course_id: 4, preference_id: 4, difficulty_id: 7, user_id: 4, image: File.new("#{Rails.root}/public/foods.jpg") )
