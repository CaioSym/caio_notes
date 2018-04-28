defmodule CaioNotes.Repo.Migrations.CreateNotes do
  use Ecto.Migration

  def change do
    create table(:notes) do
      add :contents, :text
      add :color, :string

      timestamps()
    end

  end
end
