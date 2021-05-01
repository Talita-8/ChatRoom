defmodule ChatWeb.PageController do
  use ChatWeb, :controller

  alias Chat.Chats

  def index(conn, _params) do
    messages = Chat.list_messages
    render(conn, "index.html", messages:messages)
  end
end
