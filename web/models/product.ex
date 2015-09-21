defmodule PhoenixWebCarts.Product do
  use PhoenixWebCarts.Web, :model

  schema "products" do
    field :prodcut_name, :string
    field :price, :integer
    field :stock, :integer

    timestamps
  end

  @required_fields ~w(prodcut_name price stock)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
