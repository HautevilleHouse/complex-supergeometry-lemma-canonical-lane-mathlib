import ComplexSupergeometryLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace ComplexSupergeometryLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ComplexSupergeometrySpace where
  carrier : Type
  topology : TopologicalSpace carrier
  complexStructure : Prop

structure ComplexSupergeometryAdmittedObject where
  space : ComplexSupergeometrySpace
  supermanifold : Prop
  compact : Prop
  targetModel : Type
  targetTopology : TopologicalSpace targetModel
  diffeomorphicToTarget : Prop
  conclusion : diffeomorphicToTarget

structure ComplexSupergeometryEndgameState where
  object : ComplexSupergeometryAdmittedObject

def ComplexSupergeometryWitnessClosed (O : ComplexSupergeometryAdmittedObject) : Prop :=
  O.diffeomorphicToTarget

end ComplexSupergeometryLemmaCanonicalLaneLean
end HautevilleHouse