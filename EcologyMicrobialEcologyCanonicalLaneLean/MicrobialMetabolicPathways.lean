import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMicrobialEcologyCanonicalLaneLean

structure MetabolicPathwayPackage where
  pathwayName : String
  substrateList : List String
  productList : List String
  enzymeList : List String
  energyYield : ℕ
  thermodynamicFeasibility : Prop
  pathwayRegulation : Prop
  fluxBalance : Prop

structure MetabolicPathwayEvidence (P : MetabolicPathwayPackage) where
  substrateListClosed : P.substrateList
  productListClosed : P.productList
  enzymeListClosed : P.enzymeList
  energyYieldClosed : P.energyYield
  thermodynamicFeasibilityClosed : P.thermodynamicFeasibility
  pathwayRegulationClosed : P.pathwayRegulation
  fluxBalanceClosed : P.fluxBalance

def MetabolicPathwayClosed (P : MetabolicPathwayPackage) : Prop :=
  P.thermodynamicFeasibility ∧ P.pathwayRegulation ∧ P.fluxBalance

theorem metabolic_pathway_closed_from_evidence (P : MetabolicPathwayPackage)
    (E : MetabolicPathwayEvidence P) : MetabolicPathwayClosed P := by
  exact And.intro E.thermodynamicFeasibilityClosed
    (And.intro E.pathwayRegulationClosed E.fluxBalanceClosed)

end EcologyMicrobialEcologyCanonicalLaneLean
end HautevilleHouse