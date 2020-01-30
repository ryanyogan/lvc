defmodule LvcWeb.PageController do
  use LvcWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
