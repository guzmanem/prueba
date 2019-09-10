require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest

  setup do
    @post = posts(:one)
  end

  test 'Debe de devolver el index' do
    get home_path
    assert_response :success
  end

  test 'Debe de devolver un post nuevo' do
    get new_post_path
    assert_response :success
  end

  test 'Debe de crear un nuevo post' do
    assert_difference('Post.count') do
      post posts_path, params: { post: {title: @post.title, body: @post.body}}
    end

    assert_redirected_to posts_path()

  end

  test 'Debe de mostrar un post' do
    get posts_path(@post)
    assert_response :success
  end

  test 'Debe de actualizar' do
    get edit_post_path(@post)
    assert_response :success
  end 

  test 'Debe de actualizar el post' do
    patch post_path(@post), params: { post:{title: @post.title, body: @post.body}}
    assert_redirected_to posts_path()
  end

  test 'Debe de eliminar el post' do
    assert_difference('Post.count',-1) do
      delete post_path(@post)
    end

    assert_redirected_to posts_path()
  end

end
