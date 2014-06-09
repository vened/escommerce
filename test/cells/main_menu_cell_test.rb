require 'test_helper'

class MainMenuCellTest < Cell::TestCase
  test "show" do
    invoke :show
    assert_select "p"
  end
  

end
