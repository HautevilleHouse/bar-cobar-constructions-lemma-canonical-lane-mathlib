import BarCobarConstructionsLemmaCanonicalLaneLean.Cobar

/-!
# Twisting Morphism Package
-/

namespace HautevilleHouse
namespace BarCobarConstructionsLemmaCanonicalLaneLean

structure TwistingMorphismPackage {G : CoalgebraPackage}
    (F : CobarConstructionPackage G) where
  twistingMorphism : Prop
  maurerCartanEquation : Prop
  acyclicity : Prop

structure TwistingMorphismEvidence {G : CoalgebraPackage}
    {F : CobarConstructionPackage G} (T : TwistingMorphismPackage F) where
  twistingMorphismClosed : T.twistingMorphism
  maurerCartanEquationClosed : T.maurerCartanEquation
  acyclicityClosed : T.acyclicity

def TwistingMorphismClosed {G : CoalgebraPackage}
    {F : CobarConstructionPackage G} (T : TwistingMorphismPackage F) : Prop :=
  T.twistingMorphism ∧ T.maurerCartanEquation ∧ T.acyclicity

theorem twisting_morphism_closed_from_evidence
    {G : CoalgebraPackage} {F : CobarConstructionPackage G}
    (T : TwistingMorphismPackage F) (E : TwistingMorphismEvidence T) :
    TwistingMorphismClosed T := by
  exact And.intro E.twistingMorphismClosed
    (And.intro E.maurerCartanEquationClosed E.acyclicityClosed)

end BarCobarConstructionsLemmaCanonicalLaneLean
end HautevilleHouse
