module Stupidedi
  module Versions
    module FunctionalGroups
      module FortyTen
        module SegmentDefs

          s = Schema
          e = ElementDefs
          r = ElementReqs

          BAK = s::SegmentDef.build(:BAK, "Beginning Segment",
            "Beginning Segment for Purchase Order Acknowledgment",
            e::E353.simple_use(r::Mandatory, s::RepeatCount.bounded(1)),
            e::E587.simple_use(r::Mandatory, s::RepeatCount.bounded(1)),
            e::E324.simple_use(r::Mandatory, s::RepeatCount.bounded(1)),
            e::E373.simple_use(r::Mandatory, s::RepeatCount.bounded(1))
          )

        end
      end
    end
  end
end
