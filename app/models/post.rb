class Post < ApplicationRecord
	belongs_to :user

	validates :title, presence: true,
					 length: { maximum: 20}


	validates :opinion, presence: true,
	 					length: { maximum: 200}

end
