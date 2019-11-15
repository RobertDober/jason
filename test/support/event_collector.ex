defmodule Support.EventCollector do


  @behaviour Jason.Streaming

  def start_link do
    Agent.start_link(fn -> [] end, name: __MODULE__)
    __MODULE__
  end

  def messages do
     Agent.get(__MODULE__, &(&1))
  end

  
  def consume_event(event) do
    Agent.update(__MODULE__, fn messages -> [event|messages] end)
  end
end
