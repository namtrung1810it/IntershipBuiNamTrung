class Post < ApplicationRecord
  belongs_to :user
  after_destroy :log_destroy_action
  def log_destroy_action
  	puts "Da xoa tat ca post"
  end
end
