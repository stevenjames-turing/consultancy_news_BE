class MediastackFacade

  def self.keyword_search(keyword, bias_string)
    json = MediastackService.keyword_search(keyword, bias_string)

    Article.new(json[:data][0], bias_string)
  end

end
