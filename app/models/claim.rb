class Claim < ActiveRecord::Base
    belongs_to :lawyer
    belongs_to :user
    validates :fname, :lname, :bday, :claimTypes, :description, presence: true

    def self.progress_list
      [
        "Started claim",
        "File a claim with the court",
        "Send the filed claim to the defendant (serve to defendant)",
        "Get a court date",
        "Prepare your paperwork",
        "Go to court",
        "Get judgment (on day of or in a month)",
        "Collect/pay restitution",
      ]
    end

    def self.types
        [
            "Loss Pick",
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
        ]
    end

    def progress_percentage
      return self.progress.nil? ? 0 : (Claim.progress_list.index(self.progress) + 1).to_f / Claim.progress_list.length() * 100
    end

  
end