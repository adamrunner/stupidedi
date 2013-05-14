module Stupidedi
  module Versions
    module FunctionalGroups
      module FortyTen
        module SegmentDefs

          s = Schema
          e = ElementDefs
          r = ElementReqs

          PKG = s::SegmentDef.build(:PKG, "Marking, Packaging, Loading",
            "To describe marking, packaging, loading, and unloading requirements",
            e::E349.simple_use(r::Relational, s::RepeatCount.bounded(1)),
            e::E753.simple_use(r::Mandatory, s::RepeatCount.bounded(1)),
            e::E753.simple_use(r::Optional,  s::RepeatCount.bounded(1)), # these are actually blank
            e::E753.simple_use(r::Optional,  s::RepeatCount.bounded(1)), # these are actually blank
            e::E352.simple_use(r::Relational, s::RepeatCount.bounded(1)),

            SyntaxNotes::C.build( 5,  1)
          )

        end
      end
    end
  end
end
