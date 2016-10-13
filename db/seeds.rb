data = ["anger", "anticipation", "disgust", "fear", "joy", "sadness", "surprise", "trust", "aggressiveness", "optimism", "contempt", "alarm", "love", "remorse", "disappointment", "submission", "pride", "hope", "cynicism", "despair", "guilt", "envy", "unbelief", "curiosity", "dominance", "anxiety", "morbidness", "shame", "outrage", "sentimentality", "delight", "pessimism", "rest"]
thoughts = []

100.times do |i|
	thoughts << {
		thought: "Simplicity is the ultimate sophistication. #{i}",
		category_id: i,
		author: "Leo #{i}"
	}	
end

Category.create(data)
Thought.create(thoughts)
