module ApplicationHelper
  BASE_TITLE = "Ruby on Rails Tutorial Sample App"
  #ページ毎の完全なタイトルを返します
  def full_title(page_title)
    if page_title.empty?
      BASE_TITLE
    else
      "#{BASE_TITLE} | #{page_title}"
    end
  end
end
