defmodule Broadcaster.MessageTest do
  use Broadcaster.ModelCase

  alias Broadcaster.Message

  test "changeset with valid attributes" do
    attrs = %{channel: "123ABC", body: "Hello"}

    changeset = Message.changeset(%Message{}, attrs)

    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    attrs = %{}

    changeset = Message.changeset(%Message{}, attrs)

    refute changeset.valid?
  end
end
