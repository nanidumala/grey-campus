class Order < ApplicationRecord
    has_many :order_items, dependent: :destroy


    enum pay_type: {
stripe: 0
}
    enum status: { pending: 0, failed: 1, paid: 2}

    validates :name,  :email,  presence: true
    validates :address, presence: true, length: {minimum: 10}
    validates :pay_type, inclusion: pay_types.keys
    validates :email, :format => {:with => /@/, :message => "is invalid"}


        
end
