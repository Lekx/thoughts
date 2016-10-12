class Category < ActiveRecord::Base
	validates :title, presence: true

	def to_param
		"#{ self.id }-#{ self.title.parameterize }"
	end
end
