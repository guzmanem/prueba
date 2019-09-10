require "application_system_test_case"

class PostsTest < ApplicationSystemTestCase

  test 'Revisando el titulo de la pagina principal ' do
    visit posts_path
    assert_selector "h1", text: "Blog Post"
  end

  test 'Revisando la creacion de un usuario' do

    visit new_post_path

    fill_in 'Title', with: 'a title'
    fill_in 'Body', with: 'a body'

    click_button 'Save Post'

    visit posts_path
    
    assert_selector 'div h3', text: 'a title'
    assert_selector 'div p', text: 'a body'

  end 

end
