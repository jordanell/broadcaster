defmodule Broadcaster.MessageController do
  require Logger

  use Broadcaster.Web, :controller

  alias Broadcaster.Message

  def create(conn, params) do
    changeset = Message.changeset(%Message{}, params)

    {:ok, message} = Repo.insert(changeset)

    conn
    |> put_status(:created)
    |> render("create.json", message: message)
  end
end
