require 'rubygems'
require 'test_helper'
require 'webrat'
require 'selenium/client'

Webrat.configure do |config|
  config.mode = :selenium
end


class ArticlesTest < ActionController::IntegrationTest
  
  def test_articles_index
      visit "/articles"
      assert_contain "Listing articles"
  end
  
end