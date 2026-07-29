import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMicrobialEcologyCanonicalLaneLean

structure MicrobialInteraction (C : MicrobialCommunity) where
  interactionType : String  -- mutualism, competition, predation
  strength : C.species -> C.species -> Real
  sign : C.species -> C.species -> Int  -- +1, -1, 0

structure InteractionNetwork {C : MicrobialCommunity} (I : MicrobialInteraction C) where
  adjacencyMatrix : C.species -> C.species -> Real
  networkProperties : Prop
  stability : Prop

structure InteractionNetworkPackage {C : MicrobialCommunity} {I : MicrobialInteraction C} (N : InteractionNetwork I) where
  adjacencyMatrixBuilt : Prop
  networkPropertiesComputed : N.networkProperties
  stabilityComputed : N.stability
  adjacencyMatrixClosed : adjacencyMatrixBuilt
  networkPropertiesClosed : networkPropertiesComputed
  stabilityClosed : stabilityComputed

structure InteractionNetworkEvidence {C : MicrobialCommunity} {I : MicrobialInteraction C} {N : InteractionNetwork I} (P : InteractionNetworkPackage N) where
  adjacencyMatrixClosed : P.adjacencyMatrixBuilt
  networkPropertiesClosed : P.networkPropertiesComputed
  stabilityClosed : P.stabilityComputed

def InteractionNetworkClosed {C : MicrobialCommunity} {I : MicrobialInteraction C} {N : InteractionNetwork I} (P : InteractionNetworkPackage N) : Prop :=
  P.adjacencyMatrixBuilt ∧ P.networkPropertiesComputed ∧ P.stabilityComputed

theorem interaction_network_closed_from_evidence {C : MicrobialCommunity} {I : MicrobialInteraction C} {N : InteractionNetwork I} (P : InteractionNetworkPackage N) (E : InteractionNetworkEvidence P) : InteractionNetworkClosed P := by
  exact And.intro E.adjacencyMatrixClosed (And.intro E.networkPropertiesClosed E.stabilityClosed)

end EcologyMicrobialEcologyCanonicalLaneLean
end HautevilleHouse