ExUnit.start

Mix.Task.run "ecto.create", ~w(-r JdAdmin.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r JdAdmin.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(JdAdmin.Repo)

