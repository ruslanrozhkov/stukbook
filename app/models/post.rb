class Post < ApplicationRecord
  include PublicActivity::Model
  belongs_to :user
  validates_presence_of :user_id
  validates_presence_of :content

  FORMAT = AutoHtml::Pipeline.new(
      AutoHtml::HtmlEscape.new,
      AutoHtml::SimpleFormat.new,
      AutoHtml::Image.new,
      AutoHtml::Link.new,
      AutoHtml::YouTube.new(width: '100%', height: 250, autoplay: false)
  )

  def content=(c)
    super(c)
    self[:content_html] = FORMAT.call(c)
  end
end
