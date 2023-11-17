require 'rails_helper'

RSpec.describe Addy, type: :model do
  it 'should require entries for street number, street name, city, state, and zip.' do
    example = Account.address.create(street_number:123, street_name:'Peachtree Street', city:'Atlanta', state:'Georgia', zip:30103)
    expect(example).to be_valid
    end
end
