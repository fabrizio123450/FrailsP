require "test_helper"

class BillV2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bill_v2 = bill_v2s(:one)
  end

  test "should get index" do
    get bill_v2s_url
    assert_response :success
  end

  test "should get new" do
    get new_bill_v2_url
    assert_response :success
  end

  test "should create bill_v2" do
    assert_difference("BillV2.count") do
      post bill_v2s_url, params: { bill_v2: { cliente: @bill_v2.cliente, cond_venta: @bill_v2.cond_venta, event_date: @bill_v2.event_date, iva: @bill_v2.iva, nota_remi: @bill_v2.nota_remi, ruc: @bill_v2.ruc, telefono: @bill_v2.telefono, total_pagar: @bill_v2.total_pagar, valor_parcial: @bill_v2.valor_parcial } }
    end

    assert_redirected_to bill_v2_url(BillV2.last)
  end

  test "should show bill_v2" do
    get bill_v2_url(@bill_v2)
    assert_response :success
  end

  test "should get edit" do
    get edit_bill_v2_url(@bill_v2)
    assert_response :success
  end

  test "should update bill_v2" do
    patch bill_v2_url(@bill_v2), params: { bill_v2: { cliente: @bill_v2.cliente, cond_venta: @bill_v2.cond_venta, event_date: @bill_v2.event_date, iva: @bill_v2.iva, nota_remi: @bill_v2.nota_remi, ruc: @bill_v2.ruc, telefono: @bill_v2.telefono, total_pagar: @bill_v2.total_pagar, valor_parcial: @bill_v2.valor_parcial } }
    assert_redirected_to bill_v2_url(@bill_v2)
  end

  test "should destroy bill_v2" do
    assert_difference("BillV2.count", -1) do
      delete bill_v2_url(@bill_v2)
    end

    assert_redirected_to bill_v2s_url
  end
end
