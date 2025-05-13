defmodule JsonPlaceholder.Posts.GetPostsNegativeTest do
  use ExUnit.Case
  import JsonPlaceholder.Helper

  test "GET /invalid_endpoint should return 404" do
    url = base_url() <> "/invalid_endpoint"
    response = Req.get(url)

    assert {:ok, %Req.Response{status: 404}} = response
  end
end
