defmodule Gravi.Mixfile do
  use Mix.Project

  def project do
    [app: :gravi,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    [applications: [:cowboy, :plug],
    mod: {Gravi, []},
    env: [cowboy_port: 8080]]
  end

  defp deps do
    [
      {:cowboy, "~> 1.0"},
      {:plug, "~> 1.0"},
      {:graditar, "~> 2.0"},
    ]
  end
end
