defmodule JsonPlaceholder.Posts.PostPostsPositiveTest do
  use ExUnit.Case
  import JsonPlaceholder.Helper

  test "POST /posts should create a new post" do
    url = base_url() <> "/posts"
    post_data = %{
      title: "Test Post",
      body: "This is a test post",
      userId: 1
    }

    response = Req.post!(url, json: post_data)

    assert response.status == 201
    assert response.body["title"] == "Test Post"
    assert response.body["body"] == "This is a test post"
  end
end
