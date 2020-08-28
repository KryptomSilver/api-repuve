require "application_system_test_case"

class CarrosTest < ApplicationSystemTestCase
  setup do
    @carro = carros(:one)
  end

  test "visiting the index" do
    visit carros_url
    assert_selector "h1", text: "Carros"
  end

  test "creating a Carro" do
    visit carros_url
    click_on "New Carro"

    fill_in "Clave car", with: @carro.clave_car
    fill_in "Marca car", with: @carro.marca_car
    fill_in "Matricula", with: @carro.matricula
    fill_in "Modelo car", with: @carro.modelo_car
    check "Reprobo" if @carro.reprobo
    click_on "Create Carro"

    assert_text "Carro was successfully created"
    click_on "Back"
  end

  test "updating a Carro" do
    visit carros_url
    click_on "Edit", match: :first

    fill_in "Clave car", with: @carro.clave_car
    fill_in "Marca car", with: @carro.marca_car
    fill_in "Matricula", with: @carro.matricula
    fill_in "Modelo car", with: @carro.modelo_car
    check "Reprobo" if @carro.reprobo
    click_on "Update Carro"

    assert_text "Carro was successfully updated"
    click_on "Back"
  end

  test "destroying a Carro" do
    visit carros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Carro was successfully destroyed"
  end
end
