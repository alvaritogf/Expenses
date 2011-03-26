class TypeExpensesController < ApplicationController
  def index
    @type_expenses = TypeExpense.all
  end

  def show
    @type_expense = TypeExpense.find(params[:id])
  end

  def new
    @type_expense = TypeExpense.new
  end

  def create
    @type_expense = TypeExpense.new(params[:type_expense])
    if @type_expense.save
      redirect_to @type_expense, :notice => "Successfully created type expense."
    else
      render :action => 'new'
    end
  end

  def edit
    @type_expense = TypeExpense.find(params[:id])
  end

  def update
    @type_expense = TypeExpense.find(params[:id])
    if @type_expense.update_attributes(params[:type_expense])
      redirect_to @type_expense, :notice  => "Successfully updated type expense."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @type_expense = TypeExpense.find(params[:id])
    @type_expense.destroy
    redirect_to type_expenses_url, :notice => "Successfully destroyed type expense."
  end
end
