defmodule JdAdmin.Router do
  use JdAdmin.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", JdAdmin do
    pipe_through :browser

    resources "/sessions", SessionController, only: [:new, :create, :delete]
    resources "/posts", PostController
    resources "/users", UserController

    get "/", PageController, :index
  end

  scope "/api/v1", JdAdmin.Api do
    pipe_through :api

    get "/posts", PostController, :index
    get "/posts/:id", PostController, :show
  end
end
