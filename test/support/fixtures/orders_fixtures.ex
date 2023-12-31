defmodule Template176.OrdersFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Template176.Orders` context.
  """

  @doc """
  Generate a order.
  """
  def order_fixture(attrs \\ %{}) do
    {:ok, order} =
      attrs
      |> Enum.into(%{
        user_uuid: "7488a646-e31f-11e4-aace-600308960662",
        total_price: "120.5"
      })
      |> Template176.Orders.create_order()

    order
  end
end
