module Stupidedi
  module Versions
    module FunctionalGroups
      module FortyTen

        #
        # @see X222.pdf A.1.3.8 Condition Designator
        #
        module ElementReqs
          Mandatory   = Schema::ElementReq.new(true,  false, "M")
          Conditional = Schema::ElementReq.new(false, false, "C")
          Optional    = Schema::ElementReq.new(false, false, "O")
          Relational  = Schema::ElementReq.new(false, false, "X")
        end

      end
    end
  end
end
