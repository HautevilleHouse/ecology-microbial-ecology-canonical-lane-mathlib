import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMicrobialEcologyCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MicrobialCommunity where
  speciesRichness : Nat
  evenness : ℝ
  trophicStructure : Prop

structure MicrobialSite where
  location : String
  habitatType : String
  community : MicrobialCommunity

structure EcologyAdmittedObject where
  site : MicrobialSite
  environmentalDataCollected : Prop
  diversityIndexComputed : Prop
  nutrientCyclingModeled : Prop
  conclusion : diversityIndexComputed ∧ nutrientCyclingModeled

structure EcologyEndgameState where
  object : EcologyAdmittedObject

def EcologyWitnessClosed (O : EcologyAdmittedObject) : Prop :=
  O.diversityIndexComputed ∧ O.nutrientCyclingModeled

end EcologyMicrobialEcologyCanonicalLaneLean
end HautevilleHouse