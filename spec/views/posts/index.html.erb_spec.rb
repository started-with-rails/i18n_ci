require 'rails_helper'

RSpec.describe "posts/index", type: :view do
  before(:each) do
    assign(:posts, [
      Post.create!(
        title: "Title 1",
        description: "MyText",
        status: true
      ),
      Post.create!(
        title: "Title 2",
        description: "MyText",
        status: false
      )
    ])
  end

  it "renders a list of posts" do
    render
    assert_select "tr>td", text: "Title 1".to_s, count: 1
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: true.to_s, count: 1
  end
end
