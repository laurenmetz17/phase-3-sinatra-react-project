class Shoe < ActiveRecord::Base
    belongs_to :shoe_store

    def self.by_price
        self.all.order(price: :desc)
    end

    def self.by_style(style)
        self.all.find_by(style: style)
    end

    def self.by_store(store)
        self.all.find_by(store_id: store)
    end

    def self.by_color(color)
        self.all.find_by(color: color)
    end

end
