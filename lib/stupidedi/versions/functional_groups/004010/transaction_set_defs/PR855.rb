module Stupidedi
  module Versions
    module FunctionalGroups
      module FortyTen
        module TransactionSetDefs

          d = Schema
          r = SegmentReqs
          s = SegmentDefs

          PR855 = d::TransactionSetDef.build("PR", "855",
            "Purchase Order Acknowledgment",

            d::TableDef.header("Table 1 - Header",
              s:: ST.use( 10, r::Mandatory, d::RepeatCount.bounded(1)),
              s::BAK.use( 20, r::Mandatory, d::RepeatCount.bounded(1)),
            ),

            d::TableDef.detail("Table 2 - Detail",
              d::LoopDef.build("PO1", d::RepeatCount.bounded(100_000),
                s::PO1.use( 10, r::Mandatory, d::RepeatCount.bounded(1)),
                s::CTP.use( 40, r::Optional,  d::RepeatCount.unbounded()),

                d::LoopDef.build("ACK", d::RepeatCount.bounded(104),
                  s::ACK.use(270, r::Mandatory, d::RepeatCount.bounded(1)),
                  s::DTM.use(280, r::Optional,  d::RepeatCount.bounded(1)),
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
