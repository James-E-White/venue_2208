class Venue
  attr_reader :name,
              :capacity,
              :patrons,
              :yell_at_patrons

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
    @yell_at_patrons = []
  end

   def add_patron(patron)
     @patrons << patron
   end

   def yell_at_patrons
     patrons.each do |patron|
       yell_at_patrons << patron.upcase
     end
 end
end
#   def capacity?
#     capacity > 4
#       true
#     else < 4
#       false
#
# end
# puts capacity
# puts name
