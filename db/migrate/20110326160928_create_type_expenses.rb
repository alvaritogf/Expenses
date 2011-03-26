class CreateTypeExpenses < ActiveRecord::Migration
  def self.up
    create_table :type_expenses do |t|
      t.string :name
      t.text :description
      t.integer :category_expense_id
      t.timestamps
    end
  end

  def self.down
    drop_table :type_expenses
  end
end
