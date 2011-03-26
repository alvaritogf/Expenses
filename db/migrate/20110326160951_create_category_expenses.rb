class CreateCategoryExpenses < ActiveRecord::Migration
  def self.up
    create_table :category_expenses do |t|
      t.string :name
      t.text :description
      t.timestamps
    end
  end

  def self.down
    drop_table :category_expenses
  end
end
