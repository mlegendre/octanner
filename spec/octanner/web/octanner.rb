class Octanner
  def landing_page
    @landing_page ||= OctLandingPage.new
  end

  def utilities
    @utilities ||= Utilities.new
  end

end
