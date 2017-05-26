module ApplicationHelper

  def render_navbar
    render 'shared/navbar' unless home
  end

  def set_image_for_checkbox(text)
    case text.downcase
    when "hiking"
      image_path 'hike.jpg'
    when "surf"
      image_path 'surf.jpg'
    when "wild life"
      image_path 'wildlife.jpg'
    when "yoga"
      image_path 'yoga.jpg'
    when "beach"
      image_path 'beach.jpg'
    when "mountains"
      image_path 'mountains.jpg'
    when "photography"
      image_path 'photo.jpg'
    when "natural park"
      image_path 'naturalpark.jpg'

    else
      "https://unsplash.it/200/300?image=#{rand(1..100)}"
    end

  end

  private

  def home
    controller_name == 'pages' && action_name == 'home'
  end
end
