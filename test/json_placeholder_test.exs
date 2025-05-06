defmodule ApiTester.JsonPlaceholderTest do
  use ExUnit.Case

  setup_all do
    url = "https://jsonplaceholder.typicode.com/"
    {:ok, base_url: url}
  end

  describe "GET Endpoints" do
    test "Should return POST with ID 1", %{base_url: url} do
      response = Req.get!(url <> "posts/1")

      assert response.status == 200
      assert response.body["id"] == 1
      assert is_binary(response.body["title"])
    end

    test "Invalid resource should return 404", %{base_url: url} do
      response = Req.get(url <> "invalid")

      assert {:ok, %{status: 404}} = response
    end
  end
end
