class CategoryExpense < ActiveRecord::Base
  attr_accessible :name, :description,:type_expenses, :type_expenses_ids
  has_many :type_expenses
end
