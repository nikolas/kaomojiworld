require 'spec_helper'

describe "favorites/index" do
  before(:each) do
    assign(:favorites, [
      stub_model(Favorite,
        :moji_id => "Moji",
        :user_id => "User"
      ),
      stub_model(Favorite,
        :moji_id => "Moji",
        :user_id => "User"
      )
    ])
  end

  it "renders a list of favorites" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Moji".to_s, :count => 2
    assert_select "tr>td", :text => "User".to_s, :count => 2
  end
end
