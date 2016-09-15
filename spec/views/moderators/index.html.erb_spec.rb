require 'rails_helper'

RSpec.describe "moderators/index", type: :view do
  before(:each) do
    assign(:moderators, [
      Moderator.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :email_address => "Email Address",
        :mission_id => 2,
        :username => "Username",
        :password => "Password"
      ),
      Moderator.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :email_address => "Email Address",
        :mission_id => 2,
        :username => "Username",
        :password => "Password"
      )
    ])
  end

  it "renders a list of moderators" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email Address".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
  end
end
