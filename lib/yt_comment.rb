class YTComment
	
	attr_accessor :id,:title, :content, :author, :author_uri, :video_uri, :published_at, :in_reply_to
	
	def initialize(data)
    @id = data[:id]
		@title = data[:title]
		@content = data[:content]
		@author = data[:author]
		@author_uri = data[:author_uri]
		@video_uri = data[:video_uri]
    @published_at = data[:published_at]
    @in_reply_to = data[:in_reply_to]
	end
	
end