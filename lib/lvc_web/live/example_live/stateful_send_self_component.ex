defmodule LvcWeb.StatefulSendSelfComponent do
  use Phoenix.LiveComponent
  use Phoenix.HTML

  @name __MODULE__

  def render(assigns) do
    ~L"""
    <h2 id="title"><%= @title %></h2>
    <div>
      <%= f = form_for :heading, "#", [phx_submit: :set_title, phx_target: "#title"] %>
        <%= label f, :title %>
        <%= text_input f, :title %>
        <div>
          <%= submit "Set", phx_disable_with: "Setting..." %>
        </div>
      </form>
    </div>
    """
  end

  def mount(socket) do
    {:ok, socket}
  end

  def update(%{title: title}, socket) do
    {:ok, assign(socket, title: title)}
  end

  def handle_event(
        "set_title",
        %{"heading" => %{"title" => updated_title}},
        socket
      ) do
    send(
      self(),
      {@name, :updated_title, %{title: updated_title}}
    )

    {:noreply, socket}
  end
end
