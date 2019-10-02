use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :apr, AprWeb.Endpoint,
  http: [port: 4002],
  server: false,
  live_view: [
    signing_salt: "saltysalt"
  ]

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :apr, Apr.Repo,
  database: "aprd_test",
  username: System.get_env("DB_USER") || "postgres",
  password: System.get_env("DB_PASSWORD") || "postgres",
  hostname: System.get_env("DB_HOST") || "localhost",
  adapter: Ecto.Adapters.Postgres,
  pool: Ecto.Adapters.SQL.Sandbox
