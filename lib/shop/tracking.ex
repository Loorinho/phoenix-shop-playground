defmodule Shop.Tracking do
  # This is pretty much the interface for our tracking context

  # we can use it to interact with our schema

  # By convention, it has the same name as the folder which contains the schemas

  import Ecto.Query, warn: false

  alias Shop.Tracking.Budget
  alias Shop.Repo

  def create_budget(attrs \\ %{}) do
    %Budget{}
    |> Budget.changeset(attrs)
    |> Repo.insert()
  end

  def list_budgets do
    Repo.all(Budget)
  end
end
