module Stupidedi
  module Versions
    module FunctionalGroups
      module FortyTen
        module SegmentDefs

          s = Schema
          e = ElementDefs
          r = ElementReqs

          BCA = s::SegmentDef.build(:BCA, "Beginning Segment",
            "Beginning Segment for Purchase Order Change Acknowledgment",
            e::E327.simple_use(r::Optional,  s::RepeatCount.bounded(1)), # 1 This will always be empty
            e::E327.simple_use(r::Optional,  s::RepeatCount.bounded(1)), # 2 This will always be empty
            e::E324.simple_use(r::Mandatory, s::RepeatCount.bounded(1)), # 3
            e::E327.simple_use(r::Optional,  s::RepeatCount.bounded(1)), # 4 This will always be empty
            e::E327.simple_use(r::Optional,  s::RepeatCount.bounded(1)), # 5
            e::E373.simple_use(r::Mandatory, s::RepeatCount.bounded(1))  # 6
          )
        end
      end
    end
  end
end
