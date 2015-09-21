defmodule PhoenixWebCarts.Repo.Migrations.CreateProduct do
  use Ecto.Migration

  def change do
    create table(:products) do
      add :prodcut_name, :string
      add :price, :integer
      add :stock, :integer

      timestamps
    end

  end
end
