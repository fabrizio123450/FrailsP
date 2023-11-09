require "application_system_test_case"

class CommetsTest < ApplicationSystemTestCase
  setup do
    @commet = commets(:one)
  end

  test "visiting the index" do
    visit commets_url
    assert_selector "h1", text: "Commets"
  end

  test "should create commet" do
    visit commets_url
    click_on "New commet"

    fill_in "Comentario", with: @commet.comentario
    click_on "Create Commet"

    assert_text "Commet was successfully created"
    click_on "Back"
  end

  test "should update Commet" do
    visit commet_url(@commet)
    click_on "Edit this commet", match: :first

    fill_in "Comentario", with: @commet.comentario
    click_on "Update Commet"

    assert_text "Commet was successfully updated"
    click_on "Back"
  end

  test "should destroy Commet" do
    visit commet_url(@commet)
    click_on "Destroy this commet", match: :first

    assert_text "Commet was successfully destroyed"
  end
end
