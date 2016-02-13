require "rails_helper"
require "administrate/namespace"

describe Administrate::Namespace do
  describe "#resources" do
    it "searches the routes for resources in the namespace" do
      namespace = Administrate::Namespace.new(:admin)

      expect(namespace.resources).to match_array([
        :customers,
        :products,
        :line_items,
        :orders,
      ])
    end
  end
end
