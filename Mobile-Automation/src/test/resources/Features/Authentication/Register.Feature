@login
Feature: Register
  As a user
  I want to register
  So i can login into application and buy or see product

  Scenario: Register with fill field full name, email, and password
    Given I click "daftar" button
    And I am on register page
    When I input full name
    And I input valid email
    And I input Valid password
    And I click "daftar" Button
    Then I go to home page

  Scenario: Register with full name, email,  and null password
    Given I click "daftar" button
    And I am on register page
    When I input full name
    And I input email
    And I click "daftar" button
    Then I get  error massage "Password tidak boleh kosong"

  Scenario: login with null fullname, email, and password
    Given I click "daftar" button
    And I am on register page
    When I input email
    And I input password
    And I click "daftar" button
    Then I get error massage "Fullname tidak boleh kosong"

  Scenario: login with  fullname, null email, and password
    Given I click "daftar" button
    And I am on register page
    When I input full name
    And I input password
    And I click "daftar" button
    Then I get error massage "Email tidak boleh kosong"



