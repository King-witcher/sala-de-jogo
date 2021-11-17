class Coach < ApplicationRecord
  has_many :pending_lectures, dependent: :destroy
end
