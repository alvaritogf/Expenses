class CreateExpenses < ActiveRecord::Migration
  def self.up
    create_table :expenses do |t|
      t.decimal :amount
      t.boolean :vat
      t.text :description
      t.integer :type_expense_id
      t.timestamps
    end
  end

  def self.down
    drop_table :expenses
  end
end
