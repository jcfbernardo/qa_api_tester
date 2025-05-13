defmodule JsonPlaceholder.Posts.GetPostsPositiveTest do
  use ExUnit.Case
  import JsonPlaceholder.Helper

  test "GET /posts should return a list of posts" do
    url = base_url() <> "/posts"
    response = Req.get!(url)

    assert response.status == 200
    assert is_list(response.body)
    assert length(response.body) > 0
  end

  test "GET /posts/1 should return post with ID 1" do
    url = base_url() <> "/posts/1"
    response = Req.get!(url)

    assert response.status == 200
    assert response.body["id"] == 1
    assert is_binary(response.body["title"])
  end
end
