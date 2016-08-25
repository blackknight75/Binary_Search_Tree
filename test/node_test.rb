require_relative '../lib/node'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class NodeTest < Minitest::Test
  def test_can_create_a_node_with_title_and_rating
    node = Node.new(100, "Title")
    assert_equal 100, node.rating
    assert_equal "Title", node.title
  end

  def test_nodes_can_have_links_to_the_left_and_right
    node = Node.new(100, "Title")
    assert_equal nil, node.left
    assert_equal nil, node.right
  end
end
