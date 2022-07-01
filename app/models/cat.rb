class Cat < ApplicationRecord
    require "action_view.rb"
    include ActionView::Helpers::DateHelper

    validates :color, inclusion: { in: %w(black white orange brown), message: "%{value} is not a color" }
    validates :color, presence: true
    validates :name, presence: true
    validates :description, presence: true
    validates :birthdate, presence: true
    validates :sex, presence: true
    validates :sex, inclusion: { in: %w(M F), message: "%{value} no good" }

    def age
        d = time_ago_in_words(birthdate)
    end
    @colors = ["black", "white", "orange", "brown"]

end
