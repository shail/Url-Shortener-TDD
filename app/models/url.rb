class Url < ActiveRecord::Base
	belongs_to :user
	validates :url, presence: true
	validates :user_id, presence: true
	attr_accessible :url, :user_id
end
