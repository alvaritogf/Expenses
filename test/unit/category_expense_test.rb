require 'test_helper'

class CategoryExpenseTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert CategoryExpense.new.valid?
  end
end
