require('sinatra')
require('sinatra/reloader')
require('./lib/word_frequency')

get('/') do
  erb(:form)
end

get('/word_frequency') do
  @word = params.fetch("to_find")
  @count = params.fetch("to_search").word_frequency(@word)
  erb(:word_frequency)
end