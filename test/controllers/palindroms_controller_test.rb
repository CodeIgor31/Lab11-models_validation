# frozen_string_literal: true

require 'test_helper'

class PalindromsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @palindrom = palindroms(:one)
  end

  test 'should get index' do
    get palindroms_url
    assert_response :success
  end

  test 'should get new' do
    get new_palindrom_url
    assert_response :success
  end

  test 'should create palindrom' do
    assert_difference('Palindrom.count') do
      post palindroms_url, params: { palindrom: {} }
    end

    assert_redirected_to palindrom_url(Palindrom.last)
  end

  test 'should show palindrom' do
    get palindrom_url(@palindrom)
    assert_response :success
  end

  test 'should get edit' do
    get edit_palindrom_url(@palindrom)
    assert_response :success
  end

  test 'should update palindrom' do
    patch palindrom_url(@palindrom), params: { palindrom: {} }
    assert_redirected_to palindrom_url(@palindrom)
  end

  test 'should destroy palindrom' do
    assert_difference('Palindrom.count', -1) do
      delete palindrom_url(@palindrom)
    end

    assert_redirected_to palindroms_url
  end
end
