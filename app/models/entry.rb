class Entry < ApplicationRecord
  validates :subject, presence: true
  validates :description, presence: true
  validates :priority, presence: true, inclusion: { in: 1..3 }
end