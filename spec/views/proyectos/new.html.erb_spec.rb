require 'spec_helper'

describe "proyectos/new" do
  before(:each) do
    assign(:proyecto, stub_model(Proyecto,
      :titulo => "MyString",
      :descripcion => "MyString",
      :objetivo => "MyString",
      :resultado => "MyString"
    ).as_new_record)
  end

  it "renders new proyecto form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", proyectos_path, "post" do
      assert_select "input#proyecto_titulo[name=?]", "proyecto[titulo]"
      assert_select "input#proyecto_descripcion[name=?]", "proyecto[descripcion]"
      assert_select "input#proyecto_objetivo[name=?]", "proyecto[objetivo]"
      assert_select "input#proyecto_resultado[name=?]", "proyecto[resultado]"
    end
  end
end
