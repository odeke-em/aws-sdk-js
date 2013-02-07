# Copyright 2012-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

# language: en
@emr
Feature: Amazon Elastic MapReduce

  I want to use Amazon Elastic MapReduce

  Scenario: Running a job flow
    Given I run an EMR job flow
    Then I should store the job flow ID
    And when I describe the EMR job flows
    Then the list should contain the job flow ID
    And I terminate the job flow

  Scenario: Error handling
    Given I create an EMR job flow with no name
    Then the error code should be "ValidationError"