module FilmHelper
  class Film

    @@all = []
    def initialize(film)
      film.each do |key, value|
          # Assign the index key to the attr_accessor -- account for changing attributes
         self.class.__send__(:attr_accessor, "#{key}")
         # Assign the value to the newly established attr_accessor
         self.send(("#{key}="), value)
       end
      # @film = film
      save
      # @@all << self
    end 

    def save
      @@all << self
    end

    def self.all
      @@all
    end

  end
end
