#!/usr/bin/env ruby
require 'json'
RAILS_ENV = 'development'
require File.expand_path('../environment', __FILE__)

f = File.read("olympic-medals.json") 
# scan leaves out punctuation such as ' and .
# split divides by space and may work better doesn't
obj = JSON.parse(f)
length = obj.keys.length
i = 0
while i < length
 puts obj[obj.keys[i]]['gold']
  @medal.name = obj[obj.keys[i]]['name']
  @medal.gold = obj[obj.keys[i]]['gold']    
  @medal.silver = obj[obj.keys[i]]['silver']
  @medal.bronze = obj[obj.keys[i]]['bronze']
  @medal.save #formerly @word.create
  #obj[obj.keys[i]]['gold']
  i += 1
end

