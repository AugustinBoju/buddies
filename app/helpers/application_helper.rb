module ApplicationHelper

  def render_navbar
    render 'shared/navbar' unless home
  end

  def set_image_for_checkbox(text)
    case text.downcase
    when "hiking"
      image_path 'interests/hike.jpg'
    when "surf"
      image_path 'interests/surf.jpg'
    when "wild life"
      image_path 'interests/wildlife.jpg'
    when "yoga"
      image_path 'interests/yoga.jpg'
    when "beach"
      image_path 'interests/beach.jpg'
    when "mountains"
      image_path 'interests/mountains.jpg'
    when "photography"
      image_path 'interests/photo.jpg'
    when "natural park"
      image_path 'interests/naturalpark.jpg'
    when "cities"
      image_path 'interests/cities.jpg'
    when "jungle"
      image_path 'interests/jungle.jpg'
    when "ocean"
      image_path 'interests/ocean.jpg'
    when "spirituality"
      image_path 'interests/spirituality.jpg'
    when "bivouac"
      image_path 'interests/bivouac.jpg'
    when "canyon"
      image_path 'interests/canyon.jpg'



    else
      "https://unsplash.it/200/300?image=#{rand(1..100)}"
    end

  end

  private

  def home
    controller_name == 'pages' && action_name == 'home'
  end
end
