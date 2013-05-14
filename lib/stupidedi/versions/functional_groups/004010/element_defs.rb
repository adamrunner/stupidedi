module Stupidedi
  module Versions
    module FunctionalGroups
      module FortyTen
        module ElementDefs

          t = ElementTypes
          r = ElementReqs
          s = Schema

          E28   = t::Nn.new(:E28  , "Group Control Number"                 , 1, 9, 0)

          E66  = t::ID.new(:E92 , "Purchase Order Type Code"               , 1, 2,
            s::CodeList.build(
              "15" => "Standard Address Number (SAN)",
              "92" => "Assigned by Buyer or Buyer's Agent",
              "ZZ" => "Mutually Defined"))
          E67  = t::AN.new(:E67 , "Reference Identification"               , 2, 80)

          E92  = t::ID.new(:E92 , "Purchase Order Type Code"               , 2, 2,
            s::CodeList.build(
              "CN" => "Consigned Order",
              "NE" => "New Order",
              "NP" => "New Product Introduction",
              "RO" => "Rush Order"))

          E96   = t::Nn.new(:E96  , "Number of Included Segments"          , 1, 10, 0)
          E97   = t::Nn.new(:E97  , "Number of Transaction Sets Included"  , 1, 6, 0)
          E98   = t::ID.new(:E98  , "Entity Identifier Code"               , 2, 3,
            s::CodeList.build(
              "ST"  => "Ship To"))

          E124  = t::AN.new(:E124 , "Application Receiver's Code"          , 2, 15)

          E127  = t::AN.new(:E127 , "Reference Identification"             , 1, 30)
          E128  = t::ID.new(:E128 , "Reference Identification Qualifier"   , 2, 3,
            s::CodeList.build(
              "CR"  => "Customer Reference Number",
              "L1"  => "Letters or Notes",
              "PD"  => "Promotion/Deal Number"))

          E142  = t::AN.new(:E142 , "Application's Sender Code"            , 2, 15)
          E143  = t::ID.new(:E143 , "Transaction Set Identifier Number"    , 3, 3,
            s::CodeList.build(
              "277" => "Health Care Information Status Notification",
              "835" => "Health Care Claim Payment/Advice",
              "837" => "Health Care Claim"))

          E146  = t::ID.new(:E146 , "Shipment Method of Payment"           , 2, 2,
            s::CodeList.build(
              "BP" => "Paid by Buyer",
              "CC" => "Collect",
              "DF" => "Defined by Buyer and Seller",
              "FO" => "FOB Port of Call",
              "PP" => "Prepaid (By Seller)",
              "BP" => "Paid by Seller"))

          E212  = t:: R.new(:E212 , "Unit Price"                           , 1, 17)

          E234  = t::AN.new(:E234 , "Product/Service ID"                   , 1, 48)
          E235  = t::ID.new(:E235 , "Product/Service ID Qualifier"         , 2, 2,
            s::CodeList.build(
              "BP" => "Buyer's Part Number",
              "EN" => "European Article Number (EAN) (2-5-5-1)",
              "IB" => "International Standard Book Number (ISBN)",
              "UA" => "U.P.C./EAN Case Code (2-5-5)",
              "UK" => "U.P.C./EAN Shipping Container Code (1-2-5-5-1)",
              "UP" => "U.P.C. Consumer Package Code (1-5-5-1)",
              "VN" => "Vendor's (Seller's) Item Number"))

          E309  = t::ID.new(:E309 , "Location Qualifier"                   , 1, 2,
            s::CodeList.build(
              "OV" => "On Vessel (Free On Board [FOB] point)"))

          E324  = t::AN.new(:E324 , "Version Identifier"                   , 1, 22)

          E329  = t::ID.new(:E329 , "Transaction Set Control Number"       , 4, 9)
          E330  = t:: R.new(:E330 , "Quantity Ordered"                     , 1, 20)

          E334  = t::ID.new(:E334 , "Transportation Terms Qualifier Code"  , 2, 2,
            s::CodeList.build(
              "01" => "Incoterms"))
          E335  = t::ID.new(:E335 , "Transportation Terms Code"            , 3, 3,
            s::CodeList.build(
              "CFR" => "Cost and Freight",
              "CIF" => "Cost, Insurance, and Freight",
              "CIP" => "Carriage and Insurance Paid To",
              "CPT" => "Carriage Paid To",
              "DAF" => "Delivered at Frontier",
              "DDP" => "Delivered Duty Paid",
              "DDU" => "Deliver Duty Unpaid",
              "EXW" => "Ex Works",
              "FCA" => "Free Carrier",
              "FOB" => "Free on Board"))

          E337  = t::TM.new(:E337 , "Time"                                 , 4, 8)

          E347  = t:: R.new(:E347 , "Hash Total"                           , 1, 10)

          E349  = t::ID.new(:E349 , "Item Description Type"                , 1, 1,
            s::CodeList.build(
              "F" => "Free-form"))
          E350  = t::AN.new(:E350 , "Assigned Identification"              , 1, 20)

          E352  = t::AN.new(:E352 , "Description"                          , 1, 80)
          E353  = t::ID.new(:E353 , "Transaction Set Purpose Code"         , 2, 2,
            s::CodeList.build(
              "00" => "Original"))
          E354  = t::Nn.new(:E354 , "Number of Line Items"                 , 1, 6, 0)

          E355  = t::ID.new(:E355 , "Unit or Basis for Measurement Code"   , 2, 2,
            s::CodeList.build(
              "CA" => "Case",
              "EA" => "Each",
              "PE" => "Pounds Equivalent",
              "UN" => "Unit"))

          E373  = t::DT.new(:E373 , "Date"                                 , 8, 8)
          E374  = t::ID.new(:E374 , "Date/Time Qualifier"                  , 3, 3,
            s::CodeList.build(
              "063" => "Do Not Deliver After",
              "064" => "Do Not Deliver Before"))

          E455  = t::ID.new(:E455 , "Responsible Agency Code"              , 1, 2,
            s::CodeList.build(
              "X" => "Accredited Standards Committee X12"))

          E479  = t::ID.new(:E479 , "Functional Identifier Code"           , 2, 2,
            s::CodeList.build(
              "PO" => "Purchase Order (850)"))

          E480  = t::AN.new(:E480 , "Version / Release / Identifier Code"  , 1, 12,
            s::CodeList.external("881"))

          E563  = t::ID.new(:E563 , "Sales Requirement Code"               , 1, 2,
            s::CodeList.build(
              "N" => "No Back Order",
              "Y" => "Back Order if Out of Stock"))

          E639  = t::ID.new(:E639 , "Basis of Unit Price Code"             , 2, 2,
            s::CodeList.build(
              "PE" => "Price per Each"))

          E753  = t::ID.new(:E753 , "Packaging Characteristic Code"        , 1, 5,
            s::CodeList.build(
              "CS" => "Container Shape"))

          E933  = t::AN.new(:E933 , "Free-form Message Text"               , 1, 264)

        end
      end
    end
  end
end
