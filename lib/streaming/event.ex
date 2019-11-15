defmodule Jason.Streaming.Event do
  @moduledoc """
  Represents all Events that are emitted by the Streaming Parser `Jason.StreamingParser`
  """

  defstruct event: nil, object: nil, payload: "", position: 0
  @type event_type :: :start | :end
  @type event_type? :: event_type() | nil
  @type object_type :: :list | :string | :object | :number
  @type object_type? :: object_type() | nil
  @type t :: %__MODULE__{event: event_type?(), object: object_type?(), payload: String.t, position: non_neg_integer()}
end

