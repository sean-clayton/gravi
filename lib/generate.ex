defmodule Gravi.Generate do
  import Plug.Conn

  def init(options), do: options

  def call(conn, _opts) do
    string = Enum.join(conn.params["glob"], "/")
    conn
    |> put_resp_content_type("image/svg+xml")
    |> put_resp_header("cache-control", "public, max-age=86400")
    |> send_resp(200, Graditar.generate(string))
  end
end
