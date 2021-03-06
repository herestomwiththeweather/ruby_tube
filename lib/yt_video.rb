class YTVideo

	attr_reader :id, :duration, :player_uri, :thumbnails, :published_at, :updated_at, :ratings_uri, :comments_uri, :view_count, :favorite_count, :comment_count, :ratings, :comments, :status, :published_by,:published_by_uri,:comments_allowed,:comment_vote,:video_respond,:rate,:embed,:syndicate, :user
	attr_accessor :title, :description, :keywords
	
	def initialize(data)
		@id = data[:id]
		@title = data[:title]
		@description = data[:description]
		@keywords = data[:keywords]
		@duration = data[:duration]
		@player_uri = data[:player_uri]
		@ratings_uri = data[:ratings_uri]
		@comments_uri = data[:comments_uri]
		@published_at = data[:published_at]
		@updated_at = data[:updated_at]
		@thumbnails = data[:thumbnails]
		@view_count = data[:view_count]
		@favorite_count = data[:favorite_count]
		@comment_count = data[:comment_count]
		@ratings = data[:ratings]
		@comments = data[:comments]
		@status = data[:status]
		@thumbnails = data[:thumbnails]
    @published_by = data[:published_by]
    @published_by_uri = data[:published_by_uri]
    @comments_allowed = data[:comments_allowed]
    @comment_vote = data[:comment_vote]
    @video_respond = data[:video_respond]
    @rate = data[:rate]
    @embed = data[:embed]
    @syndicate = data[:syndicate]
    @user = data[:user]
	end
	
	def to_xml
		data = <<-XMLSTOP
<?xml version="1.0"?>
<entry xmlns="http://www.w3.org/2005/Atom"
	xmlns:media="http://search.yahoo.com/mrss/"
	xmlns:yt="http://gdata.youtube.com/schemas/2007">
	<media:group>
		<media:title type="plain">#{@title}</media:title>
		<media:description type="plain">#{@description}</media:description>
		<media:category scheme="http://gdata.youtube.com/schemas/2007/categories.cat">Tech</media:category>
		<media:keywords>#{@keywords}</media:keywords>
	</media:group>
</entry>
XMLSTOP
		return data
	end
	
end