data = []
thoughts = []


100.times do |i|
	puts "emotion #{i}"
	
	data << {
		title: "emotion #{i}"
	}

	thoughts << {
		thought: "Simplicity is the ultimate sophistication. #{i}",
		category_id: i,
		author: "Leo #{i}"
	}	
end

Category.create(data)
Thought.create(thoughts)
