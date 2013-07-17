module Stupidedi
  module Versions
    module FunctionalGroups
      module FortyTen
        module TransactionSetDefs

          d = Schema
          r = SegmentReqs
          s = SegmentDefs

          PC860 = d::TransactionSetDef.build("PC", "860",
            "Purchase Order Change Request - Buyer Initiated",

            d::TableDef.header("Table 1 - Header",
              s:: ST.use( 10, r::Mandatory, d::RepeatCount.bounded(1)),
              s::BCH.use( 20, r::Mandatory, d::RepeatCount.bounded(1)),
              s::CUR.use( 40, r::Optional,  d::RepeatCount.bounded(1)),
              s::REF.use( 50, r::Optional,  d::RepeatCount.unbounded),
              s::CSH.use(110, r::Optional,  d::RepeatCount.bounded(1)),
              s::DTM.use(150, r::Optional,  d::RepeatCount.bounded(10)),

              d::LoopDef.build("N1", d::RepeatCount.bounded(200),
                s:: N1.use(300, r::Optional, d::RepeatCount.bounded(1)),
              ),
            ),

            d::TableDef.detail("Table 2 - Detail",
              d::LoopDef.build("POC", d::RepeatCount.unbounded,
                s::POC.use( 10, r::Optional, d::RepeatCount.bounded(1)),

                d::LoopDef.build("N9", d::RepeatCount.bounded(1_000), # this is optional with a max count of 1. not sure how to show that...
                  s:: N9.use(320, r::Optional, d::RepeatCount.bounded(1)),
                ),
              ),
            ),

            d::TableDef.detail("Table 3 - Summary",
              d::LoopDef.build("CTT", d::RepeatCount.bounded(1),
                s::CTT.use( 10, r::Optional, d::RepeatCount.bounded(1)),
              ),

              s:: SE.use( 30, r::Mandatory, d::RepeatCount.bounded(1))
            )
          )
        end
      end
    end
  end
end
