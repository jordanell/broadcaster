defmodule Broadcaster.Message do
  use Broadcaster.Web, :model

  import Ecto.Changeset

  schema "messages" do
    field :channel
    field :body

    timestamps()
  end

  def changeset(message, params \\ %{}) do
    message
    |> cast(params, [:channel, :body])
    |> validate_required([:channel, :body])
  end
end
