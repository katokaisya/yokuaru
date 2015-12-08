require 'test_helper'

class StoresControllerTest < ActionController::TestCase
  setup do
    @store = stores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create store" do
    assert_difference('Store.count') do
      post :create, store: { stor_catch: @store.stor_catch, store_access: @store.store_access, store_address: @store.store_address, store_area: @store.store_area, store_description: @store.store_description, store_genre: @store.store_genre, store_movie: @store.store_movie, store_name: @store.store_name }
    end

    assert_redirected_to store_path(assigns(:store))
  end

  test "should show store" do
    get :show, id: @store
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @store
    assert_response :success
  end

  test "should update store" do
    patch :update, id: @store, store: { stor_catch: @store.stor_catch, store_access: @store.store_access, store_address: @store.store_address, store_area: @store.store_area, store_description: @store.store_description, store_genre: @store.store_genre, store_movie: @store.store_movie, store_name: @store.store_name }
    assert_redirected_to store_path(assigns(:store))
  end

  test "should destroy store" do
    assert_difference('Store.count', -1) do
      delete :destroy, id: @store
    end

    assert_redirected_to stores_path
  end
end
