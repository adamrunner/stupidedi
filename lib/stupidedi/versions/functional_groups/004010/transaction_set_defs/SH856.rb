module Stupidedi
  module Versions
    module FunctionalGroups
      module FortyTen
        module TransactionSetDefs

          d = Schema
          r = SegmentReqs
          s = SegmentDefs

          SH856 = d::TransactionSetDef.build("SH", "856",
            "Ship Notice/Manifest",

            d::TableDef.header("Table 1 - Header",
              s:: ST.use(  100, r::Mandatory, d::RepeatCount.bounded(1)),
              s::BSN.use(  200, r::Mandatory, d::RepeatCount.bounded(1)),
              s::DTM.use(  300, r::Optional,  d::RepeatCount.bounded(10)),
            ),

            d::TableDef.detail("Table 2 - Detail",
              d::LoopDef.build("HL", d::RepeatCount.bounded(1),
                s:: HL.use(  200, r::Mandatory,   d::RepeatCount.bounded(1)),
                s::TD1.use( 1200, r::Mandatory,   d::RepeatCount.bounded(20)),
                s::TD1.use( 1300, r::Optional,    d::RepeatCount.bounded(20)),
                s::TD5.use( 1400, r::Mandatory,   d::RepeatCount.bounded(12)),
                s::TD3.use( 1500, r::Optional,    d::RepeatCount.bounded(12)),
                s::REF.use( 1800, r::Conditional, d::RepeatCount.unbounded),
                s::REF.use( 1900, r::Conditional, d::RepeatCount.unbounded),
                s::REF.use( 2000, r::Optional,    d::RepeatCount.unbounded),
                s::DTM.use( 3800, r::Optional,    d::RepeatCount.bounded(10)),
                s::FOB.use( 4000, r::Mandatory,   d::RepeatCount.bounded(1)),

                d::LoopDef.build("N1", d::RepeatCount.bounded(200),
                  s:: N1.use( 4300, r::Mandatory, d::RepeatCount.bounded(1)),
                  s:: N3.use( 4500, r::Optional,  d::RepeatCount.bounded(2)),
                  s:: N4.use( 4600, r::Mandatory, d::RepeatCount.bounded(1)),
                ),

                d::LoopDef.build("N1", d::RepeatCount.bounded(200),
                  s:: N1.use( 5100, r::Mandatory, d::RepeatCount.bounded(1)),
                ),
              ),

              d::LoopDef.build("HL", d::RepeatCount.bounded(200_000),
                s:: HL.use( 7400, r::Mandatory, d::RepeatCount.bounded(1)),
                s::PRF.use( 7800, r::Mandatory, d::RepeatCount.bounded(1)),
              ),

              # d::LoopDef.build("HL", d::RepeatCount.bounded(200_000),
              #   s:: HL.use(13400, r::Conditional, d::RepeatCount.bounded(1)),
              #   s::TD1.use(14400, r::Conditional, d::RepeatCount.bounded(20)),
              #   s::REF.use(15000, r::Conditional, d::RepeatCount.unbounded),
              #   s::MAN.use(16700, r::Conditional, d::RepeatCount.unbounded),
              # ),

              d::LoopDef.build("HL", d::RepeatCount.bounded(200_000),
                s:: HL.use(19500, r::Mandatory, d::RepeatCount.bounded(1)),
                s::LIN.use(19600, r::Mandatory, d::RepeatCount.bounded(1)),
                s::SN1.use(19700, r::Mandatory, d::RepeatCount.bounded(1)),
              ),
            ),

            d::TableDef.detail("Table 3 - Summary",
              s::CTT.use( 100, r::Mandatory, d::RepeatCount.bounded(1)),
              s:: SE.use( 200, r::Mandatory, d::RepeatCount.bounded(1))
            )
          )
        end
      end
    end
  end
end
