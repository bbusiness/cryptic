require 'test_helper'

class Accounting::CategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @accounting_category = accounting_categories(:one)
  end

  test "should get index" do
    get accounting_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_accounting_category_url
    assert_response :success
  end

  test "should create accounting_category" do
    assert_difference('Accounting::Category.count') do
      post accounting_categories_url, params: { accounting_category: {  } }
    end

    assert_redirected_to accounting_category_url(Accounting::Category.last)
  end

  test "should show accounting_category" do
    get accounting_category_url(@accounting_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_accounting_category_url(@accounting_category)
    assert_response :success
  end

  test "should update accounting_category" do
    patch accounting_category_url(@accounting_category), params: { accounting_category: {  } }
    assert_redirected_to accounting_category_url(@accounting_category)
  end

  test "should destroy accounting_category" do
    assert_difference('Accounting::Category.count', -1) do
      delete accounting_category_url(@accounting_category)
    end

    assert_redirected_to accounting_categories_url
  end
end
