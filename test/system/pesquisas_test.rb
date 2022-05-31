require "application_system_test_case"

class PesquisasTest < ApplicationSystemTestCase
  setup do
    @pesquisa = pesquisas(:one)
  end

  test "visiting the index" do
    visit pesquisas_url
    assert_selector "h1", text: "Pesquisas"
  end

  test "creating a Pesquisa" do
    visit pesquisas_url
    click_on "New Pesquisa"

    fill_in "Ambul sat", with: @pesquisa.ambul_sat
    fill_in "Ambulatorio total", with: @pesquisa.ambulatorio_total
    fill_in "Emerg sat", with: @pesquisa.emerg_sat
    fill_in "Emergencia total", with: @pesquisa.emergencia_total
    fill_in "Intern sat", with: @pesquisa.intern_sat
    fill_in "Internacao total", with: @pesquisa.internacao_total
    click_on "Create Pesquisa"

    assert_text "Pesquisa was successfully created"
    click_on "Back"
  end

  test "updating a Pesquisa" do
    visit pesquisas_url
    click_on "Edit", match: :first

    fill_in "Ambul sat", with: @pesquisa.ambul_sat
    fill_in "Ambulatorio total", with: @pesquisa.ambulatorio_total
    fill_in "Emerg sat", with: @pesquisa.emerg_sat
    fill_in "Emergencia total", with: @pesquisa.emergencia_total
    fill_in "Intern sat", with: @pesquisa.intern_sat
    fill_in "Internacao total", with: @pesquisa.internacao_total
    click_on "Update Pesquisa"

    assert_text "Pesquisa was successfully updated"
    click_on "Back"
  end

  test "destroying a Pesquisa" do
    visit pesquisas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pesquisa was successfully destroyed"
  end
end
