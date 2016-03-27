# test.rb
require File.expand_path '../../test_helper.rb', __FILE__

class MyTest < MiniTest::Test

  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_page
    get '/page'
    assert last_response.ok?
    assert last_response.body.include?("This is a page!")
  end
end
