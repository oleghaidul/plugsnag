defmodule Plugsnag.Mixfile do
  use Mix.Project

  def project do
    [app: :plugsnag,
     version: "1.3.0",
     elixir: "~> 1.0",
     package: package(),
     description: """
       Bugsnag reporter for Elixir's Plug
     """,
     deps: deps(),
     dialyzer: [plt_add_deps: :project]
   ]
  end

  def package do
    [contributors: ["Jared Norman", "Andrew Harvey"],
     maintainers: ["Andrew Harvey"],
     licenses: ["MIT"],
     links: %{github: "https://github.com/jarednorman/plugsnag"}]
  end

  def application do
    [applications: []]
  end

  defp deps do
    [{:bugsnag, github: 'oleghaidul/bugsnag-elixir', branch: '1.5'},
     {:plug, "~> 1.0"},
     {:ex_doc, ">= 0.0.0", only: :dev},
     {:dialyxir, "~> 0.3.5", only: [:dev]}
    ]
  end
end
