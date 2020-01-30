defmodule LvcWeb.Router do
  use LvcWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug Phoenix.LiveView.Flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", LvcWeb do
    pipe_through :browser

    get "/", PageController, :index

    live "/examples/static-title", StaticTitleLiveView
    live "/examples/assigns-title", AssignsTitleLiveView
    live "/examples/stateless-title", StatelessComponentLiveView
    live "/examples/stateful-title", StatefulComponentLiveView
  end
end
