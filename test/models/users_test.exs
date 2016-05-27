defmodule Peepchat.UsersTest do
  use Peepchat.ModelCase

  alias Peepchat.Users

  @valid_attrs %{email: "omer@example.com",
   password: "zxcvbnm987654",
   password_confirmation: "zxcvbnm987654"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Users.changeset(%Users{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Users.changeset(%Users{}, @invalid_attrs)
    refute changeset.valid?
  end
end
