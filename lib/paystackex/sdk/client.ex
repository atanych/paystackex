defmodule Paystackex.Sdk.Client do
  use Ext.Sdk.BaseClient, endpoints: Map.keys(Paystackex.Sdk.Config.data().endpoints)

  def prepare_headers(headers),
    do:
      ["Content-Type": "application/json"] ++
        headers ++
        [Authorization: "Bearer #{Application.get_env(:paystackex, :access_token)}"]
end
