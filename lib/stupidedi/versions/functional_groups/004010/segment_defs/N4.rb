module Stupidedi
  module Versions
    module FunctionalGroups
      module FortyTen
        module SegmentDefs

          s = Schema
          e = ElementDefs
          r = ElementReqs

          N4 = s::SegmentDef.build(:N4, "Geographic Location",
            "To identify a Geographic Location",
            e:: E19.simple_use(r::Mandatory, s::RepeatCount.bounded(1)),
            e::E156.simple_use(r::Optional,  s::RepeatCount.bounded(1)),
            e::E116.simple_use(r::Mandatory, s::RepeatCount.bounded(1)),
            e:: E26.simple_use(r::Mandatory, s::RepeatCount.bounded(1))
          )

        end
      end
    end
  end
end
