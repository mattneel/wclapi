# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :wclapi, Wclapi.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "vGxxIWQNYcBRZIRFLstrUqKZyFeSkvoxxizyChlmmcQm4mEX3VK7NA0ldJkfbalz",
  render_errors: [view: Wclapi.Web.ErrorView, accepts: ~w(json)],
  pubsub: [name: Wclapi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :hound, browser: "chrome"
# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
