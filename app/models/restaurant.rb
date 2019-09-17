class Restaurant < ApplicationRecord
  validates :name, presence: true

  # def initialize(attributes = {})
  # end

  # def save
  # end

  # def self.all
  # end

  # def self.find
  #   DB.execute("SELECT * FROM restaurants WHERE id = ?", #{id})
  # end

end
