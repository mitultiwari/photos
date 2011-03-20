class Person < ActiveRecord::Base
  composed_of :address, :class_name => "Address",
              :mapping => [%w(street_address street_address),
                           %w(city city),
                           %w(state state),
                           %w(zip zip)]
end
