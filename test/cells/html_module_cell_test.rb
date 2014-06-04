require 'test_helper'

class HtmlModuleCellTest < Cell::TestCase
  test "show" do
    invoke :show
    assert_select "p"
  end
  

end
