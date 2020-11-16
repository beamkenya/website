defmodule ElixirKenya.Repo do
  use Ecto.Repo,
    otp_app: :elixir_kenya,
    adapter: Ecto.Adapters.Postgres
end
