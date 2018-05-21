class Article < ApplicationRecord
	has_many :comments, dependent: :destroy
	#if you delete an article, its associated comments will also need to be deleted,
	#otherwise they would simply occupy space in the database. Rails allows you 
	#to use the dependent option of an association to achieve this. 
	# validates :title, presence: true,
 #                    length: { minimum: 5 }	#presence: true rang buoc ko duoc de null
					#neu null xuat ra cau thong bao 
					#toi thieu 5 ky tu cho title
	# validates :title, acceptance: { message: 'Chua chon gioi tinh' }
	# validates :title, exclusion: { in: %w(www us ca jp Tuan),message: "%{value} is reserved." }
	# validates :title, format: { with: /\A[a-zA-Z]+\z/,message: "only allows letters" }
	# validates :title, inclusion: { in: %w(small medium large),message: "%{value} is not a valid size" }
	# validates :title, length: { maximum: 2,concac: "%{count} characters is the maximum allowed" }
	# validates :name, :login, :email, absence: true
	# validates :title, :text,  presence: true
	# validates :title, uniqueness: { case_sensitive: false }
	validates :title, numericality: true, on: :update
end
