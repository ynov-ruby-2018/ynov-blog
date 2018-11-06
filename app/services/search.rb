class Search

  def initialize(query)
    @query = query
  end

  def perform
    if @query != ''
      out = Post.joins(:user)
                   .where(['users.name LIKE ? OR posts.title LIKE ?',
                      "%#{@query}%", "%#{@query}%"
                    ])
    else
      out = Post.all
    end

    return out
  end

end
