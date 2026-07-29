import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMicrobialEcologyCanonicalLaneLean

structure MicrobialCommunityPackage where
  environmentType : Type u
  speciesList : List String
  abundanceVector : speciesList.length → ℕ
  diversityIndex : Prop
  richness : Prop
  evenness : Prop
  phylogeneticDistance : Prop
  communityAssemblyRules : Prop
  functionalGuilds : Prop

structure MicrobialCommunityEvidence (C : MicrobialCommunityPackage) where
  environmentTypeClosed : C.environmentType
  speciesListClosed : C.speciesList
  abundanceDefined : C.abundanceVector
  diversityIndexClosed : C.diversityIndex
  richnessClosed : C.richness
  evennessClosed : C.evenness
  phylogeneticDistanceClosed : C.phylogeneticDistance
  communityAssemblyRulesClosed : C.communityAssemblyRules
  functionalGuildsClosed : C.functionalGuilds

def MicrobialCommunityClosed (C : MicrobialCommunityPackage) : Prop :=
  C.diversityIndex ∧ C.richness ∧ C.evenness ∧ C.phylogeneticDistance ∧
  C.communityAssemblyRules ∧ C.functionalGuilds

theorem microbial_community_closed_from_evidence (C : MicrobialCommunityPackage)
    (E : MicrobialCommunityEvidence C) : MicrobialCommunityClosed C := by
  exact And.intro E.diversityIndexClosed
    (And.intro E.richnessClosed
      (And.intro E.evennessClosed
        (And.intro E.phylogeneticDistanceClosed
          (And.intro E.communityAssemblyRulesClosed
            E.functionalGuildsClosed))))

end EcologyMicrobialEcologyCanonicalLaneLean
end HautevilleHouse