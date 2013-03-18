require 'spec_helper'

describe "proyectos/index" do
  before(:each) do
    assign(:proyectos, [
      stub_model(Proyecto,
        :titulo => "Titulo",
        :descripcion => "Descripcion",
        :objetivo => "Objetivo",
        :resultado => "Resultado"
      ),
      stub_model(Proyecto,
        :titulo => "Titulo",
        :descripcion => "Descripcion",
        :objetivo => "Objetivo",
        :resultado => "Resultado"
      )
    ])
  end

  it "renders a list of proyectos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Titulo".to_s, :count => 2
    assert_select "tr>td", :text => "Descripcion".to_s, :count => 2
    assert_select "tr>td", :text => "Objetivo".to_s, :count => 2
    assert_select "tr>td", :text => "Resultado".to_s, :count => 2
  end
end
