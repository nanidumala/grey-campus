class Product < ApplicationRecord
    has_many :line_items, dependent: :destroy
    has_one_attached :image
    validates :name, presence: true
    validates :description, presence: true, length: {minimum: 10}
    validates :image, presence: true
    validates :price, presence: true, numericality: {greater_than: 0, message: "price should be greater than Zero"}
end