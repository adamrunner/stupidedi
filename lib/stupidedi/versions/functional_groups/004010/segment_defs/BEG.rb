module Stupidedi
  module Versions
    module FunctionalGroups
      module FortyTen
        module SegmentDefs

          s = Schema
          e = ElementDefs
          r = ElementReqs

          BEG = s::SegmentDef.build(:BEG, "Beginning Segment",
            "Beginning Segment for Purchase Order",
            e::E353.simple_use(r::Mandatory, s::RepeatCount.bounded(1)),
            e::E92 .simple_use(r::Mandatory, s::RepeatCount.bounded(1)),
            e::E324.simple_use(r::Mandatory, s::RepeatCount.bounded(1)),
            e::E324.simple_use(r::Optional,  s::RepeatCount.bounded(1)), # this one will always be empty
            e::E373.simple_use(r::Mandatory, s::RepeatCount.bounded(1))
          )

        end
      end
    end
  end
end
