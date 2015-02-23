require 'rails_helper'

RSpec.describe "my_templates/new", type: :view do
  before(:each) do
    assign(:my_template, MyTemplate.new(
      :my_template_name => "MyText",
      :my_template_type => "MyString",
      :my_template_body => "MyText"
    ))
  end

  it "renders new my_template form" do
    render

    assert_select "form[action=?][method=?]", my_templates_path, "post" do

      assert_select "textarea#my_template_my_template_name[name=?]", "my_template[my_template_name]"

      assert_select "input#my_template_my_template_type[name=?]", "my_template[my_template_type]"

      assert_select "textarea#my_template_my_template_body[name=?]", "my_template[my_template_body]"
    end
  end
end
