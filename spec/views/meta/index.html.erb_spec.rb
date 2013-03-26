require 'spec_helper'

describe "meta/index" do
  before(:each) do
    assign(:meta, [
      stub_model(Metum,
        :detalle => "Detalle",
        :estado => "Estado"
      ),
      stub_model(Metum,
        :detalle => "Detalle",
        :estado => "Estado"
      )
    ])
  end

  it "renders a list of meta" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Detalle".to_s, :count => 2
    assert_select "tr>td", :text => "Estado".to_s, :count => 2
  end
end
