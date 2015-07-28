get '/:input' do
  # Look in app/views/index.erb
  a = Word.pluck(:dictionary)

  input = params[:input] + "\n"

  @anagram = Word.anagrams_for(input, a)

  erb :index
end

# get '/chicken' do
#   erb :index
# end
