import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BarCobarConstructionsLemmaCanonicalLaneLean

open HautevilleHouse.BarCobarConstructionsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BarConstructionClosed A.object.bar ∧ CobarConstructionClosed A.object.cobar

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  -- Assume A.object contains bar and cobar evidence; we use the evidence fields
  exact And.intro (bar_construction_closed_from_evidence A.object.bar A.object.barEvidence)
    (cobar_construction_closed_from_evidence A.object.cobar A.object.cobarEvidence)

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

structure BarCobarAdjunctionPackage where
  adjunctionNatural : Prop
  unitMapDefined : Prop
  counitMapDefined : Prop
  triangleIdentities : Prop

structure BarCobarAdjunctionEvidence (A : BarCobarAdjunctionPackage) where
  adjunctionNaturalClosed : A.adjunctionNatural
  unitMapDefinedClosed : A.unitMapDefined
  counitMapDefinedClosed : A.counitMapDefined
  triangleIdentitiesClosed : A.triangleIdentities

def BarCobarAdjunctionClosed (A : BarCobarAdjunctionPackage) : Prop :=
  A.adjunctionNatural ∧ A.unitMapDefined ∧ A.counitMapDefined ∧ A.triangleIdentities

theorem bar_cobar_adjunction_closed_from_evidence (A : BarCobarAdjunctionPackage) (E : BarCobarAdjunctionEvidence A) :
    BarCobarAdjunctionClosed A := by
  exact And.intro E.adjunctionNaturalClosed
    (And.intro E.unitMapDefinedClosed
      (And.intro E.counitMapDefinedClosed E.triangleIdentitiesClosed))

end BarCobarConstructionsLemmaCanonicalLaneLean
end HautevilleHouse