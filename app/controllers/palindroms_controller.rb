# frozen_string_literal: true

# Main controller
class PalindromsController < ApplicationController
  def index; end

  def result
    @flag = false
    @number = form_params
    @palindrom = Palindrom.new(@number)
    @hash, @flag = @palindrom.print_res(@flag)
  end

  def check_page; end

  def check_exists
    @check_par = check_form_params
    @check_palindrom = Palindrom.new(@check_par)
    @check_res = @check_palindrom.check_existing
  end

  def check_data_xml
    render xml: Palindrom.all
  end

  private

  def palindrom_params
    params.require(:palindroms).permit(:num, :result, :squares, :count)
  end

  def form_params
    params.permit(:num)
  end

  def check_form_params
    params.permit(:check)
  end
end
