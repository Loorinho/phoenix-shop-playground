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

  def render(assigns) do
    ~H"""
    <div class="container mx-auto p-4">
      <h1>Budget List</h1>

      <.table id="budgets-table" rows={@budgets}>
        <:col :let={budget} label="Name">
          {budget.name}
        </:col>
        <:col :let={budget} label="Description">
          {budget.description}
        </:col>
        <:col :let={budget} label="Start Date">
          {budget.start_date}
        </:col>

        <:col :let={budget} label="End Date">
          {budget.end_date}
        </:col>
      </.table>
    </div>
    """
  end
end
