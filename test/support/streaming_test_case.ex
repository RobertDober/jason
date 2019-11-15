defmodule Support.StreamingTestCase do

  defmacro __using__(_opts) do
    quote do
      use ExUnit.Case, async: false

      alias Jason.Streaming.Event 

      setup do
        {:ok, collector: Support.EventCollector.start_link}
      end
    end
  end
  
end
