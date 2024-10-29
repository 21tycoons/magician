require 'test_helper'

class MagicianTest < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, Magician
  end

  test "protected steps" do
    error = assert_raise ProtectedStepError do
      class ProtectedBadStepsController < ApplicationController
        include Wicked::Wizard

        steps :whatever, Magician::FINISH_STEP
      end
    end
    assert_equal "Protected step detected: '#{Magician::FINISH_STEP}' is used internally by Wicked please rename your step", error.message
  end
end
