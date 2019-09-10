require 'test_helper'

class PostTest < ActiveSupport::TestCase
 test 'La validacion de titulo debe de dispararse' do
  assert_not Post.new(body: 'Este es un test de prueba.').save
 end

 test 'El post se debe de guardar' do
  assert Post.new(title: 'Titulo de prueba', body: 'Texto de prueba').save
 end

end
