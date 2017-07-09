module ViewHelper

  def show_stars(rating)
    image_tag "#{rating}star.png"
  end

end
