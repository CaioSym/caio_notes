defmodule CaioNotesWeb.NoteController do
  use CaioNotesWeb, :controller

  alias CaioNotes.Notes
  alias CaioNotes.Notes.Note

  def index(conn, _params) do
    notes = Notes.list_notes()
    changeset = Notes.change_note(%Note{})
    render(conn, "index.html", notes: notes, changeset: changeset)
  end

  def create(conn, %{"note" => note_params}) do
    case Notes.create_note(note_params) do
      {:ok, note} ->
        conn
        |> put_flash(:info, "Note created successfully.")
        |> redirect(to: note_path(conn, :index))
      {:error, %Ecto.Changeset{} = changeset} ->
        conn
        |> redirect(to: note_path(conn, :index))
    end
  end

  def update(conn, %{"id" => id, "note" => note_params}) do
    note = Notes.get_note!(id)

    case Notes.update_note(note, note_params) do
      {:ok, note} ->
        conn
        |> put_flash(:info, "Note updated successfully.")
        |> redirect(to: note_path(conn, :index))
      {:error, %Ecto.Changeset{} = changeset} ->
        conn
        |> redirect(to: note_path(conn, :index))
    end
  end

  def delete(conn, %{"id" => id}) do
    note = Notes.get_note!(id)
    {:ok, _note} = Notes.delete_note(note)

    conn
    |> put_flash(:info, "Note deleted successfully.")
    |> redirect(to: note_path(conn, :index))
  end
end
