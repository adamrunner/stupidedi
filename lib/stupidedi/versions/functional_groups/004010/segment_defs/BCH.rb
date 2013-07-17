module Stupidedi
  module Versions
    module FunctionalGroups
      module FortyTen
        module SegmentDefs

          s = Schema
          e = ElementDefs
          r = ElementReqs

          BCH = s::SegmentDef.build(:BCH, "Beginning Segment",
            "Beginning Segment for Purchase Order Change",
            e::E353.simple_use(r::Mandatory, s::RepeatCount.bounded(1)),
            e::E92 .simple_use(r::Mandatory, s::RepeatCount.bounded(1)),
            e::E324.simple_use(r::Mandatory, s::RepeatCount.bounded(1)),
            e::E327.simple_use(r::Optional,  s::RepeatCount.bounded(1)),
            e::E327.simple_use(r::Optional,  s::RepeatCount.bounded(1)), # This will always be empty
            e::E373.simple_use(r::Mandatory, s::RepeatCount.bounded(1))
          )

        end
      end
    end
  end
end
