require 'spec_helper'

describe "proyectos/show" do
  before(:each) do
    @proyecto = assign(:proyecto, stub_model(Proyecto,
      :titulo => "Titulo",
      :descripcion => "Descripcion",
      :objetivo => "Objetivo",
      :resultado => "Resultado"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Titulo/)
    rendered.should match(/Descripcion/)
    rendered.should match(/Objetivo/)
    rendered.should match(/Resultado/)
  end
end
