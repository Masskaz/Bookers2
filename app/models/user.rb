class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         attachment :image
         has_many :posts

        validates :name,  presence: true,
        				  length: { minimum: 2,maximum: 20}


        validates :itroduction, length: { maximum: 50}

end
