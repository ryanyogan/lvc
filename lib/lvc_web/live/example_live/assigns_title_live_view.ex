defmodule LvcWeb.AssignsTitleLiveView do
  use Phoenix.LiveView

  def render(assigns) do
    ~L"""
    <div>
    <%= live_component(
        @socket,
        LvcWeb.AssignsTitleComponent,
        title: "This is a new title"
      )
    %>
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
