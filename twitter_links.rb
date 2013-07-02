#!/usr/bin/env ruby
require 'rubygems'
require 'grackle'
require 'json'
require 'debugger'
client = Grackle::Client.new(:auth=>{
  :type=>:oauth,
  :consumer_key=>'xp2rqij0kF1XiFTzUOkA', :consumer_secret=>'sAc5rKwKTq7gTrmVJMnji5ScyH6jsc7fKfVKkr3U',
  :token=>'70403567-vgQKTujY6fKxllzWnd6Utd5mJZbeJX0M3iwFTigXM', :token_secret=>'lWx28wdy2H17pZlIkCaRALqlXg7WEMrGcSxmnPJuA'
})
if ARGV.length != 1
  puts "expecting exactly one argument, the twitter #hashtag" 
  return false
else 
  #puts "twitter #hashtag is #{ARGV[0]}"
  result = client.search.tweets? :q => ARGV[0], :count => 100, :include_entities => true
  statuses = result.statuses
  urls = []
  statuses.each_with_index do |s, i|
    unless s.entities.urls.length == 0
      s.entities.urls.each do |u|
        #puts "#{i}: #{s.user.name};  #{u.url}; #{u.expanded_url}"
        urls << u.expanded_url
      end
    end
  end  
  puts urls.uniq!
end