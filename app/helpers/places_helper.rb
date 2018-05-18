module PlacesHelper
    def current_place
        place = current_user.places.first
        if place.blank?
            return nil
        else
            return place
        end
    end
end
