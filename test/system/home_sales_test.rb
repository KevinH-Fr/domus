require "application_system_test_case"

class HomeSalesTest < ApplicationSystemTestCase
  setup do
    @home_sale = home_sales(:one)
  end

  test "visiting the index" do
    visit home_sales_url
    assert_selector "h1", text: "Home sales"
  end

  test "should create home sale" do
    visit home_sales_url
    click_on "New home sale"

    fill_in "Description", with: @home_sale.description
    fill_in "Home", with: @home_sale.home_id
    fill_in "Price", with: @home_sale.price
    click_on "Create Home sale"

    assert_text "Home sale was successfully created"
    click_on "Back"
  end

  test "should update Home sale" do
    visit home_sale_url(@home_sale)
    click_on "Edit this home sale", match: :first

    fill_in "Description", with: @home_sale.description
    fill_in "Home", with: @home_sale.home_id
    fill_in "Price", with: @home_sale.price
    click_on "Update Home sale"

    assert_text "Home sale was successfully updated"
    click_on "Back"
  end

  test "should destroy Home sale" do
    visit home_sale_url(@home_sale)
    click_on "Destroy this home sale", match: :first

    assert_text "Home sale was successfully destroyed"
  end
end
