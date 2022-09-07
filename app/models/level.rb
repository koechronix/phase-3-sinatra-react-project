class Level < ActiveRecord::Base
    has_many :tasks

    def self.create_new(id, level)
        self.create(id: id, level: level)
    end

    def delete(id)
        self.find(id).destroy
    end
end