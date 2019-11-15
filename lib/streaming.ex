defmodule Jason.Streaming do
  @moduledoc """
  Defines the behaviour of a streaming handler to be passed into `Jason.stream/3`
  """
  @type streaming_handler_t :: (Jason.Streaming.Event.t -> any())
  @callback receive_event(Jason.Streaming.Event.t) :: any()

end
