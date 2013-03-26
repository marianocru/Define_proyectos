require 'spec_helper'

describe "meta/show" do
  before(:each) do
    @metum = assign(:metum, stub_model(Metum,
      :detalle => "Detalle",
      :estado => "Estado"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Detalle/)
    rendered.should match(/Estado/)
  end
end
