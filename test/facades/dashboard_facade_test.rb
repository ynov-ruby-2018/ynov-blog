require 'test_helper'

describe "Dashboard facade", :model do

  before do
    out = DashboardFacade.new(users(:one))
  end

  it "respond the number of posts" do  
    assert_equal 1, out.posts_count
  end

end
