require "application_system_test_case"

class Accounting::CategoriesTest < ApplicationSystemTestCase
  setup do
    @accounting_category = accounting_categories(:one)
  end

  test "visiting the index" do
    visit accounting_categories_url
    assert_selector "h1", text: "Accounting/Categories"
  end

  test "creating a Category" do
    visit accounting_categories_url
    click_on "New Accounting/Category"

    click_on "Create Category"

    assert_text "Category was successfully created"
    click_on "Back"
  end

  test "updating a Category" do
    visit accounting_categories_url
    click_on "Edit", match: :first

    click_on "Update Category"

    assert_text "Category was successfully updated"
    click_on "Back"
  end

  test "destroying a Category" do
    visit accounting_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Category was successfully destroyed"
  end
end
