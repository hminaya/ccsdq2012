require 'test_helper'

class RosterEntriesControllerTest < ActionController::TestCase
  setup do
    @roster_entry = roster_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:roster_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create roster_entry" do
    assert_difference('RosterEntry.count') do
      post :create, roster_entry: {  }
    end

    assert_redirected_to roster_entry_path(assigns(:roster_entry))
  end

  test "should show roster_entry" do
    get :show, id: @roster_entry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @roster_entry
    assert_response :success
  end

  test "should update roster_entry" do
    put :update, id: @roster_entry, roster_entry: {  }
    assert_redirected_to roster_entry_path(assigns(:roster_entry))
  end

  test "should destroy roster_entry" do
    assert_difference('RosterEntry.count', -1) do
      delete :destroy, id: @roster_entry
    end

    assert_redirected_to roster_entries_path
  end
end
