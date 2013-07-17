module Stupidedi
  module Versions
    module FunctionalGroups
      module FortyTen
        module SegmentDefs

          s = Schema
          e = ElementDefs
          r = ElementReqs

          TD3 = s::SegmentDef.build(:TD3, "Carrier Details",
            "Carrier Details (Equipment)",
            e:: E40.simple_use(r::Optional,    s::RepeatCount.bounded(1)),
            e:: E66.simple_use(r::Optional,    s::RepeatCount.bounded(1)), # This element will be blank
            e:: E66.simple_use(r::Optional,    s::RepeatCount.bounded(1)), # This element will be blank
            e::E187.simple_use(r::Conditional, s::RepeatCount.bounded(1)),
            e:: E81.simple_use(r::Optional,    s::RepeatCount.bounded(1)),
            e::E355.simple_use(r::Optional,    s::RepeatCount.bounded(1))
          )

        end
      end
    end
  end
end
