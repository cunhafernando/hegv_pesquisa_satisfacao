require "test_helper"

class PesquisasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pesquisa = pesquisas(:one)
  end

  test "should get index" do
    get pesquisas_url
    assert_response :success
  end

  test "should get new" do
    get new_pesquisa_url
    assert_response :success
  end

  test "should create pesquisa" do
    assert_difference('Pesquisa.count') do
      post pesquisas_url, params: { pesquisa: { ambul_sat: @pesquisa.ambul_sat, ambulatorio_total: @pesquisa.ambulatorio_total, emerg_sat: @pesquisa.emerg_sat, emergencia_total: @pesquisa.emergencia_total, intern_sat: @pesquisa.intern_sat, internacao_total: @pesquisa.internacao_total } }
    end

    assert_redirected_to pesquisa_url(Pesquisa.last)
  end

  test "should show pesquisa" do
    get pesquisa_url(@pesquisa)
    assert_response :success
  end

  test "should get edit" do
    get edit_pesquisa_url(@pesquisa)
    assert_response :success
  end

  test "should update pesquisa" do
    patch pesquisa_url(@pesquisa), params: { pesquisa: { ambul_sat: @pesquisa.ambul_sat, ambulatorio_total: @pesquisa.ambulatorio_total, emerg_sat: @pesquisa.emerg_sat, emergencia_total: @pesquisa.emergencia_total, intern_sat: @pesquisa.intern_sat, internacao_total: @pesquisa.internacao_total } }
    assert_redirected_to pesquisa_url(@pesquisa)
  end

  test "should destroy pesquisa" do
    assert_difference('Pesquisa.count', -1) do
      delete pesquisa_url(@pesquisa)
    end

    assert_redirected_to pesquisas_url
  end
end
