# frozen_string_literal: true

require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post = posts(:one)
  end

  test "should get index" do
    get posts_url
    assert_response :success
  end

  test 'should get redirect to sign in' do
    get new_post_url
    assert_response :redirect
    assert_redirected_to :new_user_session
  end

  test "should get new" do
    sign_in users(:user_one)
    get new_post_url
    assert_response :success
  end

  test 'unauthenticated can not create post' do
    assert_no_difference('Post.count') do
      post posts_url, params: { post: { body: @post.body, category_id: @post.category_id, title: @post.title } }
    end

    assert_redirected_to :new_user_session
  end

  test 'should create post' do
    sign_in users(:user_one)

    assert_difference('Post.count') do
      post posts_url, params: { post: { body: @post.body, category_id: @post.category_id, title: @post.title } }
    end

    assert_redirected_to post_url(Post.last)
  end

  test "should show post" do
    get post_url(@post)
    assert_response :success
  end

  test 'should redirect to sign in' do
    get edit_post_url(@post)
    assert_response :redirect
    assert_redirected_to :new_user_session
  end

  test 'should get edit' do
    sign_in users(:user_one)
    get edit_post_url(@post)
    assert_response :success
  end

  test 'should redirected to sign in' do
    patch post_url(@post), params: { post: { body: @post.body, category_id: @post.category_id, title: @post.title } }
    assert_redirected_to :new_user_session
  end

  test 'should update post' do
    sign_in users(:user_one)
    patch post_url(@post), params: { post: { body: @post.body, category_id: @post.category_id, title: @post.title } }
    assert_redirected_to post_url(@post)
  end

  test 'should not destroy post' do
    assert_no_difference('Post.count') do
      delete post_url(@post)
    end

    assert_redirected_to :new_user_session
  end

  test 'should destroy post' do
    sign_in users(:user_one)
    assert_difference('Post.count', -1) do
      delete post_url(@post)
    end

    assert_redirected_to posts_url
  end
end
