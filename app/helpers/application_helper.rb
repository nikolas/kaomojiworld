module ApplicationHelper
  def navbar_link(body, url, options = {})
    content_tag(:li, link_to(body, url, options), :class =>("active" if current_page?(url)))
  end
end
