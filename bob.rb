# Bob
# Bob is a lackadaisical teenager. In conversation, his responses are very limited.

puts 'Bob is a socially awkward person. He is not trying to hold a conversation well. Try and talk to him.'
input = gets.chomp.strip

if input
  puts 'Fine. Be that way.'
# He says 'Fine. Be that way!' if you address him without actually saying anything.

elsif /\?/.match("#{input}")
  puts 'Sure.'
# Bob answers 'Sure.' if you ask him a question.

elsif
  /\!/.match("#{input}")
  puts 'Whoa, chill out!'
# He answers 'Whoa, chill out!' if you yell at him.

else
  puts 'Whatever.'
# He answers 'Whatever.' to anything else.

end