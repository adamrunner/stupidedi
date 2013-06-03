module Stupidedi
  module Versions
    module FunctionalGroups
      module FortyTen
        module TransactionSetDefs

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
