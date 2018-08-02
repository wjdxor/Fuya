require 'test_helper'

class ShopReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shop_review = shop_reviews(:one)
  end

  test "should get index" do
    get shop_reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_shop_review_url
    assert_response :success
  end

  test "should create shop_review" do
    assert_difference('ShopReview.count') do
      post shop_reviews_url, params: { shop_review: { content: @shop_review.content, date: @shop_review.date, rate: @shop_review.rate, title: @shop_review.title } }
    end

    assert_redirected_to shop_review_url(ShopReview.last)
  end

  test "should show shop_review" do
    get shop_review_url(@shop_review)
    assert_response :success
  end

  test "should get edit" do
    get edit_shop_review_url(@shop_review)
    assert_response :success
  end

  test "should update shop_review" do
    patch shop_review_url(@shop_review), params: { shop_review: { content: @shop_review.content, date: @shop_review.date, rate: @shop_review.rate, title: @shop_review.title } }
    assert_redirected_to shop_review_url(@shop_review)
  end

  test "should destroy shop_review" do
    assert_difference('ShopReview.count', -1) do
      delete shop_review_url(@shop_review)
    end

    assert_redirected_to shop_reviews_url
  end
end
