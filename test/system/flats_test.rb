require "application_system_test_case"

class FlatsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit '/'

    assert_selector "h1", text: "Take a look at out flats!"
  end

  test 'visiting the SHOW page' do
    visit 'flats/145'

    assert_selector 'h1', text: 'Charm at the Steps of the Sacre Coeur/Montmartre'
  end
end
