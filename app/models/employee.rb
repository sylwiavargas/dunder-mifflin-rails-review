class Employee < ApplicationRecord
  belongs_to :dog

  validates :alias, uniqueness: true
  validates :first_name, presence: true
  validates :title, uniqueness: true

  def name
    first_name + " " + last_name
  end
end
