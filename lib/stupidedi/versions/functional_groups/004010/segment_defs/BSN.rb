module Stupidedi
  module Versions
    module FunctionalGroups
      module FortyTen
        module SegmentDefs

          s = Schema
          e = ElementDefs
          r = ElementReqs

          BSN = s::SegmentDef.build(:BSN, "Beginning Segment",
            "Beginning Segment for Ship Notice",
            e:: E353.simple_use(r::Mandatory, s::RepeatCount.bounded(1)),
            e:: E396.simple_use(r::Mandatory, s::RepeatCount.bounded(1)),
            e:: E373.simple_use(r::Mandatory, s::RepeatCount.bounded(1)),
            e:: E337.simple_use(r::Mandatory, s::RepeatCount.bounded(1)),
            e::E1005.simple_use(r::Mandatory, s::RepeatCount.bounded(1)),
          )
        end
      end
    end
  end
end
