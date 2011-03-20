class Address
  attr_reader :street_address, :city, :state, :zip

  def initialize(street_address, city, state, zip)
    @street_address = street_address
    @city = city
    @state = state
    @zip = zip
  end
end
