require 'rails_helper'

describe "contacts/index" do
  before(:each) do
    assign(:contacts, [
      stub_model(Contact,
        :name => "Name",
        :address => "Address",
        :city => "City",
        :state => "State",
        :postal_code => "Postal Code",
        :phone => "Phone"
      ),
      stub_model(Contact,
        :name => "Name",
        :address => "Address",
        :city => "City",
        :state => "State",
        :postal_code => "Postal Code",
        :phone => "Phone"
      )
    ])
  end

  it "renders a list of contacts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Postal Code".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
  end
end
