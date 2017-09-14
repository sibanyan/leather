module ApplicationHelper
  def resource_type_icon(type)
    # text,image,movie
    image_tag "ic_#{type.to_s.downcase}.png"
  end
end
