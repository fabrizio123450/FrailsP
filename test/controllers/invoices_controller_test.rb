require "test_helper"

class InvoicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invoice = invoices(:one)
  end

  test "should get index" do
    get invoices_url
    assert_response :success
  end

  test "should get new" do
    get new_invoice_url
    assert_response :success
  end

  test "should create invoice" do
    assert_difference("Invoice.count") do
      post invoices_url, params: { invoice: { cliente: @invoice.cliente, cond_venta: @invoice.cond_venta, event_date: @invoice.event_date, iva_five: @invoice.iva_five, iva_ten: @invoice.iva_ten, iva_total: @invoice.iva_total, nota_remi: @invoice.nota_remi, ruc: @invoice.ruc, t_pagar_c: @invoice.t_pagar_c, telefono: @invoice.telefono, total_pagar: @invoice.total_pagar, valor_parcial: @invoice.valor_parcial } }
    end

    assert_redirected_to invoice_url(Invoice.last)
  end

  test "should show invoice" do
    get invoice_url(@invoice)
    assert_response :success
  end

  test "should get edit" do
    get edit_invoice_url(@invoice)
    assert_response :success
  end

  test "should update invoice" do
    patch invoice_url(@invoice), params: { invoice: { cliente: @invoice.cliente, cond_venta: @invoice.cond_venta, event_date: @invoice.event_date, iva_five: @invoice.iva_five, iva_ten: @invoice.iva_ten, iva_total: @invoice.iva_total, nota_remi: @invoice.nota_remi, ruc: @invoice.ruc, t_pagar_c: @invoice.t_pagar_c, telefono: @invoice.telefono, total_pagar: @invoice.total_pagar, valor_parcial: @invoice.valor_parcial } }
    assert_redirected_to invoice_url(@invoice)
  end

  test "should destroy invoice" do
    assert_difference("Invoice.count", -1) do
      delete invoice_url(@invoice)
    end

    assert_redirected_to invoices_url
  end
end
