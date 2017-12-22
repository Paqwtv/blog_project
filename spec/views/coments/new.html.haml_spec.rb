require 'rails_helper'

RSpec.describe "coments/new", type: :view do
  before(:each) do
    assign(:coment, Coment.new(
      :author => "MyString",
      :content => "MyText"
    ))
  end

  it "renders new coment form" do
    render

    assert_select "form[action=?][method=?]", coments_path, "post" do

      assert_select "input[name=?]", "coment[author]"

      assert_select "textarea[name=?]", "coment[content]"
    end
  end
end
