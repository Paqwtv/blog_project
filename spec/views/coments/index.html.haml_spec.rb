require 'rails_helper'

RSpec.describe "coments/index", type: :view do
  before(:each) do
    assign(:coments, [
      Coment.create!(
        :author => "Author",
        :content => "MyText"
      ),
      Coment.create!(
        :author => "Author",
        :content => "MyText"
      )
    ])
  end

  it "renders a list of coments" do
    render
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
