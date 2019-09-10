require "application_system_test_case"

class PostsTest < ApplicationSystemTestCase

  test 'Revisando el titulo de la pagina principal ' do
    visit posts_path
    assert_selector "h1", text: "Blog Post"
  end

  test 'Revisando la creacion de un usuario' do
    
  end 

end
