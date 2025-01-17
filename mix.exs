defmodule GoogleProtos.MixProject do
  use Mix.Project

  def project do
    [
      app: :google_protos,
      name: "Google Protos",
      version: "0.1.0",
      elixir: "~> 1.4",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: "Protos by Google",
      package: package()
    ]
  end

  def application do
    []
  end

  defp deps do
    [
      {:protocol_buffers, "~> 0.5"},
      {:ex_doc, ">= 0.0.0", only: :dev},
    ]
  end

  defp package do
    [
      maintainers: ["demilleTech"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/demilletech/elixir-google-protos"},
      files: ~w(mix.exs README.md lib config LICENSE)
    ]
  end
end
