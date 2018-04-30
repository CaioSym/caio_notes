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

%Note{contents: "I'm a happy note", color: "#B4CCE1"} |> Repo.insert!
%Note{contents: "I'm another note", color: "#2BADE4"} |> Repo.insert!
%Note{contents: "I'm another note 2", color: "#FED84A"} |> Repo.insert!
%Note{contents: "I'm another note 3", color: "#90909A"} |> Repo.insert!
%Note{contents: "I'm another note 4", color: "#D6D4DF"} |> Repo.insert!
%Note{contents: "I'm another note 5", color: "#2BADE4"} |> Repo.insert!
%Note{contents: "I'm another note 6", color: "#90909A"} |> Repo.insert!
%Note{contents: "I'm another note 7", color: "#FED84A"} |> Repo.insert!
%Note{contents: "I'm another note 8", color: "#D6D4DF"} |> Repo.insert!
%Note{contents: "I'm another note 9", color: "#FED84A"} |> Repo.insert!