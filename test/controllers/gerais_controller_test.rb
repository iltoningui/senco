require 'test_helper'

class GeraisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @geral = gerais(:one)
  end

  test "should get index" do
    get gerais_url
    assert_response :success
  end

  test "should get new" do
    get new_geral_url
    assert_response :success
  end

  test "should create geral" do
    assert_difference('Geral.count') do
      post gerais_url, params: { geral: { classificacao: @geral.classificacao, descricao: @geral.descricao, estado: @geral.estado, loja: @geral.loja, nome: @geral.nome, preco: @geral.preco, serviceable_id: @geral.serviceable_id } }
    end

    assert_redirected_to geral_url(Geral.last)
  end

  test "should show geral" do
    get geral_url(@geral)
    assert_response :success
  end

  test "should get edit" do
    get edit_geral_url(@geral)
    assert_response :success
  end

  test "should update geral" do
    patch geral_url(@geral), params: { geral: { classificacao: @geral.classificacao, descricao: @geral.descricao, estado: @geral.estado, loja: @geral.loja, nome: @geral.nome, preco: @geral.preco, serviceable_id: @geral.serviceable_id } }
    assert_redirected_to geral_url(@geral)
  end

  test "should destroy geral" do
    assert_difference('Geral.count', -1) do
      delete geral_url(@geral)
    end

    assert_redirected_to gerais_url
  end
end
