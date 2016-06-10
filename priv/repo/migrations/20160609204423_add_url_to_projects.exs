defmodule JdAdmin.Repo.Migrations.AddUrlToProjects do
  use Ecto.Migration

  def change do
    alter table(:projects) do
      add :project_url, :string
    end
  end
end
