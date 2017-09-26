class Record < ApplicationRecord
  belongs_to :user
  serialize :record, JSON
end
