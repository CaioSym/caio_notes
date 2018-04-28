# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     CaioNotes.Repo.insert!(%CaioNotes.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias CaioNotes.Notes.Note
alias CaioNotes.Repo

%Note{contents: "I'm a happy note", color: "#FF00FF"} |> Repo.insert!
%Note{contents: "I'm another note", color: "#0000FF"} |> Repo.insert!