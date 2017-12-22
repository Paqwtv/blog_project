require 'rails_helper'

RSpec.describe "coments/show", type: :view do
  before(:each) do
    @coment = assign(:coment, Coment.create!(
      :author => "Author",
      :content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Author/)
    expect(rendered).to match(/MyText/)
  end
end
