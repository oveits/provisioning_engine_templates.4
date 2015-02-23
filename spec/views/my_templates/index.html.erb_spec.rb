require 'rails_helper'

RSpec.describe "my_templates/index", type: :view do
  before(:each) do
    assign(:my_templates, [
      MyTemplate.create!(
        :my_template_name => "MyText",
        :my_template_type => "My Template Type",
        :my_template_body => "MyText"
      ),
      MyTemplate.create!(
        :my_template_name => "MyText",
        :my_template_type => "My Template Type",
        :my_template_body => "MyText"
      )
    ])
  end

  it "renders a list of my_templates" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "My Template Type".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
