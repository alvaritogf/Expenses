require 'test_helper'

class TypeExpensesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => TypeExpense.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    TypeExpense.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    TypeExpense.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to type_expense_url(assigns(:type_expense))
  end

  def test_edit
    get :edit, :id => TypeExpense.first
    assert_template 'edit'
  end

  def test_update_invalid
    TypeExpense.any_instance.stubs(:valid?).returns(false)
    put :update, :id => TypeExpense.first
    assert_template 'edit'
  end

  def test_update_valid
    TypeExpense.any_instance.stubs(:valid?).returns(true)
    put :update, :id => TypeExpense.first
    assert_redirected_to type_expense_url(assigns(:type_expense))
  end

  def test_destroy
    type_expense = TypeExpense.first
    delete :destroy, :id => type_expense
    assert_redirected_to type_expenses_url
    assert !TypeExpense.exists?(type_expense.id)
  end
end
