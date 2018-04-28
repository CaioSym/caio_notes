# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :caio_notes,
  ecto_repos: [CaioNotes.Repo]

# Configures the endpoint
config :caio_notes, CaioNotesWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "8RD8GICnAJAocALgX+URuO07QEoZLxaeOUwpEJmSVFFq7FC1RXZhKqQQu9i72H7V",
  render_errors: [view: CaioNotesWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: CaioNotes.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
