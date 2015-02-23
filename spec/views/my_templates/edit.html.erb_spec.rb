require 'rails_helper'

RSpec.describe "my_templates/edit", type: :view do
  before(:each) do
    @my_template = assign(:my_template, MyTemplate.create!(
      :my_template_name => "MyText",
      :my_template_type => "MyString",
      :my_template_body => "MyText"
    ))
  end

  it "renders the edit my_template form" do
    render

    assert_select "form[action=?][method=?]", my_template_path(@my_template), "post" do

      assert_select "textarea#my_template_my_template_name[name=?]", "my_template[my_template_name]"

      assert_select "input#my_template_my_template_type[name=?]", "my_template[my_template_type]"

      assert_select "textarea#my_template_my_template_body[name=?]", "my_template[my_template_body]"
    end
  end
end
