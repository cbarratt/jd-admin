defmodule JdAdmin.PageController do
  use JdAdmin.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
