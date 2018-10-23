class DashboardFacade

  attr_reader :user

  def initialize(user)
    @user = user
  end

  def users_count
    User.all.count
  end

  def categories_count
    Category.all.count
  end

  def posts_count
    Post.all.count
  end

end
