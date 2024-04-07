class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  enum :department,   { IT: 0, HR: 1, Sales:2}

  has_many :leaves


    def self.ransackable_attributes(auth_object = nil)
    ["created_at", "email", "encrypted_password", "first_name", "id", "id_value", "last_name", "remember_created_at", "reset_password_sent_at", "reset_password_token", "updated_at", "department"]
  end
end
