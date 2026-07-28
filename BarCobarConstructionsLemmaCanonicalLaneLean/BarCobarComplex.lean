import BarCobarConstructionsLemmaCanonicalLaneLean.TwistingMorphism

/-!
# Bar-Cobar Complex Package
-/

namespace HautevilleHouse
namespace BarCobarConstructionsLemmaCanonicalLaneLean

structure BarCobarComplexPackage {G : CoalgebraPackage}
    {F : TwistingMorphismPackage G} (S : BarCobarConstructionPackage F) where
  barConstruction : Prop
  cobarConstruction : Prop
  adjunction : Prop
  quasiIsomorphism : Prop

structure BarCobarComplexEvidence {G : CoalgebraPackage}
    {F : TwistingMorphismPackage G} {S : BarCobarConstructionPackage F}
    (C : BarCobarComplexPackage S) where
  barConstructionClosed : C.barConstruction
  cobarConstructionClosed : C.cobarConstruction
  adjunctionClosed : C.adjunction
  quasiIsomorphismClosed : C.quasiIsomorphism

def BarCobarComplexClosed {G : CoalgebraPackage}
    {F : TwistingMorphismPackage G} {S : BarCobarConstructionPackage F}
    (C : BarCobarComplexPackage S) : Prop :=
  C.barConstruction ∧ C.cobarConstruction ∧
  C.adjunction ∧ C.quasiIsomorphism

theorem bar_cobar_complex_closed_from_evidence
    {G : CoalgebraPackage} {F : TwistingMorphismPackage G}
    {S : BarCobarConstructionPackage F} (C : BarCobarComplexPackage S)
    (E : BarCobarComplexEvidence C) : BarCobarComplexClosed C := by
  exact And.intro E.barConstructionClosed
    (And.intro E.cobarConstructionClosed
      (And.intro E.adjunctionClosed E.quasiIsomorphismClosed))

end BarCobarConstructionsLemmaCanonicalLaneLean
end HautevilleHouse
