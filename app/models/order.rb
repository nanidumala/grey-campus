class Order < ApplicationRecord
    has_many :order_items, dependent: :destroy


    enum pay_type: {
stripe: 0
}
    enum status: { pending: 0, failed: 1, paid: 2}

    validates :name,  :email, :address,   presence: true
    validates :pay_type, inclusion: pay_types.keys
    validates :email, :format => {:with => /@/, :message => "is invalid"}



    # def add_cart_items_to_order(cart)
    #     cart.line_items.each do |item|
    #         self.line_items << item
    #         item.cart_id = nil
    #     end
    # end
        
end
