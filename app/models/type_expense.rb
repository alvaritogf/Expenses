class TypeExpense < ActiveRecord::Base
  attr_accessible :name, :description, :category_expense_id
  belongs_to :category_expense
  has_many :expenses
end
