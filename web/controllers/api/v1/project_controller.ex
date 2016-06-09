defmodule JdAdmin.Api.ProjectController do
  use JdAdmin.Web, :controller

  alias JdAdmin.Project

  def index(conn, _params) do
    render(conn, "index.json", projects: Repo.all(Project))
  end

  def show(conn, %{"id" => id}) do
    render(conn, "show.json", project: Repo.get_by!(Project, slug: id))
  end
end
