import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMicrobialEcologyCanonicalLaneLean

structure MicrobialInteractionNetworkPackage where
  networkTopology : Type u
  interactionStrengthMatrix : Type v
  keystoneTaxaIdentified : Prop
  crossFeedingEdgesMapped : Prop
  competitiveExclusionBalanced : Prop
  networkRobustness : Prop

def microbialInteractionNetworkClosed (N : MicrobialInteractionNetworkPackage) : Prop :=
  N.keystoneTaxaIdentified ∧ N.crossFeedingEdgesMapped ∧ N.competitiveExclusionBalanced ∧ N.networkRobustness

structure MicrobialInteractionNetworkEvidence (N : MicrobialInteractionNetworkPackage) where
  keystoneTaxaIdentifiedClosed : N.keystoneTaxaIdentified
  crossFeedingEdgesMappedClosed : N.crossFeedingEdgesMapped
  competitiveExclusionBalancedClosed : N.competitiveExclusionBalanced
  networkRobustnessClosed : N.networkRobustness

theorem microbial_interaction_network_closed_from_evidence (N : MicrobialInteractionNetworkPackage) (E : MicrobialInteractionNetworkEvidence N) :
    microbialInteractionNetworkClosed N := by
  exact And.intro E.keystoneTaxaIdentifiedClosed
    (And.intro E.crossFeedingEdgesMappedClosed
      (And.intro E.competitiveExclusionBalancedClosed E.networkRobustnessClosed))

end EcologyMicrobialEcologyCanonicalLaneLean
end HautevilleHouse