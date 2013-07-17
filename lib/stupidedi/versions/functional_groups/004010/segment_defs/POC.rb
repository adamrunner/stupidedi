module Stupidedi
  module Versions
    module FunctionalGroups
      module FortyTen
        module SegmentDefs

          s = Schema
          e = ElementDefs
          r = ElementReqs

          POC = s::SegmentDef.build(:POC, "Baseline Item Data",
            "To specify basic and most frequently used line item data",
            e::E350.simple_use(r::Optional,   s::RepeatCount.bounded(1)),
            e::E670.simple_use(r::Mandatory,  s::RepeatCount.bounded(1)),
            e::E330.simple_use(r::Optional,   s::RepeatCount.bounded(1)),
            e::E671.simple_use(r::Relational, s::RepeatCount.bounded(1)),
            e::C001.simple_use(r::Relational, s::RepeatCount.bounded(1)),
            e::E212.simple_use(r::Relational, s::RepeatCount.bounded(1)),
            e::E639.simple_use(r::Relational, s::RepeatCount.bounded(1)),
            e::E235.simple_use(r::Relational, s::RepeatCount.bounded(1)),
            e::E234.simple_use(r::Relational, s::RepeatCount.bounded(1)),

            SyntaxNotes::C.build( 3,  4, 5),
            SyntaxNotes::C.build( 7,  6),
            SyntaxNotes::P.build( 8,  9)
          )

        end
      end
    end
  end
end
