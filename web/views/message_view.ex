defmodule Broadcaster.MessageView do
  use Broadcaster.Web, :view

  def render("create.json", %{message: message}) do
    message_json(message)
  end

  def message_json(message) do
    %{
      channel: message.channel,
      body: message.body,
      inserted_at: message.inserted_at,
      updated_at: message.updated_at
    }
  end
end