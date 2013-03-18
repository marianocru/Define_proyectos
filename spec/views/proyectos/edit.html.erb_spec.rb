require 'spec_helper'

describe "proyectos/edit" do
  before(:each) do
    @proyecto = assign(:proyecto, stub_model(Proyecto,
      :titulo => "MyString",
      :descripcion => "MyString",
      :objetivo => "MyString",
      :resultado => "MyString"
    ))
  end

  it "renders the edit proyecto form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", proyecto_path(@proyecto), "post" do
      assert_select "input#proyecto_titulo[name=?]", "proyecto[titulo]"
      assert_select "input#proyecto_descripcion[name=?]", "proyecto[descripcion]"
      assert_select "input#proyecto_objetivo[name=?]", "proyecto[objetivo]"
      assert_select "input#proyecto_resultado[name=?]", "proyecto[resultado]"
    end
  end
end
