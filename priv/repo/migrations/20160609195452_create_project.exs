defmodule JdAdmin.Repo.Migrations.CreateProject do
  use Ecto.Migration

  def change do
    create table(:projects) do
      add :title, :string
      add :slug, :string
      add :excerpt, :string
      add :body, :text

      timestamps
    end

  end
end
