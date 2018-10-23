require 'test_helper'

describe Profile do

  it "create a new profile on user creation" do  
    assert_difference 'Profile.count' do

      User.create!(
        email: 'email2@domain.com',
        password: '123password',
        password_confirmation: '123password',
      )

    end
  end

end
