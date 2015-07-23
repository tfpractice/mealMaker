require 'rails_helper'

RSpec.describe "recipes/edit", type: :view do
  before(:each) do
    @recipe = assign(:recipe, Recipe.create!(
      :name => "MyString",
      :description => "MyText",
      :prep => 1.5,
      :cook => 1.5,
      :user => nil
    ))
  end

  it "renders the edit recipe form" do
    render

    assert_select "form[action=?][method=?]", recipe_path(@recipe), "post" do

      assert_select "input#recipe_name[name=?]", "recipe[name]"

      assert_select "textarea#recipe_description[name=?]", "recipe[description]"

      assert_select "input#recipe_prep[name=?]", "recipe[prep]"

      assert_select "input#recipe_cook[name=?]", "recipe[cook]"

      assert_select "input#recipe_user_id[name=?]", "recipe[user_id]"
    end
  end
end
