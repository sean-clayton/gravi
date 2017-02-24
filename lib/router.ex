defmodule Gravi.Router do
  use Plug.Router

  plug :match
  plug :dispatch

  forward "/", to: Gravi.Generate
end
