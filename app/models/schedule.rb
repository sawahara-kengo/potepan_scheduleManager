class Schedule < ApplicationRecord
    validates :title_column, presence: true
end