class Menu < ApplicationRecord
  has_one_attached :image

  enum genre: { special: 1, food: 2, dessert: 3, drink: 4}

  def with_tax_price
    (price*1.1).floor
  end

end
