class MenuName < ApplicationRecord
    validates :name, presence: true, uniqueness: true
end
