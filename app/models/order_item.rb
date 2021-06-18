class OrderItem < ApplicationRecord
    belongs_to :order
    validates :product_name,  :product_id, :quantity, :product_price,  presence: true
    
end
