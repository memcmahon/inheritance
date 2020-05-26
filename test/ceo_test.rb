require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/ceo'

class CeoTest < Minitest::Test
  def test_it_exists
    sammy = Ceo.new('Sammy', 1, 200_000, 10_000)

    assert_instance_of Ceo, sammy
  end

  def test_it_has_attributes
    sammy = Ceo.new('Sammy', 1, 200_000, 10_000)

    assert_equal 'Sammy', sammy.name
    assert_equal 1, sammy.id
    assert_equal 200_000, sammy.base_salary
    assert_equal 10_000, sammy.bonus
  end

  def test_it_gets_total_compensation
    sammy = Ceo.new('Sammy', 1, 200_000, 10_000)

    assert_equal 210_000, sammy.total_compensation
  end

  def test_it_gets_benefits
    sammy = Ceo.new('Sammy', 1, 200_000, 10_000)

    assert_equal ['PTO', 'parental leave', 'health insurance'], sammy.benefits
  end
end
