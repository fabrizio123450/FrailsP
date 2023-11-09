require "application_system_test_case"

class BillV2sTest < ApplicationSystemTestCase
  setup do
    @bill_v2 = bill_v2s(:one)
  end

  test "visiting the index" do
    visit bill_v2s_url
    assert_selector "h1", text: "Bill v2s"
  end

  test "should create bill v2" do
    visit bill_v2s_url
    click_on "New bill v2"

    fill_in "Cliente", with: @bill_v2.cliente
    check "Cond venta" if @bill_v2.cond_venta
    fill_in "Event date", with: @bill_v2.event_date
    fill_in "Iva", with: @bill_v2.iva
    fill_in "Nota remi", with: @bill_v2.nota_remi
    fill_in "Ruc", with: @bill_v2.ruc
    fill_in "Telefono", with: @bill_v2.telefono
    fill_in "Total pagar", with: @bill_v2.total_pagar
    fill_in "Valor parcial", with: @bill_v2.valor_parcial
    click_on "Create Bill v2"

    assert_text "Bill v2 was successfully created"
    click_on "Back"
  end

  test "should update Bill v2" do
    visit bill_v2_url(@bill_v2)
    click_on "Edit this bill v2", match: :first

    fill_in "Cliente", with: @bill_v2.cliente
    check "Cond venta" if @bill_v2.cond_venta
    fill_in "Event date", with: @bill_v2.event_date
    fill_in "Iva", with: @bill_v2.iva
    fill_in "Nota remi", with: @bill_v2.nota_remi
    fill_in "Ruc", with: @bill_v2.ruc
    fill_in "Telefono", with: @bill_v2.telefono
    fill_in "Total pagar", with: @bill_v2.total_pagar
    fill_in "Valor parcial", with: @bill_v2.valor_parcial
    click_on "Update Bill v2"

    assert_text "Bill v2 was successfully updated"
    click_on "Back"
  end

  test "should destroy Bill v2" do
    visit bill_v2_url(@bill_v2)
    click_on "Destroy this bill v2", match: :first

    assert_text "Bill v2 was successfully destroyed"
  end
end
