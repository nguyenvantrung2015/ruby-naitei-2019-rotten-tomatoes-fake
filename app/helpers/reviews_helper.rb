module ReviewsHelper
  def reviewed? user, medium
    user.reviewed? medium
  end
end
