require 'rails_helper'

RSpec.describe Claim do
  describe '.types' do
    it 'returns all type' do
      expect(Claim.types).to eql(
        [
          "Pick",
          "Breach of contract disputes",
          "Personal injury claims (such as dog bites)",
          "Collection on debts or loan repayments",
          "Professional negligence claims (like bad car repairs)",
          "Claims regarding the return of a renters security deposit or personal property",
          "Issues with contractors or home remodels",
          "Property damage claims",
          "Claims involving eviction notices or unlawful eviction",
          "False arrest claims",
          "Libel or slander cases",
          "Counterclaims to a lawsuit"
      ])
    end
  end
end