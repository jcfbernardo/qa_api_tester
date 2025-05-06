defmodule QaApiTester.MixProject do
  use Mix.Project

  def project do
    [
      app: :qa_api_tester,
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {QaApiTester.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # Cliente HTTP para consumir APIs
      {:req, "~> 0.4.0"},
      # Parser JSON (usado por Req)
      {:jason, "~> 1.4"}
    ]
  end
end
