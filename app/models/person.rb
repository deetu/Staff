class Person < ActiveRecord::Base
  #attr_accessible :first_name, :surname, :other_names, :dob, :date_of_employment,:date_of_resignation, :salary_id, :email, :telephone, :title_id, :gender_id, :image
  belongs_to :salary
  belongs_to :title
  belongs_to :gender
  has_many :comments, :dependent => :destroy
  
  validates :first_name, :surname, :dob, :date_of_employment, :salary_id, :title_id, :gender_id,  :email, :image, :telephone, :presence => true
  
  validates :telephone, length: {minimum: 10}
  
  validates_format_of :email, :with => /^([^\s]+)((?:[-a-z0-9]\.)[a-z]{2,})$/i
  
  
  #validate :date_of_employment_date_of_resignation
  mount_uploader :image, ImageUploader
  
  validates :image, allow_blank: false, format: {
with: %r{\.(gif|jpg|png)$}i, message: 'must be a File with GIF, JPG or PNG image.'
}
end