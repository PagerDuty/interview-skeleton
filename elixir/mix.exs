defmodule Pagerduty.MixProject do
  use Mix.Project

  def project do
    [
      app: :pagerduty_client,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      escript: escript()  # Use "mix escript.build" from the command line to compile the app
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      applications: [:httpoison],
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:httpoison, "~> 1.8"},
      {:json, "~> 1.4"}
    ]
  end

  defp escript do
    [
      main_module: PagerdutyClient
    ]
  end
end
