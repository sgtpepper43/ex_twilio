defmodule ExTwilio.Marketplace.InstalledAddOnExtension do
  @moduledoc """
  Represents a marketplace installed add on extension

  - [Twilio docs](https://www.twilio.com/docs/add-ons/api/add-on-management#the-installed-add-on-extensions-api)
  """

  defstruct [
    :sid,
    :installed_add_on_sid,
    :friendly_name,
    :product_name,
    :unique_name,
    :enabled,
    :url
  ]

  use ExTwilio.Resource,
    import: [
      :stream,
      :all,
      :find,
      :create,
      :update
    ]

  def resource_collection_name, do: "extensions"

  def resource_name, do: "Extensions"

  def parents,
    do: [
      %ExTwilio.Parent{module: ExTwilio.Marketplace.InstalledAddOn, key: :installed_add_on}
    ]
end
