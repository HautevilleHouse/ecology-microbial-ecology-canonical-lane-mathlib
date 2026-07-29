import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMicrobialEcologyCanonicalLaneLean

structure InteractionPackage where
  mutualism : Prop
  competition : Prop
  predation : Prop
  commensalism : Prop
  interactionNetwork : Type u

structure InteractionEvidence (I : InteractionPackage) where
  mutualismClosed : I.mutualism
  competitionClosed : I.competition
  predationClosed : I.predation
  commensalismClosed : I.commensalism

def InteractionClosed (I : InteractionPackage) : Prop :=
  I.mutualism ∧ I.competition ∧ I.predation ∧ I.commensalism

theorem interaction_closed_from_evidence (I : InteractionPackage) (E : InteractionEvidence I) :
    InteractionClosed I := by
  exact And.intro E.mutualismClosed (And.intro E.competitionClosed (And.intro E.predationClosed E.commensalismClosed))

end EcologyMicrobialEcologyCanonicalLaneLean
end HautevilleHouse