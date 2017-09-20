module ApplicationHelper
  def choose_img(pic)
    return image_tag(pic.picture, alt: user.name) if pic.picture?

    unless pic.picture.blank?
      img_url = pic.image_url
    else
      img_url = 'no_image.png'
    end
    image_tag(img_url, alt: user.name)
  end
end

