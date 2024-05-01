class ReportedItem < ApplicationRecord
    validates :name, presence: true
end
