require 'test_helper'

class TypeExpenseTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert TypeExpense.new.valid?
  end
end
