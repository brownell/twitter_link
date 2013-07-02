#!/usr/bin/env ruby
if ARGV.length != 1
  puts "expecting exactly one argument, the twitter #hashtag" 
  return false
else 
  puts "twitter #hashtag is #{ARGV[0]}"
end