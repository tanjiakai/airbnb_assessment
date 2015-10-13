helpers do
  def current_property(id)
    @current_property = Property.find(id)
  end
end