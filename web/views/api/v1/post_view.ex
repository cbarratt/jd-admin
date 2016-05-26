defmodule JdAdmin.Api.PostView do
  use JdAdmin.Web, :view

  def render("index.json", %{posts: posts}) do
    %{posts: render_many(posts, __MODULE__, "post.json", as: :post)}
  end

  def render("show.json", %{post: post}) do
    %{post:
      %{
        id: post.id,
        title: post.title,
        slug: post.slug,
        excerpt: post.excerpt,
        body: post.body
      }
    }
  end

  def render("post.json", %{post: post}) do
    %{
      id: post.id,
      title: post.title,
      slug: post.slug,
      excerpt: post.excerpt,
      body: post.body
    }
  end
end
