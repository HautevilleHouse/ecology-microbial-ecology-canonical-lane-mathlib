import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMicrobialEcologyCanonicalLaneLean

structure MicrobialDiversityPackage where
  alphaDiversity : Prop
  betaDiversity : Prop
  gammaDiversity : Prop
  phylogeneticDiversity : Prop

structure MicrobialDiversityEvidence (D : MicrobialDiversityPackage) where
  alphaDiversityClosed : D.alphaDiversity
  betaDiversityClosed : D.betaDiversity
  gammaDiversityClosed : D.gammaDiversity
  phylogeneticDiversityClosed : D.phylogeneticDiversity

def MicrobialDiversityClosed (D : MicrobialDiversityPackage) : Prop :=
  D.alphaDiversity ∧ D.betaDiversity ∧ D.gammaDiversity ∧ D.phylogeneticDiversity

theorem microbial_diversity_closed_from_evidence (D : MicrobialDiversityPackage) (E : MicrobialDiversityEvidence D) :
    MicrobialDiversityClosed D := by
  exact And.intro E.alphaDiversityClosed (And.intro E.betaDiversityClosed (And.intro E.gammaDiversityClosed E.phylogeneticDiversityClosed))

end EcologyMicrobialEcologyCanonicalLaneLean
end HautevilleHouse
