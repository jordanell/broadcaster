defmodule Broadcaster.Factory do
  use ExMachina.Ecto, repo: Broadcaster.Repo
  use Broadcaster.MessageFactory
end
