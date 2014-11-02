module MicropostsHelper
 def wrap(content)
   sanitize(raw(wrap_long_string(content)))
 end

 private
  def wrap_long_string(content, width=30)
    zero_width_space = "&#8203;"
    content.chars.each_slice(width).map(&:join).join(zero_width_space)
  end
end
