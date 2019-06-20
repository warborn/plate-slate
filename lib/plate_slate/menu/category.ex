defmodule PlateSlate.Menu.Category do
  use Ecto.Schema
  import Ecto.Changeset
  alias PlateSlate.Menu.Category

  schema "categories" do
    field :description, :string
    field :name, :string

    has_many :items, PlateSlate.Menu.Item

    timestamps()
  end

  @doc false
  def changeset(%Category{} = category, attrs) do
    category
    |> cast(attrs, [:name, :description])
    |> validate_required([:name, :description])
  end
end
