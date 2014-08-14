class Person

	def initialize(allergies)
		@allergies = allergies
		@stomach = []
	end

	def eat(food)
		is_allergic = false
		food.each do |ingredient|
			if @allergies.include?(ingredient)
				puts ("Stop or you gonna DIE!!!")
				is_allergic = true
			end
			if !is_allergic
				@stomach.push(food)
			end
		end
	end
end

pizza = ["cheese", "gluten", "tomatoes"]
pan_seared_scallops = ["scallops", "lemons", "pasta", "olive oil"]
water = ["h", "h", "o"]

john = Person.new("gluten")
john.eat(pizza)




