# frozen_string_literal: true

require_relative 'base_decolator'
# adding capitalize decolator class
class CapitalizeDecorator < BaseDecorator
  def correct_name
    @nameable_obj.correct_name.capitalize
  end
end
