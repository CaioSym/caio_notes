defmodule CaioNotes.Notes.Note do
  use Ecto.Schema
  import Ecto.Changeset


  schema "notes" do
    field :color, :string
    field :contents, :string

    timestamps()
  end

  @doc false
  def changeset(note, attrs) do
    note
    |> cast(attrs, [:contents, :color])
    |> validate_required([:contents, :color])
  end
end
