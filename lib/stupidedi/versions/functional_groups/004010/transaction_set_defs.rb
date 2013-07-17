module Stupidedi
  module Versions
    module FunctionalGroups
      module FortyTen
        module TransactionSetDefs

          # Ship Notice/Manifest
          autoload :HS856, # Ship Notice/Manifest
            "stupidedi/versions/functional_groups/004010/transaction_set_defs/HS856"

          # Purchase Order Change Request
          autoload :PC860, # Purchase Order Change Request
            "stupidedi/versions/functional_groups/004010/transaction_set_defs/PC860"

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
