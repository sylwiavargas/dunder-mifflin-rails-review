class Dog < ApplicationRecord
  has_many :employees, :dependent => :delete_all

  def employee_count
    self.employees.size
  end

end
