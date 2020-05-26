require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/intern'

class InternTest < Minitest::Test
  def test_it_exists
    nile = Intern.new('Nile', 1, 15.35)

    assert_instance_of Intern, nile
  end

  def test_it_has_attributes
    nile = Intern.new('Nile', 1, 15.35)

    assert_equal 'Nile', nile.name
    assert_equal 1, nile.id
    assert_equal 15.35, nile.hourly_rate
  end

  def test_it_gets_total_compensation
    nile = Intern.new('Nile', 1, 15.35)

    assert_equal 30_700, nile.total_compensation
  end

  def test_it_gets_benefits
    nile = Intern.new('Nile', 1, 15.35)

    assert_equal ['PTO', 'parental leave'], nile.benefits
  end
end
