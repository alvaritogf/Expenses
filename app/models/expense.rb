class Expense < ActiveRecord::Base
  attr_accessible :amount, :vat, :description,:type_expense_id
  belongs_to :type_expense
end
