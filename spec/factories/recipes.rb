FactoryGirl.define do
  factory :recipe do
    name "Ribs on the barbie"
    cuisine
    course
    preference
    difficulty
    portion 2
    cooking_time 150
    ingredient "pork ribs, brown sugar, smoke salt, paprika, garlic powder,
                red pepper, barbecue sauce"
    directions "Preheat oven to 300 degrees f. Peel off tough membrane that
                covers the bony side of the ribs. Mix together the sugar and
                spices to make the rub. Apply rub to ribs on all sides. Lay
                ribs on two layers of foil, shiny side out and meaty side down.
                Lay two layers of foil on top of ribs and roll and crimp edges
                tightly, edges facing up to seal. Place on baking sheet and bake
                for 2-2 1/2 hours or until meat is starting to shrink away from
                the ends of the bone. Remove from oven. Heat broiler. Cut ribs
                into serving sized portions of 2 or 3 ribs. Arrange on broiler
                pan, bony side up. Brush on sauce. Broil for 1 or 2 minutes
                until sauce is cooked on and bubbly. Turn ribs over. Repeat on
                other side. Alternately, you can grill the ribs on your grill
                to cook on the sauce."
    #image { File.new("#{Rails.root}/spec/photos/bbq-ribs.jpg") }
  end
end
