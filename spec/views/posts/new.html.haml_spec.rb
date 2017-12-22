require 'rails_helper'

RSpec.describe "posts/new", type: :view do
  before(:each) do
    assign(:post, Post.new(
      :author => "MyString",
      :body => "MyText",
      :name => "MyString",
      :file => "MyString"
    ))
  end

  it "renders new post form" do
    render

    assert_select "form[action=?][method=?]", posts_path, "post" do

      assert_select "input[name=?]", "post[author]"

      assert_select "textarea[name=?]", "post[body]"

      assert_select "input[name=?]", "post[name]"

      assert_select "input[name=?]", "post[file]"
    end
  end
end
