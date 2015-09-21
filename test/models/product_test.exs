defmodule PhoenixWebCarts.ProductTest do
  use PhoenixWebCarts.ModelCase

  alias PhoenixWebCarts.Product

  @valid_attrs %{price: 42, prodcut_name: "some content", stock: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Product.changeset(%Product{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Product.changeset(%Product{}, @invalid_attrs)
    refute changeset.valid?
  end
end
