module MWS
  module API

    class Sellers < Base
      def_request [:list_marketplace_participations, :list_marketplace_participations_by_next_token],
                  :verb => :post,
                  :uri => '/Sellers/2011-07-01',
                  :version => '2011-07-01'
    end

  end
end
