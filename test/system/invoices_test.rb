require "application_system_test_case"

class InvoicesTest < ApplicationSystemTestCase
  setup do
    @invoice = invoices(:one)
  end

  test "visiting the index" do
    visit invoices_url
    assert_selector "h1", text: "Invoices"
  end

  test "should create invoice" do
    visit invoices_url
    click_on "New invoice"

    fill_in "Cliente", with: @invoice.cliente
    check "Cond venta" if @invoice.cond_venta
    fill_in "Event date", with: @invoice.event_date
    fill_in "Iva five", with: @invoice.iva_five
    fill_in "Iva ten", with: @invoice.iva_ten
    fill_in "Iva total", with: @invoice.iva_total
    fill_in "Nota remi", with: @invoice.nota_remi
    fill_in "Ruc", with: @invoice.ruc
    fill_in "T pagar c", with: @invoice.t_pagar_c
    fill_in "Telefono", with: @invoice.telefono
    fill_in "Total pagar", with: @invoice.total_pagar
    fill_in "Valor parcial", with: @invoice.valor_parcial
    click_on "Create Invoice"

    assert_text "Invoice was successfully created"
    click_on "Back"
  end

  test "should update Invoice" do
    visit invoice_url(@invoice)
    click_on "Edit this invoice", match: :first

    fill_in "Cliente", with: @invoice.cliente
    check "Cond venta" if @invoice.cond_venta
    fill_in "Event date", with: @invoice.event_date
    fill_in "Iva five", with: @invoice.iva_five
    fill_in "Iva ten", with: @invoice.iva_ten
    fill_in "Iva total", with: @invoice.iva_total
    fill_in "Nota remi", with: @invoice.nota_remi
    fill_in "Ruc", with: @invoice.ruc
    fill_in "T pagar c", with: @invoice.t_pagar_c
    fill_in "Telefono", with: @invoice.telefono
    fill_in "Total pagar", with: @invoice.total_pagar
    fill_in "Valor parcial", with: @invoice.valor_parcial
    click_on "Update Invoice"

    assert_text "Invoice was successfully updated"
    click_on "Back"
  end

  test "should destroy Invoice" do
    visit invoice_url(@invoice)
    click_on "Destroy this invoice", match: :first

    assert_text "Invoice was successfully destroyed"
  end
end
