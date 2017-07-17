defmodule Broadcaster.MessageFactory do
  defmacro __using__(_opts) do
    quote do
      def message_factory do
        %Broadcaster.Message{
          channel: "123ABC",
          body: "TODO"
        }
      end
    end
  end
end
