def find_big_fish(school)
    longest = ""
    (0...school.length).each do |i|
        (i+1...school.length).each do |j|
            if school[i].length > school[j].length
                longest = school[i]
            else
                longest = school[j]
            end
        end
    end
    longest
end

def merge_sort(school)
    return school if school.length < 2
    mid = school.length/2

    left = merge_sort(school[0...mid])
    right = merge_sort(school[mid..-1])
    merge(left, right)
end

def merge(left, right)
    arr = []
    until left.empty? || right.empty?
        case left.first.length <=> right.first.length
        when 1
            arr << right.shift
        when 0 
            arr << left.shift
        when -1
            arr << left.shift
        end
    end
    arr + left + right
end

def clever(school)
    longest = ""
    school.each { |el| longest = el if el.length > longest.length }
    longest
end

def slow_dance(dir, arr)
    (0...arr.length).each { |idx| return idx if dir == arr[idx] }
end

def fast_dance(dir, data_structure)
    data_structure[dir]
end

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

hash = Hash.new(0)
tiles_array.each_with_index { |el,idx| hash[el] = idx }

school = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

p find_big_fish(school)
p merge_sort(school).last
p clever(school)
p slow_dance("down", tiles_array)
p fast_dance("left", hash)
