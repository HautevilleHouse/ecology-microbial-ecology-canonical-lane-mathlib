import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMicrobialEcologyCanonicalLaneLean

structure SuccessionStage (C : MicrobialCommunity) where
  time : Real
  communityState : C
  dominantSpecies : List C.species
  functionalTraits : List String

structure SuccessionTrajectory (C : MicrobialCommunity) where
  stages : List (SuccessionStage C)
  directionalChange : Prop
  endpointCommunity : C

structure SuccessionTrajectoryPackage {C : MicrobialCommunity} (T : SuccessionTrajectory C) where
  stagesDefined : Prop
  directionalChangeModeled : T.directionalChange
  endpointCommunityReached : Prop
  stagesClosed : stagesDefined
  directionalChangeClosed : directionalChangeModeled
  endpointClosed : endpointCommunityReached

structure SuccessionTrajectoryEvidence {C : MicrobialCommunity} {T : SuccessionTrajectory C} (P : SuccessionTrajectoryPackage T) where
  stagesClosed : P.stagesDefined
  directionalChangeClosed : P.directionalChangeModeled
  endpointClosed : P.endpointCommunityReached

def SuccessionTrajectoryClosed {C : MicrobialCommunity} {T : SuccessionTrajectory C} (P : SuccessionTrajectoryPackage T) : Prop :=
  P.stagesDefined ∧ P.directionalChangeModeled ∧ P.endpointCommunityReached

theorem succession_trajectory_closed_from_evidence {C : MicrobialCommunity} {T : SuccessionTrajectory C} (P : SuccessionTrajectoryPackage T) (E : SuccessionTrajectoryEvidence P) : SuccessionTrajectoryClosed P := by
  exact And.intro E.stagesClosed (And.intro E.directionalChangeClosed E.endpointClosed)

end EcologyMicrobialEcologyCanonicalLaneLean
end HautevilleHouse