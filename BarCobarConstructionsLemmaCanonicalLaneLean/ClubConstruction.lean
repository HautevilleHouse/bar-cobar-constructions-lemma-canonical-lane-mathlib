import canonicalLaneMathlib.AdmissibleClass

/-!
# Club Construction Package

This module defines the club construction underlying the Bar-Cobar lemma.
-/

namespace HautevilleHouse
namespace BarCobarConstructionsLemmaCanonicalLaneLean

structure ClubConstructionPackage where
  clubObject : Type u
  filtration : Nat → ClubObject
  limitObject : ClubObject
  resolutionProperty : Prop

def ClubConstructionClosed (C : ClubConstructionPackage) : Prop :=
  C.resolutionProperty

end BarCobarConstructionsLemmaCanonicalLaneLean
end HautevilleHouse