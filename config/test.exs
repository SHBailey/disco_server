use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :disco_server, DiscoServerWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :disco_server, DiscoServer.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "disco_server_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# Do not use the below config in production, it will make the hashing algorithim much weaker. It is here only to speed up testing.
config :argon2_elixir,
  t_cost: 2,
  m_cost: 12
