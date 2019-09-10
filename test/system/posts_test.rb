require "application_system_test_case"

class PostsTest < ApplicationSystemTestCase
  test 'Bisitando la pagina principal' do
    visit posts_path
    assert_selector "h3", text: "hola"
  end
end
