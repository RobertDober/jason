defmodule Jason.StreamingEventsTest do
  use Support.StreamingTestCase

  test "empty", %{collector: c} do
    Jason.stream(c, "[]") |> IO.inspect
    assert c.messages == [%Event{}, %Event{}]
  end
  
end
