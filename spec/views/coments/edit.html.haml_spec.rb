require 'rails_helper'

RSpec.describe "coments/edit", type: :view do
  before(:each) do
    @coment = assign(:coment, Coment.create!(
      :author => "MyString",
      :content => "MyText"
    ))
  end

  it "renders the edit coment form" do
    render

    assert_select "form[action=?][method=?]", coment_path(@coment), "post" do

      assert_select "input[name=?]", "coment[author]"

      assert_select "textarea[name=?]", "coment[content]"
    end
  end
end
