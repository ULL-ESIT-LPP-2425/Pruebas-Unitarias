require 'lib/figuras'
require 'test/unit'

class TestFiguras < Test::Unit::TestCase
  def setup
    # nothing
  end
  def tear_down
    # nothing
  end
  def test_simple_cuadrado
    #Integer
    assert_equal(16, perimetro_cuadrado(4))
    assert_equal(16, area_cuadrado(4))
    #Float
    assert_equal(16.0, perimetro_cuadrado(4.0))
    assert_equal(16.0, area_cuadrado(4.0))
  end
  def test_type_check
    assert_raise(ZeroDivisionError) {perimetro_cuadrado(1/0)}
    assert_raise(ZeroDivisionError) {area_cuadrado(1/0)}
    assert_raise(TypeError) {area_cuadrado("4")}
    assert_raise(TypeError) {area_cuadrado('4')}
  end
  def test_failure
    assert_equal("4444", perimetro_cuadrado("4"))
    assert_equal("4444", perimetro_cuadrado('4'))
  end
end