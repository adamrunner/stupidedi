module Stupidedi
  module Versions
    module FunctionalGroups
      module FortyTen
        module TransactionSetDefs

          d = Schema
          r = SegmentReqs
          s = SegmentDefs

          CA865 = d::TransactionSetDef.build("CA", "865",
            "Purchase Order Change Acknowledgment/Request - Seller Initiated",

            d::TableDef.header("Table 1 - Header",
              s:: ST.use( 10, r::Mandatory, d::RepeatCount.bounded(1)),
              s::BCA.use( 20, r::Mandatory, d::RepeatCount.bounded(1)),
              s::CUR.use( 40, r::Optional,  d::RepeatCount.bounded(1)),

              d::LoopDef.build("N1", d::RepeatCount.bounded(200),
                s:: N1.use(300, r::Optional, d::RepeatCount.bounded(1)),
              ),
            ),

            d::TableDef.detail("Table 2 - Detail",
              d::LoopDef.build("POC", d::RepeatCount.unbounded,
                s::POC.use( 10, r::Optional, d::RepeatCount.bounded(1)),
                s::CTP.use( 40, r::Optional, d::RepeatCount.unbounded),

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
