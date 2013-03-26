require 'spec_helper'

describe "meta/new" do
  before(:each) do
    assign(:metum, stub_model(Metum,
      :detalle => "MyString",
      :estado => "MyString"
    ).as_new_record)
  end

  it "renders new metum form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", meta_path, "post" do
      assert_select "input#metum_detalle[name=?]", "metum[detalle]"
      assert_select "input#metum_estado[name=?]", "metum[estado]"
    end
  end
end
