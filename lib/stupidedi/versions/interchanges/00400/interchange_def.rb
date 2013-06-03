module Stupidedi
  module Versions
    module Interchanges

      #
      # @see Values::InterchangeDef
      #
      module FourHundred

        s = Schema
        r = FunctionalGroups::FortyTen::ElementReqs

        InterchangeDef = Class.new(Schema::InterchangeDef) do
          # @group Constructors
          #####################################################################

          # @return [Values::InterchangeVal]
          def empty(separators)
            Values::InterchangeVal.new(self, [], separators)
          end

          # @endgroup
          #####################################################################

          # @return [Module]
          def segment_dict
            SegmentDefs
          end

          # @return [Reader::Separators]
          def separators(isa)
            Reader::Separators.new(isa.element(16).to_s, nil, nil, nil)
          end
        end.new "00400",
          # Interchange header
          [ SegmentDefs::ISA.use(1, r::Mandatory, s::RepeatCount.bounded(1))],

          # Interchange trailer
          [ SegmentDefs::IEA.use(5, r::Mandatory, s::RepeatCount.bounded(1)) ]

      end
    end
  end
end
