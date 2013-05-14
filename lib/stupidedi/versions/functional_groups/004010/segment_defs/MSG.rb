module Stupidedi
  module Versions
    module FunctionalGroups
      module FortyTen
        module SegmentDefs

          s = Schema
          e = ElementDefs
          r = ElementReqs

          MSG = s::SegmentDef.build(:MSG, "Message Text",
            "To provide a free-form format that allows the transmission of text information",
            e::E933.simple_use(r::Mandatory, s::RepeatCount.bounded(1))
          )

        end
      end
    end
  end
end
