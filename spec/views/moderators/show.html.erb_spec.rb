require 'rails_helper'

RSpec.describe "moderators/show", type: :view do
  before(:each) do
    @moderator = assign(:moderator, Moderator.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :email_address => "Email Address",
      :mission_id => 2,
      :username => "Username",
      :password => "Password"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Email Address/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Username/)
    expect(rendered).to match(/Password/)
  end
end
