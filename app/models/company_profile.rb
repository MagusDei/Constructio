class CompanyProfile < ApplicationRecord
    validates(:name, presence: true, length: {minimum: 2, maximum: 150}, uniqueness: true)
    validates(:description, presence: true)
    has_secure_password
    validates(:password, presence: true, length: {minimum: 6})
end