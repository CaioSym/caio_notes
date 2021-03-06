defmodule CaioNotesWeb.Router do
  use CaioNotesWeb, :router

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

  scope "/", CaioNotesWeb do
    pipe_through :browser # Use the default browser stack

    get "/", NoteController, :index

    resources "/notes", NoteController, only: [:create, :update, :delete]

  end

  # Other scopes may use custom stacks.
  # scope "/api", CaioNotesWeb do
  #   pipe_through :api
  # end
end
