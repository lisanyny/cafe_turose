class Item < ApplicationRecord
  has_one_attaches :image

  def with_tax_price
    (price*1.1).floor
  end

end
