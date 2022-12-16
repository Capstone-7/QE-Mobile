@BuyProduct
  Scenario :
  As a user
  I want to buy a product
  So i can get the product

  Scenario: buy "pulsa" with phone number and payment confirmation
    Given I already login to application
    And I click daily button
    When I click button "pulsa"
    And I input phone number
    And I click button "beli"
    And Confirmation payment
    Then I can receive invoice and data transaction added to history transaction

  Scenario: buy "pulsa" without phone number
    Given I already login to application
    And I click daily button
    When I click button "pulsa"
    And I click button "beli"
    Then I can get error massage "nomor HP tidak boleh kosong"

  Scenario: buy "paket data" with phone number and payment confirmation
    Given I already login to application
    And I click daily button
    When I click button "paket data"
    And I input phone number
    And I click button "beli"
    And Confirmation payment
    Then I can receive invoice and data transaction added to history transaction

  Scenario: buy "paket data" without phone number
    Given I already login to application
    And I click daily button
    When I click button "paket data"
    And I click button "beli"
    Then I can get error massage "nomor HP tidak boleh kosong"