require "test_helper"

class HomeSalesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @home_sale = home_sales(:one)
  end

  test "should get index" do
    get home_sales_url
    assert_response :success
  end

  test "should get new" do
    get new_home_sale_url
    assert_response :success
  end

  test "should create home_sale" do
    assert_difference("HomeSale.count") do
      post home_sales_url, params: { home_sale: { description: @home_sale.description, home_id: @home_sale.home_id, price: @home_sale.price } }
    end

    assert_redirected_to home_sale_url(HomeSale.last)
  end

  test "should show home_sale" do
    get home_sale_url(@home_sale)
    assert_response :success
  end

  test "should get edit" do
    get edit_home_sale_url(@home_sale)
    assert_response :success
  end

  test "should update home_sale" do
    patch home_sale_url(@home_sale), params: { home_sale: { description: @home_sale.description, home_id: @home_sale.home_id, price: @home_sale.price } }
    assert_redirected_to home_sale_url(@home_sale)
  end

  test "should destroy home_sale" do
    assert_difference("HomeSale.count", -1) do
      delete home_sale_url(@home_sale)
    end

    assert_redirected_to home_sales_url
  end
end
