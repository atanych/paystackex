defmodule Sdk.ChargeTest do
  use ExUnit.Case

  test "charge" do
    request = %Ext.Sdk.Request{
      payload: %{
        email: "some@body.nice",
        amount: "10000",
        metadata: %{
          custom_fields: [
            %{value: "makurdi", display_name: "Donation for", variable_name: "donation_for"}
          ]
        },
        bank: %{
          code: "057",
          account_number: "0000000000"
        },
        birthday: "1995-12-23"
      }
    }

    {:ok, response} = Paystackex.Sdk.Client.charge(request)
    assert response["data"]
    assert response["status"]
  end
end
