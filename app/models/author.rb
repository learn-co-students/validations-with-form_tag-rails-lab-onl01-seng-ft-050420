class Author < ActiveRecord::Base
    validates :name, presence: true 
    validates :name, :email, uniqueness: true 
    validates :phone_number, length: { is: 10 }
    validates :phone_number, format: { with: /\A\d+\z/}
end
