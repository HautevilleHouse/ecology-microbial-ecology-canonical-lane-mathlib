import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMicrobialEcologyCanonicalLaneLean

structure NoncollapsingPackage (D : DiversityIndexPackage) where
  scaleInvariantAbundanceBound : Prop
  richnessStability : Prop
  extinctionThreshold : Prop

structure NoncollapsingEvidence {D : DiversityIndexPackage} (N : NoncollapsingPackage D) where
  scaleInvariantAbundanceBoundClosed : N.scaleInvariantAbundanceBound
  richnessStabilityClosed : N.richnessStability
  extinctionThresholdClosed : N.extinctionThreshold

def NoncollapsingClosed {D : DiversityIndexPackage} (N : NoncollapsingPackage D) : Prop :=
  N.scaleInvariantAbundanceBound ∧ N.richnessStability ∧ N.extinctionThreshold

theorem noncollapsing_closed_from_evidence
    {D : DiversityIndexPackage} (N : NoncollapsingPackage D)
    (E : NoncollapsingEvidence N) : NoncollapsingClosed N := by
  exact And.intro E.scaleInvariantAbundanceBoundClosed
    (And.intro E.richnessStabilityClosed E.extinctionThresholdClosed)

end EcologyMicrobialEcologyCanonicalLaneLean
end HautevilleHouse