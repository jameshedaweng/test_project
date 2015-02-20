module ApplicationHelper
  def render_comment_form path
    render partial: 'comment_form', locals: { path: path }
  end
end
