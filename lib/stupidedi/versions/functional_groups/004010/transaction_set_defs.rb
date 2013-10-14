module Stupidedi
  module Versions
    module FunctionalGroups
      module FortyTen
        module TransactionSetDefs

          # Purchase Order Change Request
          autoload :PC860, # Purchase Order Change Request
            "stupidedi/versions/functional_groups/004010/transaction_set_defs/PC860"

          # Purchase Order Change Achknowledgement
          autoload :CA865, # Seller Initiated
            "stupidedi/versions/functional_groups/004010/transaction_set_defs/CA865"

          # Purchase Order
          autoload :PO850, # Purchase Order
            "stupidedi/versions/functional_groups/004010/transaction_set_defs/PO850"

          # Purchase Order Acknowledgement
          autoload :PR855, # Purchase Order Acknowledgement
            "stupidedi/versions/functional_groups/004010/transaction_set_defs/PR855"
        end
      end
    end
  end
end
