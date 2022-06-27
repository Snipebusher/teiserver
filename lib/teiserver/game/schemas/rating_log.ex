defmodule Teiserver.Game.RatingLog do
  use CentralWeb, :schema

  schema "teiserver_game_rating_logs" do
    belongs_to :user, Central.Account.User
    belongs_to :rating_type, Teiserver.Game.RatingType
    belongs_to :match, Teiserver.Battle.Match

    field :value, :map
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  @spec changeset(Map.t(), Map.t()) :: Ecto.Changeset.t()
  def changeset(struct, params \\ %{}) do
    struct
      |> cast(params, ~w(user_id rating_type_id match_id value)a)
      |> validate_required(~w(user_id rating_type_id value)a)
  end

  @spec authorize(Atom.t(), Plug.Conn.t(), Map.t()) :: Boolean.t()
  def authorize(_, conn, _), do: allow?(conn, "teiserver.admin")
end
