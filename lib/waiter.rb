class Waiter
    attr_accessor :name, :yrs_experience

    @@all = []

    def initialize(name, yrs_experience)
        @name = name
        @yrs_experience = yrs_experience
        @@all << self
    end

    def self.all
        @@all
    end

    def meals
        Meal.all.select {|meal| meal.waiter == self}
    end

    def customers
        meals.map {|meal| meal.customer}
    end

    def best_tipper
        best_tipped_meal = meals.max do |meal_a, meal_b|
            meal_a.tip <=> meal_b.tip
        end
        best_tipped_meal.customer
    end

    def new_meal(customer, total, tip=0)
        Meal.new(self, customer, total, tip)
    end

    def customer_counts
        self.customers.each_with_object(Hash.new(0)) do |customer, new_hash|
            new_hash[customer] += 1
        end
    end

    def most_frequent_cust
        customer_counts.max_by {|cust, count| count}
    end

    ## come back later to write methods for:
    ## - the meal of a waiter's worst-tipping customer
    ## - avg tips for the most and least experienced waiters

end

