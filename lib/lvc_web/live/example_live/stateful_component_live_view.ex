defmodule LvcWeb.StatefulComponentLiveView do
  use Phoenix.LiveView

  def render(assigns) do
    ~L"""
    <div>
      <%= live_component(
          @socket,
          LvcWeb.StatefulComponent,
          id: "#title",
          title: @title
        )
      %>
    </div>
    """
  end

  def mount(_params, _session, socket) do
    {:ok, assign(socket, title: "Initial Title")}
  end

  def handle_params(_params, _uri, socket) do
    {:noreply, socket}
  end
end
