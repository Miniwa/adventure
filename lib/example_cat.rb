require_relative "ruler.rb"

if __FILE__ == $0
    context = build_context("example_cat.rlr")
    context.actions["say"] = lambda do |text|
        puts(text)
    end

    context.facts["closest_animal_type"] = Obj.str("cat")
    context.facts["closest_animal_distance"] = Obj.int(2)
    context.execute
end
