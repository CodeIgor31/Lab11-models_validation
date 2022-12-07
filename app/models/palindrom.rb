# frozen_string_literal: true

# good
class Palindrom < ApplicationRecord
  include ActiveModel::Serializers::Xml
  include PalindromsHelper

  attr_accessor :num, :check
  validates :num, presence: { message: 'не может быть пустым' }
  validates_numericality_of :num, only_integer: true, greater_than_or_equal_to: 0
  self.primary_key = :num

  def print_res(bool_val)
    number = num.to_i
    return if number.negative?

    if Palindrom.find_by(num: number).nil?
      add_to_database(number)
      bool_val = true
    end
    obj = Palindrom.find_by(num: number)
    arr = obj[:result].split.map(&:to_i)
    sqr = obj[:squares].split.map(&:to_i)
    [Hash[arr.zip sqr], bool_val]
  end

  def check_existing
    check_val = check
    if Palindrom.find_by(num: check_val).nil?
      nil
    else
      exists(check_val)
    end
  end
end
