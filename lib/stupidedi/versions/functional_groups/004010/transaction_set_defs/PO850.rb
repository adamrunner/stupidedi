module Stupidedi
  module Versions
    module FunctionalGroups
      module FortyTen
        module TransactionSetDefs

          d = Schema
          r = SegmentReqs
          s = SegmentDefs

          PO850 = d::TransactionSetDef.build("PO", "850",
            "Purchase Order",

            d::TableDef.header("Table 1 - Header",
              s:: ST.use( 10, r::Mandatory, d::RepeatCount.bounded(1)),
              s::BEG.use( 20, r::Mandatory, d::RepeatCount.bounded(1)),
              s::REF.use( 50, r::Mandatory, d::RepeatCount.bounded(2)), # there are two of these in the docs. one is mandatory, the other is conditional. Not sure what to do here...
              s::FOB.use( 80, r::Optional,  d::RepeatCount.unbounded),
              s::CSH.use(110, r::Mandatory, d::RepeatCount.bounded(1)),
              s::DTM.use(150, r::Optional,  d::RepeatCount.bounded(10)), # there can actually be two different versions of this...
              s::PKG.use(220, r::Optional,  d::RepeatCount.bounded(1)),

              d::LoopDef.build("N9", d::RepeatCount.bounded(1), # this is optional with a max count of 1. not sure how to show that...
                s:: N9.use(295, r::Mandatory, d::RepeatCount.bounded(1)),
                s::MSG.use(30,  r::Mandatory, d::RepeatCount.bounded(1))
              ),

              d::LoopDef.build("N1", d::RepeatCount.bounded(200),
                s:: N1.use(310, r::Mandatory, d::RepeatCount.bounded(1)),
              ),
            ),

            d::TableDef.detail("Table 2 - Detail",
              d::LoopDef.build("PO1", d::RepeatCount.bounded(100_000),
                s::PO1.use( 10, r::Mandatory, d::RepeatCount.bounded(1)),
              ),
            ),

            d::TableDef.detail("Table 3 - Summary",
              d::LoopDef.build("CTT", d::RepeatCount.bounded(1),
                s::CTT.use( 10, r::Mandatory, d::RepeatCount.bounded(1)),
              ),

              s:: SE.use( 30, r::Mandatory, d::RepeatCount.bounded(1))
            )
          )
        end
      end
    end
  end
end
