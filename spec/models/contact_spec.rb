require 'rails_helper'

describe Contact do
  it 'requires name attribute' do
    expect(Contact.new).to_not be_valid
  end
end
