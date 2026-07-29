import HautevilleHouse.EcologyMicrobialEcologyCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace EcologyMicrobialEcologyCanonicalLaneLean

structure AdmissibleClass where
  object : EcologyMicrobialEcologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EcologyMicrobialEcologyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EcologyMicrobialEcologyCanonicalLaneLean
end HautevilleHouse