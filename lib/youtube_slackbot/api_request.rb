module YoutubeSlackbot
  class ApiRequest
    attr_reader :key, :channel_id

    def initialize(key = ENV["API_KEY"], channel_id = ENV["CHANNEL_ID"])
      @key = key
      @channel_id = channel_id
    end

    def base_api_string
      "https://www.googleapis.com/youtube/v3/commentThreads?"\
        "part=snippet,replies&"\
        "allThreadsRelatedToChannelId=#{channel_id}&"\
        "maxResults=100&"\
        "order=time&"\
        "textFormat=plainText&"\
        "key=#{key}"
    end

    def api_url_string(next_page_token = nil)
      next_page_query = next_page_token ? "&pageToken=#{next_page_token}" : ""
      "#{base_api_string}#{next_page_query}"
    end
  end
end
