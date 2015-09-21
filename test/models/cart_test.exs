defmodule PhoenixWebCarts.CartTest do
  use PhoenixWebCarts.ModelCase

  alias PhoenixWebCarts.Cart

  @valid_attrs %{price: 42, prodcut_name: "some content", quantity: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Cart.changeset(%Cart{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Cart.changeset(%Cart{}, @invalid_attrs)
    refute changeset.valid?
  end
end
