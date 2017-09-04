defmodule DiscoServerWeb.PageController do
  use DiscoServerWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
