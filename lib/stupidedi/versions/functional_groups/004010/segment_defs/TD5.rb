module Stupidedi
  module Versions
    module FunctionalGroups
      module FortyTen
        module SegmentDefs

          s = Schema
          e = ElementDefs
          r = ElementReqs

          TD5 = s::SegmentDef.build(:TD5, "Carrier Details",
            "Carrier Details (Routing Sequence/Transit Time)",
            e::E66 .simple_use(r::Optional,  s::RepeatCount.bounded(1)), # This element will be blank
            e::E66 .simple_use(r::Mandatory, s::RepeatCount.bounded(1)),
            e::E67 .simple_use(r::Mandatory, s::RepeatCount.bounded(1))
          )

        end
      end
    end
  end
end
