class Task < ActiveRecord::Base
    belongs_to :level

    def self.all_items
        self.all.order(item: :asc).pluck(:item)
    end

    def self.all_importance
        self.all.order(importance: :asc)
    end

    def self.filter_importance(importance)
        self.all.filter{ |task | task[:importance] === importance }
    end
end