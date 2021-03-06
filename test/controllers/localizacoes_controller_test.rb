require 'test_helper'

class LocalizacoesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @localizacao = localizacoes(:one)
  end

  test "should get index" do
    get localizacoes_url
    assert_response :success
  end

  test "should get new" do
    get new_localizacao_url
    assert_response :success
  end

  test "should create localizacao" do
    assert_difference('Localizacao.count') do
      post localizacoes_url, params: { localizacao: { Latitude: @localizacao.Latitude, address: @localizacao.address, city: @localizacao.city, country: @localizacao.country, country_code: @localizacao.country_code, endereco: @localizacao.endereco, latitude: @localizacao.latitude, locationable_id: @localizacao.locationable_id, postal_code: @localizacao.postal_code, state: @localizacao.state, state_code: @localizacao.state_code, street: @localizacao.street, tipo: @localizacao.tipo } }
    end

    assert_redirected_to localizacao_url(Localizacao.last)
  end

  test "should show localizacao" do
    get localizacao_url(@localizacao)
    assert_response :success
  end

  test "should get edit" do
    get edit_localizacao_url(@localizacao)
    assert_response :success
  end

  test "should update localizacao" do
    patch localizacao_url(@localizacao), params: { localizacao: { Latitude: @localizacao.Latitude, address: @localizacao.address, city: @localizacao.city, country: @localizacao.country, country_code: @localizacao.country_code, endereco: @localizacao.endereco, latitude: @localizacao.latitude, locationable_id: @localizacao.locationable_id, postal_code: @localizacao.postal_code, state: @localizacao.state, state_code: @localizacao.state_code, street: @localizacao.street, tipo: @localizacao.tipo } }
    assert_redirected_to localizacao_url(@localizacao)
  end

  test "should destroy localizacao" do
    assert_difference('Localizacao.count', -1) do
      delete localizacao_url(@localizacao)
    end

    assert_redirected_to localizacoes_url
  end
end
