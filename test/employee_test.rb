require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/employee'

class EmployeeTest < Minitest::Test
  def test_it_exists
    brook = Employee.new('Brook', 0)

    assert_instance_of Employee, brook
  end

  def test_it_has_attributes
    brook = Employee.new('Brook', 0)

    assert_equal 'Brook', brook.name
    assert_equal 0, brook.id
    assert_equal ['PTO', 'parental leave'], brook.benefits
  end

  def test_it_raises_error_for_bonus
    brook = Employee.new('Brook', 0)

    assert_equal 5_000, brook.bonus
  end

  def test_it_raises_error_for_base_salary
    brook = Employee.new('Brook', 0)

    assert_raises NotImplementedError do
      brook.base_salary
    end
  end

  def test_it_raises_error_for_bonus
    brook = Employee.new('Brook', 0)

    assert_raises NotImplementedError do
      brook.bonus
    end
  end

  def test_it_raises_error_for_total_compensation
    brook = Employee.new('Brook', 0)

    assert_raises NotImplementedError do
      brook.total_compensation
    end
  end
end
