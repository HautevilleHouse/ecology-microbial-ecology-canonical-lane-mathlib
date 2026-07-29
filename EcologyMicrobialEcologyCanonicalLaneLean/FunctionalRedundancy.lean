import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMicrobialEcologyCanonicalLaneLean

structure FunctionalRedundancyPackage where
  metabolicDiversity : Prop
  speciesPool : Nat
  functionalGenes : Nat
  redundancyRatio : Prop

structure FunctionalRedundancyEvidence (R : FunctionalRedundancyPackage) where
  metabolicDiversityClosed : R.metabolicDiversity
  speciesPoolClosed : R.speciesPool = R.speciesPool
  functionalGenesClosed : R.functionalGenes = R.functionalGenes
  redundancyRatioClosed : R.redundancyRatio

def FunctionalRedundancyClosed (R : FunctionalRedundancyPackage) : Prop :=
  R.metabolicDiversity ∧ R.redundancyRatio

theorem functional_redundancy_closed_from_evidence (R : FunctionalRedundancyPackage) (E : FunctionalRedundancyEvidence R) :
    FunctionalRedundancyClosed R := by
  exact And.intro E.metabolicDiversityClosed E.redundancyRatioClosed

end EcologyMicrobialEcologyCanonicalLaneLean
end HautevilleHouse
