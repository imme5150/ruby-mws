require 'spec_helper'

describe MWS::API::Sellers do
  before :all do
    EphemeralResponse.activate
    @mws = MWS.new(auth_params)
  end

  context "requests" do
    describe "list_marketplace_participations" do
      it "should get a list of marketplaces a participant is participating in" do
        response = @mws.sellers.list_marketplace_participations

        response.should have_key(:list_participations)
      end
    end
  end
end
