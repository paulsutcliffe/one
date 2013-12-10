module InicioHelper
  def google_maps_api_key
    "AIzaSyB4adC6YGa3w8HiW_FJpe5K1a_TD5k861U"
  end

  def google_api_url
    "http://maps.googleapis.com/maps/api/js"
  end

  def google_api_access
    "#{google_api_url}?key=#{google_maps_api_key}&libraries=geometry&sensor=false"
  end

  def google_maps_api
    content_tag(:script,:type => "text/javascript",:src => google_api_access) do
    end
  end

end
