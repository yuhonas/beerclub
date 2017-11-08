require 'features_helper'

describe 'Visit home' do
  it 'is successful' do
    skip "need to implement this"
    
    visit '/'

    page.body.must_include('Bookshelf')
  end
end