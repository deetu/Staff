class Salary < ActiveRecord::Base
  attr_accessible :department, :salary
  has_many :people
end
