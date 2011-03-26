class CategoryExpensesController < ApplicationController
  def index
    @category_expenses = CategoryExpense.all
  end

  def show
    @category_expense = CategoryExpense.find(params[:id])
  end

  def new
    @category_expense = CategoryExpense.new
  end

  def create
    @category_expense = CategoryExpense.new(params[:category_expense])
    if @category_expense.save
      redirect_to @category_expense, :notice => "Successfully created category expense."
    else
      render :action => 'new'
    end
  end

  def edit
    @category_expense = CategoryExpense.find(params[:id])
  end

  def update
    @category_expense = CategoryExpense.find(params[:id])
    if @category_expense.update_attributes(params[:category_expense])
      redirect_to @category_expense, :notice  => "Successfully updated category expense."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @category_expense = CategoryExpense.find(params[:id])
    @category_expense.destroy
    redirect_to category_expenses_url, :notice => "Successfully destroyed category expense."
  end
end
