module Stupidedi
  module Versions
    module FunctionalGroups
      module FortyTen
        module SegmentDefs

          s = Schema
          e = ElementDefs
          r = ElementReqs

          PRF = s::SegmentDef.build(:PRF, "Purchase Order Reference",
            "To specify Purchase Order Reference data",
            e::E324.simple_use(r::Mandatory, s::RepeatCount.bounded(1))
          )

        end
      end
    end
  end
end
