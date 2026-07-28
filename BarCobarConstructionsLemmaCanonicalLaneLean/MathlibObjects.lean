import BarCobarConstructionsLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace BarCobarConstructionsLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure BarCobarSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BarCobarAdmittedObject where
  space : BarCobarSpace
  dgaStructure : Prop
  koszulDuality : Prop
  barCobarAdjunction : Prop
  conclusion : koszulDuality ∧ barCobarAdjunction

structure BarCobarEndgameState where
  object : BarCobarAdmittedObject

def BarCobarWitnessClosed (O : BarCobarAdmittedObject) : Prop :=
  O.koszulDuality ∧ O.barCobarAdjunction

end BarCobarConstructionsLemmaCanonicalLaneLean
end HautevilleHouse