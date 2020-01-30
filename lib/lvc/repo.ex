defmodule Lvc.Repo do
  use Ecto.Repo,
    otp_app: :lvc,
    adapter: Ecto.Adapters.Postgres
end
