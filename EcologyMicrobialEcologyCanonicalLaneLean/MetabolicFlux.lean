import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMicrobialEcologyCanonicalLaneLean

structure MetabolicPathway where
  metabolites : List String
  reactions : List (String × List String × List String)  -- (name, substrates, products)
  fluxRates : String -> Real

structure MetabolicModel (C : MicrobialCommunity) where
  pathways : C.species -> MetabolicPathway
  crossFeeding : List (C.species × C.species × String)  -- donor, receiver, metabolite
  modeledBy : Prop

structure MetabolicModelPackage {C : MicrobialCommunity} (M : MetabolicModel C) where
  pathwaysDefined : Prop
  crossFeedingDefined : Prop
  modeledByClosed : M.modeledBy
  pathwaysClosed : pathwaysDefined
  crossFeedingClosed : crossFeedingDefined

structure MetabolicModelEvidence {C : MicrobialCommunity} {M : MetabolicModel C} (P : MetabolicModelPackage M) where
  pathwaysClosed : P.pathwaysDefined
  crossFeedingClosed : P.crossFeedingDefined
  modeledByClosed : P.modeledByClosed

def MetabolicModelClosed {C : MicrobialCommunity} {M : MetabolicModel C} (P : MetabolicModelPackage M) : Prop :=
  P.pathwaysDefined ∧ P.crossFeedingDefined ∧ P.modeledByClosed

theorem metabolic_model_closed_from_evidence {C : MicrobialCommunity} {M : MetabolicModel C} (P : MetabolicModelPackage M) (E : MetabolicModelEvidence P) : MetabolicModelClosed P := by
  exact And.intro E.pathwaysClosed (And.intro E.crossFeedingClosed E.modeledByClosed)

end EcologyMicrobialEcologyCanonicalLaneLean
end HautevilleHouse