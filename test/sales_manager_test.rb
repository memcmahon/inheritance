require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/sales_manager'

class SalesManagerTest < Minitest::Test
  def test_it_exists
    cutty = SalesManager.new('Cutty', 1, 80_000, 50_000)

    assert_instance_of SalesManager, cutty
  end

  def test_it_has_attributes
    cutty = SalesManager.new('Cutty', 1, 80_000, 50_000)

    assert_equal 'Cutty', cutty.name
    assert_equal 1, cutty.id
    assert_equal 80_000, cutty.base_salary
    assert_equal 50_000, cutty.estimated_annual_sales
  end

  def test_it_gets_bonus
    cutty = SalesManager.new('Cutty', 1, 80_000, 50_000)

    assert_equal 5_000, cutty.bonus
  end

  def test_it_gets_total_compensation
    cutty = SalesManager.new('Cutty', 1, 80_000, 50_000)

    assert_equal 85_000, cutty.total_compensation
  end

  def test_it_gets_benefits
    cutty = SalesManager.new('Cutty', 1, 80_000, 50_000)

    assert_equal ['PTO', 'parental leave'], cutty.benefits
  end
end
