require 'test_helper'

class ContactTest < ActiveSupport::TestCase

  test "the validations" do
    c = Contact.new
    assert_equal false, c.valid?
    c.name = "foo"
    assert_equal true, c.valid?
  end

end
