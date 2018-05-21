require_relative "ruler.rb"

if __FILE__ == $0
    context = build_context("example_animal.rlr")
    sum = 0
    context.actions["increment"] = lambda do |count|
        sum += count
        puts "Sum increased by #{count} to #{sum}."
    end

    context.facts["closest_animal_type"] = Obj.str("dog")
    context.facts["closest_animal_distance"] = Obj.int(2)
    context.execute
end
