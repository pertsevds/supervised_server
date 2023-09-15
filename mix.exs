defmodule SupervisedServer.MixProject do
  use Mix.Project

  def project do
    [
      app: :supervised_server,
      version: "0.1.0",
      elixir: "~> 1.11",
      description: description(),
      package: package(),
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      # extra_applications: [:logger]
    ]
  end

  defp description do
    "SupervisedServer is a start_link/1 + GenServer behaviour."
  end

  defp package do
    [
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => "https://github.com/pertsevds/supervised_server"}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:credo, "~> 1.7", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.30", only: :dev, runtime: false}
    ]
  end
end
