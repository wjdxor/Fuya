require 'test_helper'

class MarketReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @market_review = market_reviews(:one)
  end

  test "should get index" do
    get market_reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_market_review_url
    assert_response :success
  end

  test "should create market_review" do
    assert_difference('MarketReview.count') do
      post market_reviews_url, params: { market_review: { content: @market_review.content, date: @market_review.date, rate: @market_review.rate, title: @market_review.title } }
    end

    assert_redirected_to market_review_url(MarketReview.last)
  end

  test "should show market_review" do
    get market_review_url(@market_review)
    assert_response :success
  end

  test "should get edit" do
    get edit_market_review_url(@market_review)
    assert_response :success
  end

  test "should update market_review" do
    patch market_review_url(@market_review), params: { market_review: { content: @market_review.content, date: @market_review.date, rate: @market_review.rate, title: @market_review.title } }
    assert_redirected_to market_review_url(@market_review)
  end

  test "should destroy market_review" do
    assert_difference('MarketReview.count', -1) do
      delete market_review_url(@market_review)
    end

    assert_redirected_to market_reviews_url
  end
end
