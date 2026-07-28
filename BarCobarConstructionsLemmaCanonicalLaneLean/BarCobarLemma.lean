import BarCobarConstructionsLemmaCanonicalLaneLean.BarConstruction
import BarCobarConstructionsLemmaCanonicalLaneLean.CobarConstruction

namespace HautevilleHouse
namespace BarCobarConstructionsLemmaCanonicalLaneLean

structure BarCobarLemmaPackage {B : BarConstructionPackage} {C : CobarConstructionPackage} where
  barCobarComparisonMap : Type u
  quasiIsomorphismProperty : Prop
  barCobarDualityCoherence : Prop

structure BarCobarLemmaEvidence {B : BarConstructionPackage} {C : CobarConstructionPackage}
    (L : BarCobarLemmaPackage B C) where
  quasiIsomorphismPropertyClosed : L.quasiIsomorphismProperty
  barCobarDualityCoherenceClosed : L.barCobarDualityCoherence

def BarCobarLemmaClosed {B : BarConstructionPackage} {C : CobarConstructionPackage}
    (L : BarCobarLemmaPackage B C) : Prop :=
  L.quasiIsomorphismProperty ∧ L.barCobarDualityCoherence

theorem bar_cobar_lemma_closed_from_evidence {B : BarConstructionPackage} {C : CobarConstructionPackage}
    (L : BarCobarLemmaPackage B C) (E : BarCobarLemmaEvidence L) : BarCobarLemmaClosed L := by
  exact And.intro E.quasiIsomorphismPropertyClosed E.barCobarDualityCoherenceClosed

end BarCobarConstructionsLemmaCanonicalLaneLean
end HautevilleHouse