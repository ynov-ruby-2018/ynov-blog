require 'test_helper'

feature "Post" do

  before do
    sign_in users(:one)
  end

  describe "Form" do
    it "#create" do
      assert_difference 'Post.count' do
        post admin_posts_path, {
          post: {
            title: "new post",
            content: "new content",
            category_id: categories(:one).id
          }
        }

        assert_equal 302, last_response.status
      end
    end

    it "#destroy" do
      assert_difference 'Post.count', -1 do
        delete admin_post_path(posts(:one).id) 
      
        assert_equal 302, last_response.status
      end
    end
       
  end

end
