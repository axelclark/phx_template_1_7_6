defmodule Template176Web.ErrorJSONTest do
  use Template176Web.ConnCase, async: true

  test "renders 404" do
    assert Template176Web.ErrorJSON.render("404.json", %{}) == %{errors: %{detail: "Not Found"}}
  end

  test "renders 500" do
    assert Template176Web.ErrorJSON.render("500.json", %{}) ==
             %{errors: %{detail: "Internal Server Error"}}
  end
end
