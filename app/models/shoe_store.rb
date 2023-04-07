class ShoeStore < ActiveRecord::Base
    has_many :shoes

    def self.by_name(name)
        self.all.find_by(name: name)
    end

    def self.id_by_name(name)
        store = self.by_name(name)
        store.id
    end
end