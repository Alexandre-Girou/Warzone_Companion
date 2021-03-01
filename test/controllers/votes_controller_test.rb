require 'test_helper'

class VotesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get vote_create_url
    assert_response :success
  end

  test "should get destroy" do
    get vote_destroy_url
    assert_response :success
  end

end
