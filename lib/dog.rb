class Dog
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
       save
    end
    
    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def self.print_all
        self.all.map {|dog| puts dog.name}
    end

    def self.clear_all
        @@all = []
    end
end