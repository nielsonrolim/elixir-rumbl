defmodule Rumbl.Accounts do
  @moduledoc """
  The Accounts context.
  """

  alias Rumbl.Accounts.User

  def list_users do
    [
      %User{id: "1", name: "José Valim", username: "josevalim"},
      %User{id: "2", name: "Bruce Tate", username: "redrapids"},
      %User{id: "3", name: "Chris McCord", username: "chrismccord"},
      %User{id: "4", name: "Nielson Rolim", username: "nielsonrolim"}
    ]
  end

  def get_user(id) do
    Enum.find(list_users(), fn map -> map.id == id end)
  end

  def get_user_by(params) do
    Enum.find(list_users(), fn map ->
      Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
    end)
  end
end
