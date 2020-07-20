# defmodule DragTimeApi.LocationsTest do
#   use DragTimeApi.DataCase
#
#   alias DragTimeApi.Locations
#
#   describe "locations" do
#     alias DragTimeApi.Locations.Location
#
#     @valid_attrs %{address: "some address", name: "some name"}
#     @update_attrs %{address: "some updated address", name: "some updated name"}
#     @invalid_attrs %{address: nil, name: nil}
#
#     def location_fixture(attrs \\ %{}) do
#       {:ok, location} =
#         attrs
#         |> Enum.into(@valid_attrs)
#         |> Locations.create_location()
#
#       location
#     end
#
#     test "list_locations/0 returns all locations" do
#       location = location_fixture()
#       assert Locations.list_locations() == [location]
#     end
#
#     test "get_location!/1 returns the location with given id" do
#       location = location_fixture()
#       assert Locations.get_location!(location.id) == location
#     end
#
#     test "create_location/1 with valid data creates a location" do
#       assert {:ok, %Location{} = location} = Locations.create_location(@valid_attrs)
#       assert location.address == "some address"
#       assert location.name == "some name"
#     end
#
#     test "create_location/1 with invalid data returns error changeset" do
#       assert {:error, %Ecto.Changeset{}} = Locations.create_location(@invalid_attrs)
#     end
#
#     test "update_location/2 with valid data updates the location" do
#       location = location_fixture()
#       assert {:ok, %Location{} = location} = Locations.update_location(location, @update_attrs)
#       assert location.address == "some updated address"
#       assert location.name == "some updated name"
#     end
#
#     test "update_location/2 with invalid data returns error changeset" do
#       location = location_fixture()
#       assert {:error, %Ecto.Changeset{}} = Locations.update_location(location, @invalid_attrs)
#       assert location == Locations.get_location!(location.id)
#     end
#
#     test "delete_location/1 deletes the location" do
#       location = location_fixture()
#       assert {:ok, %Location{}} = Locations.delete_location(location)
#       assert_raise Ecto.NoResultsError, fn -> Locations.get_location!(location.id) end
#     end
#
#     test "change_location/1 returns a location changeset" do
#       location = location_fixture()
#       assert %Ecto.Changeset{} = Locations.change_location(location)
#     end
#   end
# end
