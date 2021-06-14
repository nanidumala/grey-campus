class LineItem < ApplicationRecord
    belongs_to :product
    belongs_to :cart

    
    def total_price
        self.quantity * self.product.price
    end


    def add__quantity()
        self.quantity +=1
        self.save
    end


    def reduce__quantity()
        if self.quantity > 1
            self.quantity -= 1
        else
            self.destroy
        end
    end

    def create_()
        self.quantity += 1
    end

end