defmodule Broadcaster.Router do
  use Broadcaster.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Broadcaster do
    resources "/messages", MessageController, only: [:create]
  end
end
