defmodule Shop.Repo.Migrations.CreateBudget do
  use Ecto.Migration

  def change do
    create table(:budgets) do
      add :name, :string, null: false
      add :description, :string, null: false
      add :start_date, :date, null: false
      add :end_date, :date, null: false

      add :creator_id, references(:users, on_delete: :nothing), null: false

      timestamps()
    end

    # create index(:budgets, [:name])
    create index(:budgets, [:creator_id])
  end
end
