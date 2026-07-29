import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSupergeometryLemmaCanonicalLaneLean

structure ComplexSupermanifold where
  underlying : Type u
  topology : TopologicalSpace underlying
  structureSheaf : Type v
  localModel : Type w
  bosonicDimension : Nat
  fermionicDimension : Nat
  bosonicDimensionTerm : bosonicDimension = 0 ∨ bosonicDimension = 1 ∨ bosonicDimension = 2 ∨ bosonicDimension = 3
  fermionicDimensionTerm : fermionicDimension = 1 ∨ fermionicDimension = 2

structure ComplexSupergeometryPackage where
  manifold : ComplexSupermanifold
  connection : Type u
  curvature : Type v
  ricciFlat : Prop
  kahlerCondition : Prop
  ricciFlatTerm : ricciFlat
  kahlerConditionTerm : kahlerCondition

def ComplexSupergeometryClosed (P : ComplexSupergeometryPackage) : Prop :=
  P.ricciFlat ∧ P.kahlerCondition

end ComplexSupergeometryLemmaCanonicalLaneLean
end HautevilleHouse