defmodule Broadcaster.MessageViewTest do
  use Broadcaster.ModelCase

  import Broadcaster.Factory

  alias Broadcaster.MessageView

  test "message_json" do
    message = insert(:message)

    rendered_message = MessageView.message_json(message)

    assert rendered_message == %{
      channel: message.channel,
      body: message.body,
      inserted_at: message.inserted_at,
      updated_at: message.updated_at
    }
  end

  test "create.json" do
    message = insert(:message)

    rendered_message = MessageView.render("create.json", message: message)

    assert rendered_message == MessageView.message_json(message)
  end
end