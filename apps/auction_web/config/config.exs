use Mix.Config

config :auction,
  generators: [context_app: false]

config :auction_web, AuctionWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "7ePaVoW7LUBbrjBdcZgYI49g+lWWiLycaCxKo0OI6kN+Sgs0MQTUf9wP56b/0V5V",
  render_errors: [view: AuctionWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: AuctionWeb.PubSub, adapter: Phoenix.PubSub.PG2]


import_config("#{Mix.env()}.exs")
