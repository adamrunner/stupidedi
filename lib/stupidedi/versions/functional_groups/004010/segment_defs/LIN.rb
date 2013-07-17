module Stupidedi
  module Versions
    module FunctionalGroups
      module FortyTen
        module SegmentDefs

          s = Schema
          e = ElementDefs
          r = ElementReqs

          LIN = s::SegmentDef.build(:LIN, "Item Identification",
            "Item Identification",
            e::E350.simple_use(r::Mandatory, s::RepeatCount.bounded(1)),
            e::E235.simple_use(r::Mandatory, s::RepeatCount.bounded(1)),
            e::E234.simple_use(r::Mandatory, s::RepeatCount.bounded(1))
          )

        end
      end
    end
  end
end
