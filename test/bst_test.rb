require 'pry'
gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/bst'

class BinarySearchTreeTest < Minitest::Test
  def test_can_create_a_tree
    tree = BinarySearchTree.new
    assert_equal BinarySearchTree, tree.class
  end

  def test_can_insert_into_tree_and_return_depth
    tree = BinarySearchTree.new
    assert_equal 0, tree.insert(61, "Bill & Ted's Excellent Adventure")
    assert_equal 1, tree.insert(16, "Johnny English")
    assert_equal 1, tree.insert(92, "Sharknado 3")
    assert_equal 2, tree.insert(50, "Hannibal Buress: Animal Furnace")
    # binding.pry
  end

  def test_does_current_node_contain_a_score

    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    assert_equal true, tree.include?(61)
    assert_equal true, tree.include?(16)
    # assert_equal true, tree.include?(50)
    # assert_equal false, tree.include?(90)

  end
end
