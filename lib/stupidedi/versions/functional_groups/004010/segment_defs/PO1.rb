module Stupidedi
  module Versions
    module FunctionalGroups
      module FortyTen
        module SegmentDefs

          s = Schema
          e = ElementDefs
          r = ElementReqs

          PO1 = s::SegmentDef.build(:PO1, "Baseline Item Data",
            "To specify basic and most frequently used line item data",
            e::E350.simple_use(r::Mandatory,  s::RepeatCount.bounded(1)),
            e::E330.simple_use(r::Relational, s::RepeatCount.bounded(1)),
            e::E355.simple_use(r::Relational, s::RepeatCount.bounded(1)),
            e::E212.simple_use(r::Relational, s::RepeatCount.bounded(1)),
            e::E639.simple_use(r::Relational, s::RepeatCount.bounded(1)),
            e::E235.simple_use(r::Relational, s::RepeatCount.bounded(1)),
            e::E234.simple_use(r::Relational, s::RepeatCount.bounded(1)),

            SyntaxNotes::C.build( 3,  2),
            SyntaxNotes::C.build( 5,  4),
            SyntaxNotes::P.build( 6,  7)
          )

        end
      end
    end
  end
end
