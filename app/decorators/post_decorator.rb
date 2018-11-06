class PostDecorator < SimpleDelegator 

  def to_post
    {
      title: title,
      created_at: I18n.l(created_at, format: :default),
      user_name: user.name,
      content: content,
      category_name: category.name,
      image_url: picture.attached? ? picture : ''   
    }
  end

end

