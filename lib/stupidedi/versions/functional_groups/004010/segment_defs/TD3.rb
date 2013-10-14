module Stupidedi
  module Versions
    module FunctionalGroups
      module FortyTen
        module SegmentDefs

          s = Schema
          e = ElementDefs
          r = ElementReqs

          TD3 = s::SegmentDef.build(:TD3, "Carrier Details (Equipment)",
            "To specify transportation details relating to the equipment used by the carrier",
            e:: E40.simple_use(r::Optional,    s::RepeatCount.bounded(1)),
            e::E206.simple_use(r::Optional,    s::RepeatCount.bounded(1)),
            e::E207.simple_use(r::Optional,    s::RepeatCount.bounded(1)),
            e::E187.simple_use(r::Conditional, s::RepeatCount.bounded(1)),
            e:: E81.simple_use(r::Optional,    s::RepeatCount.bounded(1)),
            e::E355.simple_use(r::Optional,    s::RepeatCount.bounded(1))
          )

        end
      end
    end
  end
end
