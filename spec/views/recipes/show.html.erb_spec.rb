require 'rails_helper'

RSpec.describe "recipes/show", type: :view do
  before(:each) do
    @recipe = assign(:recipe, Recipe.create!(
      :name => "Name",
      :description => "MyText",
      :prep => 1.5,
      :cook => 1.5,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(//)
  end
end
