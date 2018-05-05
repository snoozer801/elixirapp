defmodule Chatter.Auth do
  import Comeonin.Pbkdf2, only: [checkpw: 2, dummy_checkpw: 0]
  import Plug.Conn

  defp login(conn, user) do
    conn
    |> Guardian.Plug.sign_in(user, :access)
  end

  
  end
end
