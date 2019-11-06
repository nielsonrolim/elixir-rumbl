# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Rumbl.Repo.insert!(%Rumbl.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Rumbl.Accounts
alias Rumbl.Multimedia

# Users
Accounts.register_user(%{
  name: "José",
  username: "josevalim",
  password: "temppass",
  password_confirmation: "temppass"
})

Accounts.register_user(%{
  name: "Bruce",
  username: "redrepids",
  password: "temppass",
  password_confirmation: "temppass"
})

Accounts.register_user(%{
  name: "Chris",
  username: "mcord",
  password: "temppass",
  password_confirmation: "temppass"
})

# Categories
for category <- ~w(Action Drama Romance Comedy Sci-fi) do
  Multimedia.create_category!(category)
end
