class Order < ApplicationRecord
    has_many :order_items, dependent: :destroy


    enum pay_type: {
"stripe" => 0
}
    enum status: { pending: 0, failed: 1, paid: 2}

    validates :name,  :email, :pay_type,  presence: true
    validates :address, presence: true, length: {minimum: 10}
    validates :email, :format => {:with => /@/, :message => "is invalid"}


        
end
