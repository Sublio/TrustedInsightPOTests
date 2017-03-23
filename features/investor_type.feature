Feature: As new user I can select investor type


  Background:

      * I am on the welcome screen
      * I tap on Access wit email button
      * I see Text field for inputting my email
      * I input not registered User mail
      * I tap Next button
      * I see first screen of Sign new user flow
      * I input correct first name
      * I input correct last name 
      * I input correct password
      * I tap on "SIGN UP" button
      * I tap on "SIGN UP" button and wait for Your Background
      * I proceed as worker
      * I tap SKIP button
      * I wait for Investor Type page


  Scenario: I can select investor type

      * I proceed as Fund of Funds
      * I proceed as Other
      * I proceed as Consultant
      * I proceed as Registered Investment Adviser
      * I proceed as General Partner
      * I enter Limited Partner
      * I proceed as Endowment
      * I proceed as Insurance
      * I proceed as Corporation
      * I proceed as Sovereign Wealth Fund
      * I proceed as Economic Development Agency
      * I proceed as Asset Manager
      * I scroll
      * I proceed as Outsourced CIO
      * I scroll
      * I proceed as Financial Bank
      * I scroll
      * I proceed as Foundation
      * I scroll
      * I proceed as Pension
      * I scroll
      * I proceed as Family Office
      * I scroll
      * I proceed as Other in Limited Partner
      * I wait for Your Interests Page

