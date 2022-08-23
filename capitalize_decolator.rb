require_relative 'base_decolator'
class CapitalizeDecorator < BaseDecorator
    def correct_name
      @nameable_obj.correct_name.capitalize
    end
  end