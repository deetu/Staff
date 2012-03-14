require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  test "person attributes must not be empty" do
  person = Person.new
  assert person.invalid?
  assert person.errors[:first_name].any?
  assert person.errors[:surname].any?
  assert person.errors[:dob].any?
  assert person.errors[:date_of_employment].any?
  assert person.errors[:salary_id].any?
  assert person.errors[:telephone].any?
  assert person.errors[:title_id].any?
  assert person.errors[:gender_id].any?
  assert person.errors[:email].any?
  assert person.errors[:image].any?
  end
  
  def test_person_has_valid_fields
    	person = Person.new
    	assert !person.valid?
  end
  
  def test_peron_has_valid_email
    person = Person.new
    assert !email.valid?
  end
  
  def test_telephone_length
    telephone = "xxxxxxxxx"
    assert_equal(10, telephone.length)
  end
end
