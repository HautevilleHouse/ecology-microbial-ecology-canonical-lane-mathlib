import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMicrobialEcologyCanonicalLaneLean

structure SyntrophicInteractionsPackage where
  crossFeeding : Prop
  metaboliteExchange : Prop
  thermodynamicConstraint : Prop

structure SyntrophicInteractionsEvidence (S : SyntrophicInteractionsPackage) where
  crossFeedingClosed : S.crossFeeding
  metaboliteExchangeClosed : S.metaboliteExchange
  thermodynamicConstraintClosed : S.thermodynamicConstraint

def SyntrophicInteractionsClosed (S : SyntrophicInteractionsPackage) : Prop :=
  S.crossFeeding ∧ S.metaboliteExchange ∧ S.thermodynamicConstraint

theorem syntrophic_interactions_closed_from_evidence (S : SyntrophicInteractionsPackage) (E : SyntrophicInteractionsEvidence S) :
    SyntrophicInteractionsClosed S := by
  exact And.intro E.crossFeedingClosed (And.intro E.metaboliteExchangeClosed E.thermodynamicConstraintClosed)

end EcologyMicrobialEcologyCanonicalLaneLean
end HautevilleHouse
