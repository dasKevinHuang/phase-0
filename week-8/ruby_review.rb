# U2.W6: Testing Assert Statements

# => Written by Kevin Huang
# I worked on this challenge by myself.


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

## name = "bettysue"
## assert { name == "bettysue" }
## assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs

# => Define an assert method 
## => Raise an error 
### => unless the yield statement invoked holds true.
#
# => Define name as "bettysue"
# => Assert that name is equal to "bettysue"
# => Assert that name is equal to "billybob"


# 3. Copy your selected challenge here

class CreditCard

  def initialize(card_num)
    raise ArgumentError.new("This is not a valid 16 digit credit card number") if card_num.to_s.size != 16
    @card_array = card_num.to_s.split("")
  end

  def double_even_index
    @card_array.map!.with_index {|v, i| i.even? ? v.to_i * 2 : v.to_i }
  end
 
  def sum_values
    @sum = 0
    @card_array.each {|v| v > 9 ? @sum += 1+(v % 10): @sum += v}
    @sum
  end
  
  def check_card
    double_even_index
    sum_values
    @sum % 10 == 0
  end
end

# describe CreditCard do
#   describe '#initialize' do
#     it 'Expects a single argument for the card' do
#       expect(CreditCard.instance_method(:initialize).arity).to eq 1
#     end# 

#     it 'raises ArgumentError on card > 16' do
#       expect { CreditCard.new(11111111111111112) }.to raise_error(ArgumentError)
#     end# 

#     it 'raises ArgumentError on card < 16' do
#       expect { CreditCard.new(1) }.to raise_error(ArgumentError)
#     end
#   end# 

#   describe '#check_card' do
#     it 'expects no arguments to be passed' do
#       expect(CreditCard.instance_method(:check_card).arity).to be_zero
#     end# 

#     it 'returns true for a valid card' do
#       card = CreditCard.new(4408041234567901)
#       expect(card.check_card).to eq true
#     end# 

#     it 'returns false for a bad card' do
#       card = CreditCard.new(4408041234567906)
#       expect(card.check_card).to eq false
#     end
#   end
# end

# 4. Convert your driver test code from that challenge into Assert Statements

assert {CreditCard.instance_method(:initialize).arity == 1}
assert {
	begin
		CreditCard.new(11111111111111112) 
	rescue ArgumentError
		true
	end
	}
assert {
	begin
		CreditCard.new(1)
	rescue ArgumentError
		true
	end
	}
assert {CreditCard.instance_method(:check_card).arity == 0}
assert {
	card = CreditCard.new(4408041234567901)
	card.check_card
	}
assert {
	card = CreditCard.new(4408041234567906)
	!(card.check_card)
	}

# 5. Reflection

### => What concepts did you review or learn in this challenge?
#
# => I learned more about writing test code in Ruby, especially assert statements for purposes of testing how code runs.
#
### => What is still confusing to you about Ruby?
#
# => I could not think of anything off the top of my head, but I'm sure when I am confused about something, I'll be able to research about it myself.
#
### => What are you going to study to get more prepared for Phase 1?
#
# => I think I'm going to research more about Ruby and JavaScript in advance of Phase 1 and challenge my own ability to write code logically in advance with problems I find online.
#