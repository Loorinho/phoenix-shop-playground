defmodule Shop.Tracking.Budget do
  use Ecto.Schema
  import Ecto.Changeset

  schema "budgets" do
    field :name, :string
    field :description, :string
    field :start_date, :date
    field :end_date, :date

    timestamps()
  end

  def changeset(budget, attrs) do
    budget
    |> cast(attrs, [:name, :description, :start_date, :end_date])
    |> validate_required([:name, :start_date, :end_date])
    |> validate_length(:name, max: 100)
    |> validate_length(:description, max: 250)
  end
end
