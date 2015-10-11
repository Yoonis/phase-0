=begin 

1. Psuedocode

Input: An array of names.

Output: Arrays of names in groups of 5, with no group having less than 3 names.

Steps:

define method "acct_groups" (array)
  Create "groups" array
  EACH loop through array
    SLICE array at every 5 names
    PUSH every grouping into "groups"
  END each loop
  RETURN "groups"
END method

define method "balance" (acct_groups)
  Create array "extra"
  IF last accoutability group array has length of 1 (1 member)
    POP off last 2 members of penultimate group and PUSH into "extra"
    EACH loop through "extra" and PUSH all elements into last accountability group array
  ELSIF last accoutability group array has length of 2 (2 members)
    POP off last member of penultimate group and PUSH into "extra"
    EACH loop through "extra" and PUSH all elements into last accountability group array
  END if
  RETURN "acct_groups"
end method

=end

# 2. Initial Solution

array = ["Joshua Abrams", "Syema Ailia", "Kris Bies", "Alexander Blair", "Andrew Blum", "Jacob Boer", "Steven Broderick", "Ovi Calvo", "Danielle Cameron", "Eran Chazan", "Jonathan Chen", "Un Choi", "Kevin Corso", "Eric Dell'Aringa", "Eunice Do", "Ronny Ewanek", "John Paul Chaufan Field", "Eric Freeburg", "Jeff George", "Jamar Gibbs", "Paul Gaston Gouron", "Gabrielle Gustilo", "Marie-France Han", "Noah Heinrich", "Jack Huang", "Max Iniguez", "Mark Janzer", "Michael Jasinski", "Lars Johnson", "Joshua Kim", "James Kirkpatrick", "Christopher Lee", "Isaac Lee", "Joseph Marion", "Kevin Mark", "Bernadette Masciocchi", "Bryan Munroe", "Becca Nelson", "Van Phan", "John Polhill", "Jeremy Powell", "Jessie Richardson", "David Roberts", "Armani Saldana", "Chris Savage", "Parminder Singh", "Kyle Smith", "Aaron Tsai", "Douglas Tsui", "Deanna Warren", "Peter Wiebe", "Place Holder"]

def acct_groups(array)
  groups = Array.new
  array.each_slice(5) do |x| 
    groups.push x 
  end
  return groups
end

def balance(acct_groups)
  extra = Array.new
  if acct_groups[-1].length == 1
    extra = acct_groups[-2].pop(2).push
    extra.each {|x| acct_groups[-1].push x}
  elsif acct_groups[-1].length == 2
    extra = acct_groups[-2].pop(1).push
    extra.each {|x| acct_groups[-1].push x}
  end
  return acct_groups
end

p balance(acct_groups(array))

# 3. Refactor

def acct_groups(array)
  groups = Array.new
  array.each_slice(5) {|x| groups.push x}
  return groups
end

def balance(acct_groups)
  if acct_groups[-1].length <= 2
    acct_groups[-2].pop(2).each {|x| acct_groups[-1].push x}
  end
  return acct_groups
END

p balance(acct_groups(array))
  
# 4. Re-refactor

def create_acct_groups(array)
  groups = array.each_slice(5).to_a  
  if groups[-1].length <= 2
    groups[-2].pop(2).each {|x| groups[-1].push x}
  end
  return groups
end

create_acct_groups(array).each_with_index {|group, index| print "Group " + (index+1).to_s + ": " + group.to_s + "\n"}

# 5. Reflection
=begin

1. What was the most interesting and most difficult part of this challenge?
The most interesting was attempting to write my own rspec, but I'm a long ways off before having good test code. The most difficult part was the refactoring, because I realized I was including a lot of syntax that could be shortened.

2. Do you feel you are improving in your ability to write pseudocode and break the problem down?
Yes, for the first time, writing pseudo before writing syntax helped me think through the challenge logic.

3. Was your approach for automating this task a good solution? What could have made it even better?
I think so, because no matter what the number of members in the last accountability group is, this method will arrange members so that there's always a minimum of 3 people and maximum of 5. I could have made this even better by adding on optional complexity (like how to handle a member leaving a group).

4. What data structure did you decide to store the accountability groups in and why?
I decided to store each accountability group as an array, and all groups were stored into a final array. I thought of using hashes to store names and group numbers, but decided that keeping track of group numbers wasn't important to this challenge.

5. What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
I learned that .each_slice() returns an enumberable, which I can then call .to_a on for an output of a group of arrays. Being able to do this really simplified my final solution.

=end