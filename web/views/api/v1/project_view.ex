defmodule JdAdmin.Api.ProjectView do
  use JdAdmin.Web, :view

  def render("index.json", %{projects: projects}) do
    %{projects: render_many(projects, __MODULE__, "project.json", as: :project)}
  end

  def render("show.json", %{project: project}) do
    %{project:
      %{
        id: project.id,
        title: project.title,
        slug: project.slug,
        excerpt: project.excerpt,
        body: project.body,
        created_at: project.inserted_at,
        updated_at: project.updated_at
      }
    }
  end

  def render("project.json", %{project: project}) do
    %{
      id: project.id,
      title: project.title,
      slug: project.slug,
      excerpt: project.excerpt,
      body: project.body,
      created_at: project.inserted_at,
      updated_at: project.updated_at
    }
  end
end
