class Thought < ActiveRecord::Base
	validates :author, presence: true
end
