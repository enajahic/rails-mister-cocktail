module AverageHelper
    def render_average(cocktail)
        output = 0.0
        
        cocktail.reviews.each do |review| 
            output = output + review.rating            
        end
        output = output / cocktail.reviews.length
        return output.to_f.round(1)
    end
end