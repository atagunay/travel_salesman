class TravelSalesman
    STATE = 1.freeze
    POS = 0.freeze
  
    def initialize(distance_matrix)
      @distance_matrix = distance_matrix
      @city_count = @distance_matrix[0].length
      @memory = Array.new(@city_count) { Array.new(1 << @city_count) }
      @prev = Array.new(@city_count) { Array.new(1 << @city_count) }
      @finished_state = (1 << @city_count) - 1
      @is_solve = false
    end
  
    def get_tour_distance
      @tour_distance = tsp(STATE, POS) unless @is_solve
    end
  
    def get_tour_route
      tsp(STATE, POS) unless @is_solve
      tour
    end
  
    private
  
    def tsp(state, pos)
      return @distance_matrix[pos][0] if state == @finished_state
      return @memory[state][pos] if @memory[pos][state] != nil
  
      minimum_cost = Float::INFINITY
      index = nil
      (0..(@city_count - 1)).each { |next_city|
        next if state & (1 << next_city) != 0
        new_cost = @distance_matrix[pos][next_city] + tsp(state | 1 << next_city, next_city)
        if new_cost < minimum_cost
          minimum_cost = new_cost
          index = next_city
        end
      }
  
      @prev[pos][state] = index
      @memory[pos][state] = minimum_cost
    end
  
    def tour
      @tour_route = []
      state = 1
      index = 0
  
      while true do
        @tour_route << (index)
        next_index = @prev[index][state]
        if next_index == nil
          break
        else
          state = state | (1 << next_index)
          index = next_index
        end
      end
      @tour_route << (0)
    end
  end
  