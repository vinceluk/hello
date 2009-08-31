
require 'rubygems'
require 'test_helper'
require 'webrat'
require 'selenium/client'

Webrat.configure do |config|
  config.mode = :selenium
end

class LoginTest < ActionController::IntegrationTest
  
  def test_basic_login_page
    visit "/login/login"
    assert_contain "Username"
    assert_contain "Password"
  end
  
  
  def test_successful_login_goes_to_articles_index
    visit "/login/login"
    fill_in "username", :with=>"MyString"
    fill_in "password", :with=>"MyString"
    click_button "Login"
    
    # assert_redirected_to :controller => "articles", :action => "index"

    assert_contain "Listing articles"
  end

  def test_login_failure_shows_error_message
    visit "/login/login"
    fill_in "username", :with=>"panda"
    fill_in "password", :with=>"poop"
    click_button "Login"
    
    assert_contain "You do not belong here"
    
    
  end
end