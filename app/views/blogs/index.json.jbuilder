json.array!(@blogs) do |blog|
  json.extract! blog, :id, :blog_date, :blog_title, :blog_main, :blog_img
  json.url blog_url(blog, format: :json)
end
