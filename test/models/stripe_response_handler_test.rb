require "test_helper"

class SponsorerDetailTest < ActiveSupport::TestCase
  test 'when customer subscription is created then the subscription should be marked as active' do
    skip("Pending")
  end

  test 'when invoice payment is succeeded then payment should be recorded' do
    skip("Pending")
  end

  test 'invoice payment is failed' do
    skip("Pending")
  end

  test 'customer subscription is updated' do
    skip("Pending")
  end

  test 'customer source is created' do
    skip("Pending")
  end

  test 'customer subscription is deleted' do
    skip("Pending")
  end

  def seed
    @round = create :round, :open
    @user = create :user, github_user_since: Date.today - 6.months, created_at: Date.today - 3.months, points: 500
    @subscription = create(:subscription, round: @round, user: @user)
    @sponsorer_detail = create(:sponsorer_detail, user: @user, sponsorer_type: 'INDIVIDUAL', payment_plan: 'base', publish_profile: false,
                               subscription_status: :active)
  end

  def customer_source_created
    {"id"=>"evt_1AlymIGqILdnjs8fTuB2jZyc", "object"=>"event", "api_version"=>"2017-06-05", "created"=>1501587790, "data"=>{"object"=>{"id"=>"card_1AlymDGqILdnjs8f6sfzAJWG", "object"=>"card", "address_city"=>nil, "address_country"=>nil, "address_line1"=>nil, "address_line1_check"=>nil, "address_line2"=>nil, "address_state"=>nil, "address_zip"=>nil, "address_zip_check"=>nil, "brand"=>"Visa", "country"=>"US", "customer"=>"cus_B8FGyBhfnriWh4", "cvc_check"=>"pass", "dynamic_last4"=>nil, "exp_month"=>11, "exp_year"=>2017, "fingerprint"=>"1oChGpr7hqkTQHQd", "funding"=>"unknown", "last4"=>"1111", "metadata"=>{}, "name"=>"prasadsurase@gmail.com", "tokenization_method"=>nil}}, "livemode"=>false, "pending_webhooks"=>1, "request"=>{"id"=>"req_CinokJIyaPDBr4", "idempotency_key"=>nil}, "type"=>"customer.source.created", "stripe"=>{"id"=>"evt_1AlymIGqILdnjs8fTuB2jZyc", "object"=>"event", "api_version"=>"2017-06-05", "created"=>1501587790, "data"=>{"object"=>{"id"=>"card_1AlymDGqILdnjs8f6sfzAJWG", "object"=>"card", "address_city"=>nil, "address_country"=>nil, "address_line1"=>nil, "address_line1_check"=>nil, "address_line2"=>nil, "address_state"=>nil, "address_zip"=>nil, "address_zip_check"=>nil, "brand"=>"Visa", "country"=>"US", "customer"=>"cus_B8FGyBhfnriWh4", "cvc_check"=>"pass", "dynamic_last4"=>nil, "exp_month"=>11, "exp_year"=>2017, "fingerprint"=>"1oChGpr7hqkTQHQd", "funding"=>"unknown", "last4"=>"1111", "metadata"=>{}, "name"=>"prasadsurase@gmail.com", "tokenization_method"=>nil}}, "livemode"=>false, "pending_webhooks"=>1, "request"=>{"id"=>"req_CinokJIyaPDBr4", "idempotency_key"=>nil}, "type"=>"customer.source.created"}}
  end

  def customer_subscription_created
    {"id"=>"evt_1Alz3JGqILdnjs8faluZCAAR", "object"=>"event", "api_version"=>"2017-06-05", "created"=>1501588845, "data"=>{"object"=>{"id"=>"sub_B8FYBs14j5V68B", "object"=>"subscription", "application_fee_percent"=>nil, "cancel_at_period_end"=>false, "canceled_at"=>nil, "created"=>1501588845, "current_period_end"=>1504267245, "current_period_start"=>1501588845, "customer"=>"cus_B8FYWV40hC3GiY", "discount"=>nil, "ended_at"=>nil, "items"=>{"object"=>"list", "data"=>[{"id"=>"si_1Alz3JGqILdnjs8fF77QHTBo", "object"=>"subscription_item", "created"=>1501588845, "metadata"=>{}, "plan"=>{"id"=>"base-individual", "object"=>"plan", "amount"=>500, "created"=>1501046028, "currency"=>"usd", "interval"=>"month", "interval_count"=>1, "livemode"=>false, "metadata"=>{}, "name"=>"Base Individual", "statement_descriptor"=>nil, "trial_period_days"=>nil}, "quantity"=>1}], "has_more"=>false, "total_count"=>1, "url"=>"/v1/subscription_items?subscription=sub_B8FYBs14j5V68B"}, "livemode"=>false, "metadata"=>{}, "plan"=>{"id"=>"base-individual", "object"=>"plan", "amount"=>500, "created"=>1501046028, "currency"=>"usd", "interval"=>"month", "interval_count"=>1, "livemode"=>false, "metadata"=>{}, "name"=>"Base Individual", "statement_descriptor"=>nil, "trial_period_days"=>nil}, "quantity"=>1, "start"=>1501588845, "status"=>"active", "tax_percent"=>nil, "trial_end"=>nil, "trial_start"=>nil}}, "livemode"=>false, "pending_webhooks"=>1, "request"=>{"id"=>"req_m9WdsNZaZ0GMFU", "idempotency_key"=>nil}, "type"=>"customer.subscription.created", "stripe"=>{"id"=>"evt_1Alz3JGqILdnjs8faluZCAAR", "object"=>"event", "api_version"=>"2017-06-05", "created"=>1501588845, "data"=>{"object"=>{"id"=>"sub_B8FYBs14j5V68B", "object"=>"subscription", "application_fee_percent"=>nil, "cancel_at_period_end"=>false, "canceled_at"=>nil, "created"=>1501588845, "current_period_end"=>1504267245, "current_period_start"=>1501588845, "customer"=>"cus_B8FYWV40hC3GiY", "discount"=>nil, "ended_at"=>nil, "items"=>{"object"=>"list", "data"=>[{"id"=>"si_1Alz3JGqILdnjs8fF77QHTBo", "object"=>"subscription_item", "created"=>1501588845, "metadata"=>{}, "plan"=>{"id"=>"base-individual", "object"=>"plan", "amount"=>500, "created"=>1501046028, "currency"=>"usd", "interval"=>"month", "interval_count"=>1, "livemode"=>false, "metadata"=>{}, "name"=>"Base Individual", "statement_descriptor"=>nil, "trial_period_days"=>nil}, "quantity"=>1}], "has_more"=>false, "total_count"=>1, "url"=>"/v1/subscription_items?subscription=sub_B8FYBs14j5V68B"}, "livemode"=>false, "metadata"=>{}, "plan"=>{"id"=>"base-individual", "object"=>"plan", "amount"=>500, "created"=>1501046028, "currency"=>"usd", "interval"=>"month", "interval_count"=>1, "livemode"=>false, "metadata"=>{}, "name"=>"Base Individual", "statement_descriptor"=>nil, "trial_period_days"=>nil}, "quantity"=>1, "start"=>1501588845, "status"=>"active", "tax_percent"=>nil, "trial_end"=>nil, "trial_start"=>nil}}, "livemode"=>false, "pending_webhooks"=>1, "request"=>{"id"=>"req_m9WdsNZaZ0GMFU", "idempotency_key"=>nil}, "type"=>"customer.subscription.created"}}
  end

  def customer_subscription_deleted
    {"id"=>"evt_1Alx9TGqILdnjs8ftVzs8Ty8", "object"=>"event", "api_version"=>"2017-06-05", "created"=>1501581539, "data"=>{"object"=>{"id"=>"sub_B8DWoDWDKYe4UV", "object"=>"subscription", "application_fee_percent"=>nil, "cancel_at_period_end"=>false, "canceled_at"=>1501581539, "created"=>1501581289, "current_period_end"=>1504259689, "current_period_start"=>1501581289, "customer"=>"cus_B8DWx1uqPpBmoP", "discount"=>nil, "ended_at"=>1501581539, "items"=>{"object"=>"list", "data"=>[{"id"=>"si_1Alx5RGqILdnjs8f3TqFTLT1", "object"=>"subscription_item", "created"=>1501581289, "metadata"=>{}, "plan"=>{"id"=>"base-organization", "object"=>"plan", "amount"=>25000, "created"=>1501046058, "currency"=>"usd", "interval"=>"month", "interval_count"=>1, "livemode"=>false, "metadata"=>{}, "name"=>"Base Organization", "statement_descriptor"=>nil, "trial_period_days"=>nil}, "quantity"=>1}], "has_more"=>false, "total_count"=>1, "url"=>"/v1/subscription_items?subscription=sub_B8DWoDWDKYe4UV"}, "livemode"=>false, "metadata"=>{}, "plan"=>{"id"=>"base-organization", "object"=>"plan", "amount"=>25000, "created"=>1501046058, "currency"=>"usd", "interval"=>"month", "interval_count"=>1, "livemode"=>false, "metadata"=>{}, "name"=>"Base Organization", "statement_descriptor"=>nil, "trial_period_days"=>nil}, "quantity"=>1, "start"=>1501581289, "status"=>"canceled", "tax_percent"=>nil, "trial_end"=>nil, "trial_start"=>nil}}, "livemode"=>false, "pending_webhooks"=>1, "request"=>{"id"=>"req_CU1jw9nGTyYYkF", "idempotency_key"=>nil}, "type"=>"customer.subscription.deleted", "stripe"=>{"id"=>"evt_1Alx9TGqILdnjs8ftVzs8Ty8", "object"=>"event", "api_version"=>"2017-06-05", "created"=>1501581539, "data"=>{"object"=>{"id"=>"sub_B8DWoDWDKYe4UV", "object"=>"subscription", "application_fee_percent"=>nil, "cancel_at_period_end"=>false, "canceled_at"=>1501581539, "created"=>1501581289, "current_period_end"=>1504259689, "current_period_start"=>1501581289, "customer"=>"cus_B8DWx1uqPpBmoP", "discount"=>nil, "ended_at"=>1501581539, "items"=>{"object"=>"list", "data"=>[{"id"=>"si_1Alx5RGqILdnjs8f3TqFTLT1", "object"=>"subscription_item", "created"=>1501581289, "metadata"=>{}, "plan"=>{"id"=>"base-organization", "object"=>"plan", "amount"=>25000, "created"=>1501046058, "currency"=>"usd", "interval"=>"month", "interval_count"=>1, "livemode"=>false, "metadata"=>{}, "name"=>"Base Organization", "statement_descriptor"=>nil, "trial_period_days"=>nil}, "quantity"=>1}], "has_more"=>false, "total_count"=>1, "url"=>"/v1/subscription_items?subscription=sub_B8DWoDWDKYe4UV"}, "livemode"=>false, "metadata"=>{}, "plan"=>{"id"=>"base-organization", "object"=>"plan", "amount"=>25000, "created"=>1501046058, "currency"=>"usd", "interval"=>"month", "interval_count"=>1, "livemode"=>false, "metadata"=>{}, "name"=>"Base Organization", "statement_descriptor"=>nil, "trial_period_days"=>nil}, "quantity"=>1, "start"=>1501581289, "status"=>"canceled", "tax_percent"=>nil, "trial_end"=>nil, "trial_start"=>nil}}, "livemode"=>false, "pending_webhooks"=>1, "request"=>{"id"=>"req_CU1jw9nGTyYYkF", "idempotency_key"=>nil}, "type"=>"customer.subscription.deleted"}}
  end

  def invoice_payment_succeeded
    {"id"=>"evt_1AlymIGqILdnjs8fPC1ukBVi", "object"=>"event", "api_version"=>"2017-06-05", "created"=>1501587790, "data"=>{"object"=>{"id"=>"in_1AlymIGqILdnjs8fOTcKvpMN", "object"=>"invoice", "amount_due"=>500, "application_fee"=>nil, "attempt_count"=>0, "attempted"=>true, "charge"=>"ch_1AlymIGqILdnjs8fRkehtqn0", "closed"=>true, "currency"=>"usd", "customer"=>"cus_B8FGyBhfnriWh4", "date"=>1501587790, "description"=>nil, "discount"=>nil, "ending_balance"=>0, "forgiven"=>false, "lines"=>{"object"=>"list", "data"=>[{"id"=>"sub_B8FGp7Tnl7Y0Im", "object"=>"line_item", "amount"=>500, "currency"=>"usd", "description"=>nil, "discountable"=>true, "livemode"=>false, "metadata"=>{}, "period"=>{"start"=>1501587790, "end"=>1504266190}, "plan"=>{"id"=>"base-individual", "object"=>"plan", "amount"=>500, "created"=>1501046028, "currency"=>"usd", "interval"=>"month", "interval_count"=>1, "livemode"=>false, "metadata"=>{}, "name"=>"Base Individual", "statement_descriptor"=>nil, "trial_period_days"=>nil}, "proration"=>false, "quantity"=>1, "subscription"=>nil, "subscription_item"=>"si_1AlymIGqILdnjs8fkHlVwhvG", "type"=>"subscription"}], "has_more"=>false, "total_count"=>1, "url"=>"/v1/invoices/in_1AlymIGqILdnjs8fOTcKvpMN/lines"}, "livemode"=>false, "metadata"=>{}, "next_payment_attempt"=>nil, "paid"=>true, "period_end"=>1501587790, "period_start"=>1501587790, "receipt_number"=>nil, "starting_balance"=>0, "statement_descriptor"=>nil, "subscription"=>"sub_B8FGp7Tnl7Y0Im", "subtotal"=>500, "tax"=>nil, "tax_percent"=>nil, "total"=>500, "webhooks_delivered_at"=>nil}}, "livemode"=>false, "pending_webhooks"=>1, "request"=>{"id"=>"req_CinokJIyaPDBr4", "idempotency_key"=>nil}, "type"=>"invoice.payment_succeeded", "stripe"=>{"id"=>"evt_1AlymIGqILdnjs8fPC1ukBVi", "object"=>"event", "api_version"=>"2017-06-05", "created"=>1501587790, "data"=>{"object"=>{"id"=>"in_1AlymIGqILdnjs8fOTcKvpMN", "object"=>"invoice", "amount_due"=>500, "application_fee"=>nil, "attempt_count"=>0, "attempted"=>true, "charge"=>"ch_1AlymIGqILdnjs8fRkehtqn0", "closed"=>true, "currency"=>"usd", "customer"=>"cus_B8FGyBhfnriWh4", "date"=>1501587790, "description"=>nil, "discount"=>nil, "ending_balance"=>0, "forgiven"=>false, "lines"=>{"object"=>"list", "data"=>[{"id"=>"sub_B8FGp7Tnl7Y0Im", "object"=>"line_item", "amount"=>500, "currency"=>"usd", "description"=>nil, "discountable"=>true, "livemode"=>false, "metadata"=>{}, "period"=>{"start"=>1501587790, "end"=>1504266190}, "plan"=>{"id"=>"base-individual", "object"=>"plan", "amount"=>500, "created"=>1501046028, "currency"=>"usd", "interval"=>"month", "interval_count"=>1, "livemode"=>false, "metadata"=>{}, "name"=>"Base Individual", "statement_descriptor"=>nil, "trial_period_days"=>nil}, "proration"=>false, "quantity"=>1, "subscription"=>nil, "subscription_item"=>"si_1AlymIGqILdnjs8fkHlVwhvG", "type"=>"subscription"}], "has_more"=>false, "total_count"=>1, "url"=>"/v1/invoices/in_1AlymIGqILdnjs8fOTcKvpMN/lines"}, "livemode"=>false, "metadata"=>{}, "next_payment_attempt"=>nil, "paid"=>true, "period_end"=>1501587790, "period_start"=>1501587790, "receipt_number"=>nil, "starting_balance"=>0, "statement_descriptor"=>nil, "subscription"=>"sub_B8FGp7Tnl7Y0Im", "subtotal"=>500, "tax"=>nil, "tax_percent"=>nil, "total"=>500, "webhooks_delivered_at"=>nil}}, "livemode"=>false, "pending_webhooks"=>1, "request"=>{"id"=>"req_CinokJIyaPDBr4", "idempotency_key"=>nil}, "type"=>"invoice.payment_succeeded"}}
  end
end
