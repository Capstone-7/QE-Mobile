@login
Feature: login
    As a user
    I want to login
    So i can buy or see product

    Scenario: login with valid email and valid password
        Given I click "masuk" button
        And I am on login page
        When I input valid email
        And I input Valid password
        And I click login Button
        Then I go to home page

    Scenario: login with email and null password
        Given I click "masuk" button
        And I am on login page
        When I input valid email
        And I click login button
        Then I receive a error massage "Password tidak boleh kosong"

    Scenario: login with null email and valid password
        Given I click "masuk" button
        And I am on login page
        When I input valid email
        And I click login button
        Then I receive a error massage "Email tidak boleh kosong"



