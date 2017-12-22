require 'rails_helper'

RSpec.describe "posts/index", type: :view do
  before(:each) do
    assign(:posts, [
      Post.create!(
        :author => "Author",
        :body => "MyText",
        :name => "Name",
        :file => "File"
      ),
      Post.create!(
        :author => "Author",
        :body => "MyText",
        :name => "Name",
        :file => "File"
      )
    ])
  end

  it "renders a list of posts" do
    render
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "File".to_s, :count => 2
  end
end
