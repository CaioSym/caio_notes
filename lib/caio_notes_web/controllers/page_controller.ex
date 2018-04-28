defmodule CaioNotesWeb.PageController do
  use CaioNotesWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
