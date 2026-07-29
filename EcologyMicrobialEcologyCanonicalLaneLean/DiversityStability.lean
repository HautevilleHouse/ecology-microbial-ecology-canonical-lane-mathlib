import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMicrobialEcologyCanonicalLaneLean

structure DiversityStabilityRelationship (C : MicrobialCommunity) where
  diversityMeasures : List (String × Real)
  stabilityMeasures : List (String × Real)
  correlation : Real
  relationshipModeled : Prop

struct DiversityStabilityPackage {C : MicrobialCommunity} (R : DiversityStabilityRelationship C) where
  diversityMeasuresComputed : Prop
  stabilityMeasuresComputed : Prop
  correlationComputed : R.correlation = 0.0 → False
  relationshipModeledClosed : R.relationshipModeled
  diversityMeasuresClosed : diversityMeasuresComputed
  stabilityMeasuresClosed : stabilityMeasuresComputed
  correlationClosed : correlationComputed

structure DiversityStabilityEvidence {C : MicrobialCommunity} {R : DiversityStabilityRelationship C} (P : DiversityStabilityPackage R) where
  diversityMeasuresClosed : P.diversityMeasuresComputed
  stabilityMeasuresClosed : P.stabilityMeasuresComputed
  correlationClosed : P.correlationComputed
  relationshipModeledClosed : P.relationshipModeledClosed

def DiversityStabilityClosed {C : MicrobialCommunity} {R : DiversityStabilityRelationship C} (P : DiversityStabilityPackage R) : Prop :=
  P.diversityMeasuresComputed ∧ P.stabilityMeasuresComputed ∧ P.correlationComputed ∧ P.relationshipModeledClosed

theorem diversity_stability_closed_from_evidence {C : MicrobialCommunity} {R : DiversityStabilityRelationship C} (P : DiversityStabilityPackage R) (E : DiversityStabilityEvidence P) : DiversityStabilityClosed P := by
  exact And.intro E.diversityMeasuresClosed (And.intro E.stabilityMeasuresClosed (And.intro E.correlationClosed E.relationshipModeledClosed))

end EcologyMicrobialEcologyCanonicalLaneLean
end HautevilleHouse