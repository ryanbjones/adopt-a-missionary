require 'rails_helper'

RSpec.describe "moderators/new", type: :view do
  before(:each) do
    assign(:moderator, Moderator.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :email_address => "MyString",
      :mission_id => 1,
      :username => "MyString",
      :password => "MyString"
    ))
  end

  it "renders new moderator form" do
    render

    assert_select "form[action=?][method=?]", moderators_path, "post" do

      assert_select "input#moderator_first_name[name=?]", "moderator[first_name]"

      assert_select "input#moderator_last_name[name=?]", "moderator[last_name]"

      assert_select "input#moderator_email_address[name=?]", "moderator[email_address]"

      assert_select "input#moderator_mission_id[name=?]", "moderator[mission_id]"

      assert_select "input#moderator_username[name=?]", "moderator[username]"

      assert_select "input#moderator_password[name=?]", "moderator[password]"
    end
  end
end
