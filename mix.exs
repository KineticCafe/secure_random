defmodule SecureRandom.Mixfile do
  use Mix.Project

  def project do
    [
      app: :secure_random,
      version: "0.6.0",
      elixir: "~> 1.15",
      deps: deps(),
      description: "A convienance library based on Ruby's SecureRandom",
      package: package()
    ]
  end

  def application do
    [applications: [:logger, :crypto]]
  end

  defp package do
    [
      maintainers: ["Patrick Robertson"],
      licenses: ["Apache 2.0"],
      links: %{github: "https://github.com/patricksrobertson/secure_random.ex"}
    ]
  end

  def deps do
    [{:ex_doc, "~> 0.34.2", only: :dev}]
  end
end
