# frozen_string_literal: true

require 'application_system_test_case'

class PalindromsTest < ApplicationSystemTestCase
  setup do
    @palindrom = palindroms(:one)
  end

  test 'visiting the index' do
    visit palindroms_url
    assert_selector 'h1', text: 'Palindroms'
  end

  test 'should create palindrom' do
    visit palindroms_url
    click_on 'New palindrom'

    click_on 'Create Palindrom'

    assert_text 'Palindrom was successfully created'
    click_on 'Back'
  end

  test 'should update Palindrom' do
    visit palindrom_url(@palindrom)
    click_on 'Edit this palindrom', match: :first

    click_on 'Update Palindrom'

    assert_text 'Palindrom was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Palindrom' do
    visit palindrom_url(@palindrom)
    click_on 'Destroy this palindrom', match: :first

    assert_text 'Palindrom was successfully destroyed'
  end
end
