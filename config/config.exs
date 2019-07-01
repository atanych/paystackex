use Mix.Config

config :paystackex, access_token: System.get_env("PAYSTACKEX_ACCESS_TOKEN")

config :logger, :console,
       format: "$date $time $metadata[$level] $message\n",
       metadata: [:sdk, :method, :url]
