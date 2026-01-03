defmodule Shop.Tracking.Budget do
  use Ecto.Schema
  import Ecto.Changeset

  schema "budgets" do
    field :name, :string
    field :description, :string
    field :start_date, :date
    field :end_date, :date

    belongs_to :creator, Shop.Accounts.User

    timestamps()
  end

  def changeset(budget, attrs) do
    budget
    |> cast(attrs, [:name, :description, :start_date, :end_date, :creator_id])
    |> validate_required([:name, :start_date, :end_date, :creator_id, :description])
    |> validate_length(:name, max: 100)
    |> validate_length(:description, max: 250)
  end
end
