defmodule ExTwilio.Marketplace.AvailableAddOn do
  @moduledoc """
  Represents a marketplace available add on

  - [Twilio docs](https://www.twilio.com/docs/add-ons/api/add-on-management#available-add-ons-list-resource)
  """

  defstruct [
    :sid,
    :friendly_name,
    :description,
    :pricing_type,
    :configuration_schema,
    :url,
    :links
  ]

  use ExTwilio.Resource, import: [:stream, :all, :find]
end
