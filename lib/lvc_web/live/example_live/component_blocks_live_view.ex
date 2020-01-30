defmodule LvcWeb.ComponentBlocksLiveView do
  use Phoenix.LiveView

  def render(assigns) do
    ~L"""
    <div>
      <%= live_component @socket,
                         LvcWeb.ComponentBlocksComponent,
                         title: "Title" do %>
        <h1 style="color: orange;">
          <%= @title_passed_from_component %> came from a child component
        </h1>
      <% end %>
    </div>
    """
  end

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def handle_params(_params, _uri, socket) do
    {:noreply, socket}
  end
end
