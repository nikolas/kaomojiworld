require 'spec_helper'

describe "favorites/edit" do
  before(:each) do
    @favorite = assign(:favorite, stub_model(Favorite,
      :moji_id => "MyString",
      :user_id => "MyString"
    ))
  end

  it "renders the edit favorite form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => favorites_path(@favorite), :method => "post" do
      assert_select "input#favorite_moji_id", :name => "favorite[moji_id]"
      assert_select "input#favorite_user_id", :name => "favorite[user_id]"
    end
  end
end
