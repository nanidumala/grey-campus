class Cart < ApplicationRecord
    has_many :line_items, dependent: :destroy
    has_many :products, through: :line_items

    def cart_total
        self.line_items.inject(0) {|sum,line_item| sum+=line_item.total_price}
    end

    def total_quantity()
        self.line_items.sum {|line_item| line_item[:quantity]}
    end
end
