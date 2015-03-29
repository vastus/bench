class Article < ActiveRecord::Base
  # Associations.
  has_many(:comments)

  def content_as_markdown
    md.render(content)
  end

  private

  def md
    @md ||= Redcarpet::Markdown.new(Redcarpet::Render::HTML, {})
  end
end

