import canonicalLaneMathlib.AdmissibleClass
import BarCobarConstructionsLemmaCanonicalLaneLean.BarCobarAdjunction

namespace HautevilleHouse
namespace BarCobarConstructionsLemmaCanonicalLaneLean

def ConstrainedBarCobarClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_bar_cobar_endgame (A : AdmissibleClass) :
    ConstrainedBarCobarClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BarCobarConstructionsLemmaCanonicalLaneLean
end HautevilleHouse