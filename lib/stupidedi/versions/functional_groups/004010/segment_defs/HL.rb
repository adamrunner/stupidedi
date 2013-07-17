module Stupidedi
  module Versions
    module FunctionalGroups
      module FortyTen
        module SegmentDefs

          s = Schema
          e = ElementDefs
          r = ElementReqs

          HL = s::SegmentDef.build(:HL, "Hierarchical Level",
            "Hierarchical Level",
            e::E628.simple_use(r::Mandatory, s::RepeatCount.bounded(1)),
            e::E734.simple_use(r::Optional,  s::RepeatCount.bounded(1)),
            e::E735.simple_use(r::Mandatory, s::RepeatCount.bounded(1)),
            e::E736.simple_use(r::Optional,  s::RepeatCount.bounded(1))
          )
        end
      end
    end
  end
end
