require 'spec_helper'

describe "favorites/new" do
  before(:each) do
    assign(:favorite, stub_model(Favorite,
      :moji_id => "MyString",
      :user_id => "MyString"
    ).as_new_record)
  end

  it "renders new favorite form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => favorites_path, :method => "post" do
      assert_select "input#favorite_moji_id", :name => "favorite[moji_id]"
      assert_select "input#favorite_user_id", :name => "favorite[user_id]"
    end
  end
end
