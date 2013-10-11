module Stupidedi
  module Contrib
    module FortyTen
      module Guides

        b = GuideBuilder
        d = Schema
        r = SegmentReqs
        e = ElementReqs
        s = Versions::FunctionalGroups::FortyTen::SegmentDefs
        # s = Versions::FunctionalGroups::FortyTen::SegmentDefs
        t = Contrib::FortyTen::TransactionSetDefs
        #t = Contrib::FortyTen::TransactionSetDefs
        #
        # Ship Notice/Manifest
        #
        SH856 = b.build(t::SH856,
          d::TableDef.header("Heading",
            b::Segment(100, s:: ST, "Transaction Set Header",
              r::Required, d::RepeatCount.bounded(1),
              b::Element(e::Required,    "Transaction Set Identifier Code", b::Values("856")),
              b::Element(e::Required,    "Transaction Set Control Number")
            ),
            b::Segment(200, s::BSN, "Beginning Segment for Ship Notice",
              r::Required, d::RepeatCount.bounded(1),
              b::Element(e::Required,    "Transaction Set Purpose Code", b::Values("00")),
              b::Element(e::Required,    "Shipment Identification"),
              b::Element(e::Required,    "Date - BSN03"),
              b::Element(e::Required,    "Time - BSN04"),
              b::Element(e::Situational, "Hierarchical Structure Code", b::Values("0004"))
            ),
            b::Segment(300, s::DTM, "Date/Time Reference",
              r::Optional, d::RepeatCount.bounded(10),
              b::Element(e::Required,    "Date/Time Qualifier", b::Values("017")),
              b::Element(e::Required,    "Date - DTM02"),
              b::Element(e::Situational, "Time - DTM03"),
              b::Element(e::NotUsed,     "Time Code")
            )
          ),

          d::TableDef.detail("Detail",
            d::LoopDef.build("HL", d::RepeatCount.bounded(1),
              b::Segment(200, s:: HL, "Hierarchical Level",
                r::Required, d::RepeatCount.bounded(1),
                b::Element(e::Required,     "Hierarchical ID Number"),
                b::Element(e::Situational,  "Hierarchical Parent ID Number"),
                b::Element(e::Required,     "Hierarchical Level Code", b::Values("S")),
                b::Element(e::Situational,  "Hierarchical Child Code")
              ),
              b::Segment(1200, s::TD1, "Carrier Details (Quantity and Weight)",
                r::Required, d::RepeatCount.bounded(20),
                b::Element(e::Required,    "Packaging Code", b::Values("CTN")),
                b::Element(e::Required,    "Lading Quantity"),
                b::Element(e::NotUsed,     "Unused Element"),
                b::Element(e::Optional,    "Commodity Code"),
                b::Element(e::Optional,    "Lading Description"),
                b::Element(e::Required,    "Weight Qualifier", b::Values("G")),
                b::Element(e::Required,    "Weight"),
                b::Element(e::Required,    "Unit or Basis for Measurement Code", b::Values("KG", "LB")),
                b::Element(e::Situational, "Volume"),
                b::Element(e::Situational, "Unit or Basis for Measurement Code", b::Values("CF", "CR"))
              ),
              b::Segment(1400, s::TD5, "Carrier Details (Routing Sequence/Transit Time)",
                r::Required, d::RepeatCount.bounded(12),
                b::Element(e::NotUsed,     "Routing Sequence Code"),
                b::Element(e::Required,    "Identification Code Qualifier", b::Values("2")),
                b::Element(e::Required,    "Identification Code")
              ),
              b::Segment(1500, s::TD3, "Carrier Details (Equipment)",
                r::Situational, d::RepeatCount.bounded(12),
                b::Element(e::NotUsed,     "TD301"),
                b::Element(e::NotUsed,     "TD302"),
                b::Element(e::NotUsed,     "TD303"),
                b::Element(e::Situational, "Weight Qualifier", b::Values("G")),
                b::Element(e::Situational, "Weight"),
                b::Element(e::Situational, "Unit or Basis for Measurement Code", b::Values("LB"))
              ),
              b::Segment(1900, s::REF, "Reference Identification",
                r::Required, d::RepeatCount.unbounded,
                b::Element(e::Required,    "Reference Identification Qualifier", b::Values("CN")),
                b::Element(e::Situational, "Reference Identification")
              ),
              b::Segment(4000, s::FOB, "FOB Related Instructions",
                r::Required, d::RepeatCount.bounded(1),
                b::Element(e::Required, "Shipment Method of Payment"),
                b::Element(e::NotUsed, "Unused"),
                b::Element(e::NotUsed, "Unused"),
                b::Element(e::NotUsed, "Unused"),
                b::Element(e::NotUsed, "Unused")
              ),
              d::LoopDef.build("N1", d::RepeatCount.bounded(200),
                b::Segment(4300, s:: N1, "Name SEGMENT #1",
                  r::Required, d::RepeatCount.bounded(1),
                  b::Element(e::Required,    "Entity Identifier Code", b::Values("SF")),
                  b::Element(e::Optional,    "Name"),
                  b::Element(e::Required,    "Identification Code Qualifier", b::Values("ZZ")),
                  b::Element(e::Required,    "Identification Code")
                ),
                b::Segment(4600, s::N4, "Geographical Location",
                  r::Required, d::RepeatCount.bounded(1),
                  b::Element(e::Required, "City Name"),
                  b::Element(e::Situational, "State Or Province Code"),
                  b::Element(e::Required, "Postal Code"),
                  b::Element(e::Required, "Country Code")
                )
              ),
              d::LoopDef.build("N1", d::RepeatCount.bounded(200),
                b::Segment(5100, s:: N1, "Name SEGMENT #2",
                  r::Required, d::RepeatCount.bounded(1),
                  b::Element(e::Required, "Entity Identifier Code", b::Values("ST")),
                  b::Element(e::Optional, "Name"),
                  b::Element(e::Required, "Identification Code Qualifier", b::Values("15")),
                  b::Element(e::Required, "Identification Code")
                )
              )
            ),
            d::LoopDef.build("HL", d::RepeatCount.bounded(200000),
              b::Segment(7400, s:: HL, "Hierarchical Level",
                r::Required, d::RepeatCount.bounded(1),
                b::Element(e::Required,    "Hierarchical ID Number"),
                b::Element(e::Situational, "Hierarchical Parent ID Number"),
                b::Element(e::Required, "Hierarchical Level Code", b::Values("O")),
                b::Element(e::Situational, "Hierarchical Child Code")
              ),
              b::Segment(7800, s::PRF, "Purchase Order Reference",
                r::Required, d::RepeatCount.bounded(1),
                b::Element(e::Required, "Purchase Order Number")
              )
            ),
            d::LoopDef.build("HL", d::RepeatCount.bounded(200000),
              b::Segment(19500, s:: HL, "Hierarchical Level",
                r::Required, d::RepeatCount.bounded(1),
                b::Element(e::Required,    "Hierarchical ID Number"),
                b::Element(e::Situational, "Hierarchical Parent ID Number"),
                b::Element(e::Required, "Hierarchical Level Code", b::Values("I")),
                b::Element(e::Situational, "Hierarchical Child Code")
              ),
              b::Segment(19600, s::LIN, "Item Identification",
                r::Required, d::RepeatCount.bounded(1),
                b::Element(e::Required, "Assigned Identification"),
                b::Element(e::Required, "Product/Service ID Qualifier", b::Values("BP", "EN", "IB", "UA", "UK", "UP", "VN")),
                b::Element(e::Required, "Product/Service ID")
              ),
              b::Segment(19700, s::SN1, "Item Detail (Shipment)",
                r::Required, d::RepeatCount.bounded(1),
                b::Element(e::Optional,    "Assigned Identification"),
                b::Element(e::Required,    "Number of Units Shipped"),
                b::Element(e::Required,    "Unit or Basis for Measurement Code", b::Values("EA","CA","UN"))
              )
            )
          ),
          d::TableDef.summary("Summary",
            b::Segment(0100, s::CTT, "Transaction Totals",
              r::Situational, d::RepeatCount.bounded(1),
              b::Element(e::Required,    "Number of Line Items"),
              b::Element(e::Required, "Hash Total")
            ),
            b::Segment(0200, s:: SE, "Transaction Set Trailer",
              r::Required, d::RepeatCount.bounded(1),
              b::Element(e::Required,    "Number of Included Segments"),
              b::Element(e::Required,    "Transaction Set Control Number")
            )
          )
        )
      end
    end
  end
end