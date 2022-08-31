defmodule ExTwilio.Marketplace.InstalledAddOn do
  @moduledoc """
  Represents a marketplace installed add on

  - [Twilio docs](https://www.twilio.com/docs/add-ons/api/add-on-management#installed-add-on-instance-resource)
  """

  defstruct [
    :sid,
    :account_sid,
    :friendly_name,
    :description,
    :configuration,
    :unique_name,
    :date_created,
    :date_updated,
    :url,
    :links
  ]

  use ExTwilio.Resource,
    import: [
      :stream,
      :all,
      :find,
      :create,
      :update
    ]

  def children, do: [:extension]
end
