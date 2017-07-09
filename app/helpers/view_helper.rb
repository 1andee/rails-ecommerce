module ViewHelper

  def out_of_stock
    raw("<aside class='soldout'>
      SOLD OUT!
      </aside>
      ")
  end

  def show_stars(rating)
    image_tag "#{rating}star.png"
  end

end
