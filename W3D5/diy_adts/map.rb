class Map
    def initialize
        @map = []
    end

    def set(key, value)
        @map.any? { |pair| pair[0] == key } ? @map.each_with_index { |pair, idx| @map[idx][1] = value if pair[0] == key } : @map << [key, value]
    end

    def get(key)
        @map.each { |pair| puts pair[1] if pair[0] == key }
    end

    def delete(key)
        @map.each_with_index { |pair, idx| @map.delete_at(idx) if pair[0] == key }
    end

    def show
        p @map
    end
end
