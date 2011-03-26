require 'test_helper'

class CategoryExpensesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => CategoryExpense.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    CategoryExpense.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    CategoryExpense.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to category_expense_url(assigns(:category_expense))
  end

  def test_edit
    get :edit, :id => CategoryExpense.first
    assert_template 'edit'
  end

  def test_update_invalid
    CategoryExpense.any_instance.stubs(:valid?).returns(false)
    put :update, :id => CategoryExpense.first
    assert_template 'edit'
  end

  def test_update_valid
    CategoryExpense.any_instance.stubs(:valid?).returns(true)
    put :update, :id => CategoryExpense.first
    assert_redirected_to category_expense_url(assigns(:category_expense))
  end

  def test_destroy
    category_expense = CategoryExpense.first
    delete :destroy, :id => category_expense
    assert_redirected_to category_expenses_url
    assert !CategoryExpense.exists?(category_expense.id)
  end
end
