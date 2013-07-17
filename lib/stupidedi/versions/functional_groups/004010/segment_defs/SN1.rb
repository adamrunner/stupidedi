module Stupidedi
  module Versions
    module FunctionalGroups
      module FortyTen
        module SegmentDefs

          s = Schema
          e = ElementDefs
          r = ElementReqs

          SN1 = s::SegmentDef.build(:SN1, "Item Detail (Shipment)",
            "Item Detail (Shipment)",
            e::E350.simple_use(r::Optional,  s::RepeatCount.bounded(1)),
            e::E382.simple_use(r::Mandatory, s::RepeatCount.bounded(1)),
            e::E355.simple_use(r::Mandatory, s::RepeatCount.bounded(1))
          )

        end
      end
    end
  end
end
