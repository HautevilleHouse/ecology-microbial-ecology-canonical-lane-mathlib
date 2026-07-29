import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EcologyMicrobialEcologyCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.EcologyMicrobialEcologyCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EcologyMicrobialEcologyCanonicalLaneLean

def ConstrainedMicrobialEcologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_microbial_ecology_endgame (A : AdmissibleClass) :
    ConstrainedMicrobialEcologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EcologyMicrobialEcologyCanonicalLaneLean
end HautevilleHouse