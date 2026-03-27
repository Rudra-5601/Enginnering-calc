require "test_helper"

class MechControllerTest < ActionDispatch::IntegrationTest
  test "should get sheet_metal" do
    get mech_sheet_metal_url
    assert_response :success
  end

  test "should get material_selection" do
    get mech_material_selection_url
    assert_response :success
  end

  test "should get product_design" do
    get mech_product_design_url
    assert_response :success
  end
end
