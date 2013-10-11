module Stupidedi
  module Contrib
    module FortyTen
      module TransactionSetDefs
        d = Schema
        r = SegmentReqs
        s = SegmentDefs

        SH856 = d::TransactionSetDef.build("SH", "856", "Ship Notice/Manifest",

          d::TableDef.header("Table 1 - Header",
            s:: ST.use( 100, r::Mandatory, d::RepeatCount.bounded(1)),
            s::BSN.use( 200, r::Mandatory, d::RepeatCount.bounded(1)),
            s::DTM.use( 300, r::Optional, d::RepeatCount.bounded(10))
          ),

          d::TableDef.detail("Table 2 - Detail",
            d::LoopDef.build("HL", d::RepeatCount.bounded(1),
              s:: HL.use( 200, r::Mandatory, d::RepeatCount.bounded(1)),
              s::TD1.use(1200, r::Mandatory,  d::RepeatCount.bounded(20)),
              s::TD5.use(1400, r::Mandatory,  d::RepeatCount.bounded(12)),
              s::TD3.use(1500, r::Optional,  d::RepeatCount.bounded(12)),
              s::REF.use(1900, r::Mandatory,  d::RepeatCount.unbounded),
              s::FOB.use(4000, r::Mandatory, d::RepeatCount.bounded(1)),
              d::LoopDef.build("N1", d::RepeatCount.bounded(200),
                s:: N1.use(4300, r::Mandatory, d::RepeatCount.bounded(1)),
                s:: N4.use(4600, r::Mandatory, d::RepeatCount.bounded(1))
              ),
              d::LoopDef.build("N1", d::RepeatCount.bounded(200),
                s:: N1.use(5100, r::Mandatory, d::RepeatCount.bounded(1))
              )
            ),
            d::LoopDef.build("HL", d::RepeatCount.bounded(200000),
              s:: HL.use(7400, r::Mandatory, d::RepeatCount.bounded(1)),
              s::PRF.use(7800, r::Mandatory, d::RepeatCount.bounded(1))
            ),
            d::LoopDef.build("HL", d::RepeatCount.bounded(200000),
              s:: HL.use(19500, r::Mandatory,  d::RepeatCount.bounded(1)),
              s::LIN.use(19600, r::Mandatory,  d::RepeatCount.bounded(1)),
              s::SN1.use(19700, r::Mandatory,  d::RepeatCount.bounded(1))
            )
          ),

          d::TableDef.summary("Table 4 - Summary",
            s::CTT.use(100, r::Optional,  d::RepeatCount.bounded(1)),
            s:: SE.use(200, r::Mandatory, d::RepeatCount.bounded(1))
          )
        )
      end
    end
  end
end