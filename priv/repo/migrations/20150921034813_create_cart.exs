defmodule PhoenixWebCarts.Repo.Migrations.CreateCart do
  use Ecto.Migration

  def change do
    create table(:carts) do
      add :prodcut_name, :string
      add :price, :integer
      add :quantity, :integer

      timestamps
    end

  end
end
