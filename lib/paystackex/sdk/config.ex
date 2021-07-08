defmodule Paystackex.Sdk.Config do
  def data,
    do: %{
      base_url: "https://api.paystack.co",
      sdk_name: "paystack SDK",
      endpoints: %{
        transaction_initialize: %{
          type: :post,
          url: "/transaction/initialize"
        },
        charge: %{
          type: :post,
          url: "/charge"
        }
      }
    }
end
