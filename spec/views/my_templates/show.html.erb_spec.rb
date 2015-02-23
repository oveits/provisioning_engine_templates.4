require 'rails_helper'

RSpec.describe "my_templates/show", type: :view do
  before(:each) do
    @my_template = assign(:my_template, MyTemplate.create!(
      :my_template_name => "MyText",
      :my_template_type => "My Template Type",
      :my_template_body => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/My Template Type/)
    expect(rendered).to match(/MyText/)
  end
end
