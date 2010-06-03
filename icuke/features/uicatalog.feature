Feature: iPhone integration tests
  In order to test my iphone application
  As a developer
  I want cucumber to be able to drive the simulator

  Background:
    Given "../InspectionSchedulerIpad/InspectionSchedulerIpad.xcodeproj" is loaded in the simulator

  Scenario: Pressing buttons
    When I tap "Done"