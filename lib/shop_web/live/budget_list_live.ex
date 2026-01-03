defmodule ShopWeb.BudgetListLive do
  use ShopWeb, :live_view

  alias Shop.Tracking

  def mount(_params, _session, socket) do
    budgets = Tracking.list_budgets()

    socket =
      socket
      |> assign(budgets: budgets)

    {:ok, socket}
  end
end
