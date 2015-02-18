module ArticlesHelper
  def available_articles
    if current_user.admin?
      @articles
    else
      current_user.articles
    end
  end
end
