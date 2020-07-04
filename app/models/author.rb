class Author < ActiveRecord::Base
    # name is not blank
    # email is unique
    # phone_number is exactly 10 digits long

    validates :name, presence: true
    validates :email, uniqueness: true
    validates :phone_number, length: { is: 10 }
end
