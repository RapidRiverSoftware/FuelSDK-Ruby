require 'marketingcloudsdk'
require_relative 'sample_helper'

begin
  myclient = MarketingCloudSDK::Client.new auth

  EmailIDForSendDefinition = '3113962'.freeze
  ListIDForSendDefinition = '1729515'.freeze
  SendClassificationCustomerKey = '2239'.freeze

  # Call SendEmailToList
  response = myclient.SendEmailToList(EmailIDForSendDefinition, ListIDForSendDefinition, SendClassificationCustomerKey)
  p 'Response Status: ' + response.status.to_s
  p 'Code: ' + response.code.to_s
  p 'Message: ' + response.message.to_s
  p 'Results Length: ' + response.results.length.to_s
  p 'Results: ' + response.results.to_s
rescue StandardError => e
  p "Caught exception: #{e.message}"
  p e.backtrace
end
