require 'rails_helper'

describe Contact do
  it 'requires name attribute' do
    expect(Contact.new).to_not be_valid
    expect(Contact.new(name: 'foo')).to be_valid
  end
end
