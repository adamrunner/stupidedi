module Stupidedi
  module Versions
    module FunctionalGroups
      module FortyTen
        module SegmentDefs

          s = Schema
          e = ElementDefs
          r = ElementReqs

          ACK = s::SegmentDef.build(:ACK, "Line Item Acknowledgment",
            "Line Item Acknowledgment",
            e::E668.simple_use(r::Mandatory,  s::RepeatCount.bounded(1)),
            e::E380.simple_use(r::Mandatory,  s::RepeatCount.bounded(1)),
            e::E355.simple_use(r::Mandatory,  s::RepeatCount.bounded(1)),
            e::E374.simple_use(r::Optional,   s::RepeatCount.bounded(1)),
            e::E373.simple_use(r::Relational, s::RepeatCount.bounded(1))
          )

          SyntaxNotes::C.build( 4,  5)
        end
      end
    end
  end
end
