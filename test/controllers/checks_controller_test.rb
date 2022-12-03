# frozen_string_literal: true

require 'test_helper'

class ChecksControllerTest < ActionDispatch::IntegrationTest
  test 'should get check_page' do
    get checks_check_page_url
    assert_response :success
  end

  test 'should get check_exists' do
    get checks_check_exists_url
    assert_response :success
  end
end
