import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMicrobialEcologyCanonicalLaneLean

structure BiogeochemicalCyclingPackage where
  elementCycles : Type u
  redoxReactions : Type v
  nutrientFluxRates : Prop
  microbialDriverIdentification : Prop
  stoichiometricConstraints : Prop
  globalClimateFeedbacks : Prop

def biogeochemicalCyclingClosed (B : BiogeochemicalCyclingPackage) : Prop :=
  B.nutrientFluxRates ∧ B.microbialDriverIdentification ∧ B.stoichiometricConstraints ∧ B.globalClimateFeedbacks

structure BiogeochemicalCyclingEvidence (B : BiogeochemicalCyclingPackage) where
  nutrientFluxRatesClosed : B.nutrientFluxRates
  microbialDriverIdentificationClosed : B.microbialDriverIdentification
  stoichiometricConstraintsClosed : B.stoichiometricConstraints
  globalClimateFeedbacksClosed : B.globalClimateFeedbacks

theorem biogeochemical_cycling_closed_from_evidence (B : BiogeochemicalCyclingPackage) (E : BiogeochemicalCyclingEvidence B) :
    biogeochemicalCyclingClosed B := by
  exact And.intro E.nutrientFluxRatesClosed
    (And.intro E.microbialDriverIdentificationClosed
      (And.intro E.stoichiometricConstraintsClosed E.globalClimateFeedbacksClosed))

end EcologyMicrobialEcologyCanonicalLaneLean
end HautevilleHouse