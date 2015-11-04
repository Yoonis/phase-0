# U2.W6: Testing Assert Statements

# 1. Review the simple assert statement

# def assert
#   raise "Assertion failed!" unless yield
# end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

=begin
# 2. Pseudocode what happens when the code above runs

Define assert method that raises an argument error unless the method yield returns true. 

Both assert statements are comparing the name variable to a string and yielding a boolean return.

If the string is equal to the expected name value, then this yields true, and the error will not be raised.

=end


# 3. Copy your selected challenge here

# Solution
def shortest_string(list_of_words)
  if list_of_words.empty? == true
    return nil
  end

  shortest = list_of_words[0]

  list_of_words[1..-1].each do |string|
    if string.length < shortest.length
      shortest = string
    end
  end
return shortest
end

# RSpec
describe 'shortest_string' do
  it "returns nil when the array is empty ([])" do
    expect(shortest_string([])).to be_nil
  end

  it "returns '' when that is the only element in the array" do
    expect(shortest_string([''])).to eq ''
  end

  it "returns 'cat' when that is the only element in the array" do
    expect(shortest_string(['cat'])).to eq 'cat'
  end

  it "returns 'cat' with the example array" do
    expect(shortest_string(['cat', 'zzzzzzz', 'apples'])).to eq 'cat'
  end

  it "returns the shortest string regardless of ordering" do
    # This creates an array containing ['a', 'aa', ...]
    # up to 10 characters long, but randomly ordered
    array = Array.new(10) { |i| 'a' * (i + 1) }.shuffle

    expect(shortest_string(array)).to eq 'a'
  end
end


# 4. Convert your driver test code from that challenge into Assert Statements

def assert
  raise "Assertion failed!" unless yield
end

assert { shortest_string([]) == nil }
# assert { shortest_string([]) == 3 }

assert { shortest_string(['']) == '' }

assert { shortest_string(['cat']) == 'cat' }

assert { (shortest_string(['cat', 'zzzzzzz', 'apples'])) == 'cat' }

array = Array.new(10) { |i| 'a' * (i + 1) }.shuffle
assert { shortest_string(array) == 'a' }


=begin
# 5. Reflection

What concepts did you review in this challenge?
I learned about rspec methods in my research, and about simple assert statements.

What is still confusing to you about Ruby?
Not much.

What are you going to study to get more prepared for Phase 1?
Ruby, JS, SQL, CSS.

=end
