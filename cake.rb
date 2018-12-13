class Cake
    attr_accessor :image, :price, :description
    def initialize(image, price, description)
        @image = image
        @price = price
        @description = description
    end
end