require 'spec_helper'

describe "meta/edit" do
  before(:each) do
    @metum = assign(:metum, stub_model(Metum,
      :detalle => "MyString",
      :estado => "MyString"
    ))
  end

  it "renders the edit metum form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", metum_path(@metum), "post" do
      assert_select "input#metum_detalle[name=?]", "metum[detalle]"
      assert_select "input#metum_estado[name=?]", "metum[estado]"
    end
  end
end
