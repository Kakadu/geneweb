open Def;
open Printf;

value string_of_pevent_name f e : string =
  match e with
  [ Epers_Name s -> f s
  | Epers_Birth -> "Epers_Birth"
  | Epers_Baptism -> "Epers_Baptism"
  | Epers_Death -> "Epers_Death"
  | Epers_Burial -> "Epers_Burial"
  | Epers_Cremation -> "Epers_Cremation"
  | Epers_Accomplishment -> "Epers_Accomplishment"
  | Epers_Acquisition -> "Epers_Acquisition"
  | Epers_Adhesion -> "Epers_Adhesion"
  | Epers_BaptismLDS -> "Epers_BaptismLDS"
  | Epers_BarMitzvah -> "Epers_BarMitzvah"
  | Epers_BatMitzvah -> "Epers_BatMitzvah"
  | Epers_Benediction -> "Epers_Benediction"
  | Epers_ChangeName -> "Epers_ChangeName"
  | Epers_Circumcision -> "Epers_Circumcision"
  | Epers_Confirmation -> "Epers_Confirmation"
  | Epers_ConfirmationLDS -> "Epers_ConfirmationLDS"
  | Epers_Decoration -> "Epers_Decoration"
  | Epers_DemobilisationMilitaire -> "Epers_DemobilisationMilitaire"
  | Epers_Diploma -> "Epers_Diploma"
  | Epers_Distinction -> "Epers_Distinction"
  | Epers_Dotation -> "Epers_Dotation"
  | Epers_DotationLDS -> "Epers_DotationLDS"
  | Epers_Education -> "Epers_Education"
  | Epers_Election -> "Epers_Election"
  | Epers_Emigration -> "Epers_Emigration"
  | Epers_Excommunication -> "Epers_Excommunication"
  | Epers_FamilyLinkLDS -> "Epers_FamilyLinkLDS"
  | Epers_FirstCommunion -> "Epers_FirstCommunion"
  | Epers_Funeral -> "Epers_Funeral"
  | Epers_Graduate -> "Epers_Graduate"
  | Epers_Hospitalisation -> "Epers_Hospitalisation"
  | Epers_Illness -> "Epers_Illness"
  | Epers_Immigration -> "Epers_Immigration"
  | Epers_ListePassenger -> "Epers_ListePassenger"
  | Epers_MilitaryDistinction -> "Epers_MilitaryDistinction"
  | Epers_MilitaryPromotion -> "Epers_MilitaryPromotion"
  | Epers_MilitaryService -> "Epers_MilitaryService"
  | Epers_MobilisationMilitaire -> "Epers_MobilisationMilitaire"
  | Epers_Naturalisation -> "Epers_Naturalisation"
  | Epers_Occupation -> "Epers_Occupation"
  | Epers_Ordination -> "Epers_Ordination"
  | Epers_Property -> "Epers_Property"
  | Epers_Recensement -> "Epers_Recensement"
  | Epers_Residence -> "Epers_Residence"
  | Epers_Retired -> "Epers_Retired"
  | Epers_ScellentChildLDS -> "Epers_ScellentChildLDS"
  | Epers_ScellentParentLDS -> "Epers_ScellentParentLDS"
  | Epers_ScellentSpouseLDS -> "Epers_ScellentSpouseLDS"
  | Epers_VenteBien -> "Epers_VenteBien"
  | Epers_Will -> "Epers_Will"
  ]
;

value string_of_pevent f e =
  sprintf "'%s' [%s]" (string_of_pevent_name f e.epers_name) ""
;

value string_of_event_weight = fun
  [ Some w -> sprintf "Some %02d" w
  | None -> "None   " ]
;