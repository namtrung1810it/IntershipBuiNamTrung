class User < ApplicationRecord
	# after_initialize do |user|
	# 	puts "Ban vua tao mot user"
	# end
	# after_find do |user|
	# 	puts "Ban vua tim thay mot user"
	# end
	# after_touch do |user|
	# 	puts "Ban vua moi ga tui"
	# end
	has_many :posts, dependent: :destroy	
end
