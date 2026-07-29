import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMicrobialEcologyCanonicalLaneLean

structure NicheConstructionPackage where
  environmentalModification : Type u
  feedbackLoopStrength : ℕ
  ecosystemEngineering : Prop
  nicheVolume : Prop
  traitEvolution : Prop
  ecoEvolutionaryFeedback : Prop

def NicheConstructionClosed (N : NicheConstructionPackage) : Prop :=
  N.ecosystemEngineering ∧ N.nicheVolume ∧ N.traitEvolution ∧ N.ecoEvolutionaryFeedback

theorem niche_construction_closed (N : NicheConstructionPackage) : NicheConstructionClosed N :=
  And.intro N.ecosystemEngineering
    (And.intro N.nicheVolume
      (And.intro N.traitEvolution N.ecoEvolutionaryFeedback))

end EcologyMicrobialEcologyCanonicalLaneLean
end HautevilleHouse