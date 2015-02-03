class Menu

	def initialize
		@food = {mains: {fish: 10, meat: 12, veg: 8}, dessert: {chocolate: 7, fondue: 12, sorbetto: 5}}
		@drinks = {alcoholic: {wine: 4, beer: 3, spirits: 5}, non_alcoholic: {juice: 2, smoothie: 3, water: "free!"}}
	end

	def print
		header
		