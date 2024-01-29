# Component: Text
class Text
  attr_reader :content

  def initialize(content)
    @content = content
  end

  def render
    @content
  end
end

# Decorator: BoldText
class BoldTextDecorator
  def initialize(text)
    @text = text
  end

  def render
    "<b>#{@text.render}</b>"
  end
end

# Decorator: ItalicText
class ItalicTextDecorator
  def initialize(text)
    @text = text
  end

  def render
    "<i>#{@text.render}</i>"
  end
end

# Decorator: UnderlineText
class UnderlineTextDecorator
  def initialize(text)
    @text = text
  end

  def render
    "<u>#{@text.render}</u>"
  end
end

# Application
plain_text = Text.new('Hello, world!')

bold_text = BoldTextDecorator.new(plain_text)
puts "Bold Text: #{bold_text.render}"

italic_text = ItalicTextDecorator.new(plain_text)
puts "Italic Text: #{italic_text.render}"

underlined_text = UnderlineTextDecorator.new(plain_text)
puts "Underlined Text: #{underlined_text.render}"

# Combining decorators
bold_italic_text = BoldTextDecorator.new(ItalicTextDecorator.new(plain_text))
puts "Bold Italic Text: #{bold_italic_text.render}"
