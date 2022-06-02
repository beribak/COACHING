class Category < ApplicationRecord
  CATEGORIES = Category.all.map{ |category| category.name }
end
