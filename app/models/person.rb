class Person < ActiveRecord::Base
  attr_accessible :first_name, :surname, :other_names, :dob, :date_of_employment,:date_of_resignation, :salary_id, :email, :telephone, :title_id, :gender_id, :image
  
  
  belongs_to :salary
  belongs_to :title
  belongs_to :gender
  has_many :comments, :dependent => :destroy
  validates :date_of_employment, :presence => true
  validate :date_of_employment_date_of_resignation
  mount_uploader :image, ImageUploader

  def date_of_employment_date_of_resignation
    errors.add(:date_of_employment, "must be before Date of Resignation") unless
       (self.date_of_employment).to_s > (self.date_of_resignation).to_s
  end 
end


