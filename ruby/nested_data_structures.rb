international_foods = {
	italian_food: {
		country_info: {
			population_in_mil: 59,
			pizzas_eaten_per_day: 2000
 
		},
		pizza: [
			'pepperoni', 
			'cheese', 
			'supreme'
		],
		pasta: [
			'penne', 
			'linguini',
			'ravioli', 
			'gnocci'
		] ,
		antipasti: [
			'caprese', 
			'caeser salad'
		]

	},
	mexican_food: {
		country_info: {
			population_in_mil: 122,
			tacos_eaten_per_day: 5000
		},
		appetizers: [
			'tamales',
			'chips and salsa',
			'queso'
		],
		mains: [
			'tacos',
			'burritos',
			'enchiladas',
			'tostadas'
		]
	}
}


p international_foods[:italian_food][:pasta][1]
p international_foods[:mexican_food][:country_info][:population_in_mil]
p international_foods[:italian_food][:pizza].push('mushroom', 'broccoli')
p international_foods.keys
p international_foods[:mexican_food].keys
p international_foods[:mexican_food][:appetizers].reverse
p international_foods[:italian_food][:pasta][3].upcase
