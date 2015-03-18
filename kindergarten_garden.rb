# require 'pry'
class Garden

  attr_reader :garden

  def initialize(garden_code)
    @garden_code = garden_code  
  end

  def alice
    garden_decoder(@garden_code)
  end

  def garden_decoder(garden_code)
    array_garden   = garden_code.split('')
    array_garden.delete("\n")
    garden_decoded = []

    array_garden.each do |plant_codes|
      case plant_codes
      when "R"
        garden_decoded << :radishes
      when "C" 
        garden_decoded << :clover
      when "G" 
        garden_decoded << :grass
      when "V"
        garden_decoded << :violets
      end
    end
    garden_decoded
  end

end

# garden = Garden.new("RC\nGG")
garden = Garden.new("RCGV")
puts garden.alice