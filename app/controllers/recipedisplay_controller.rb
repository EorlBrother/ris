class RecipedisplayController < ApplicationController

	def index
		@recipe = Recipe.find(1)
		@difficulty = case @recipe.difficulty 	
		when 1 then "leicht"
		when 2 then "mittel"
		when 3 then "schwierig"
		else "unbekannt"	
		end
	end


end