require 'test_helper'

describe Search, :model do

  it "returns all posts" do  
    out = Search.new('').perform

    assert_equal 1, out.length
  end

  focus
  it "returns matching search" do  
    Post.create!(
      title: "Deuxieme post",
      content: "content deuxieme post",
      category_id: categories(:one).id,
      user_id: users(:one).id
    )
    out = Search.new("Deuxieme post").perform

    assert_equal 1, out.length
  end

end
