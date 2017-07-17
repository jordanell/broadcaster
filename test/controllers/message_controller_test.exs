defmodule Broadcaster.MessageControllerTest do
  use Broadcaster.ConnCase

  test "#create renders the newly created message" do
    conn = build_conn()

    attrs = %{channel: "123ABC", body: "Hello"}

    conn = post(conn, message_path(conn, :create), attrs)

    assert json_response(conn, 201)
  end
end