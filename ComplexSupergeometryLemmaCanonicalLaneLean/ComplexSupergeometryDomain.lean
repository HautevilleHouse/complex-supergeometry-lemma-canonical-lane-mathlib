import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSupergeometryLemmaCanonicalLaneLean

structure AdmittedComplexSupermanifold where
  carrier : Type
  topology : TopologicalSpace carrier
  sheaf : Type
  oddDimension : Nat
  evenDimension : Nat
  superstructure : Prop
  conclusion : superstructure

structure AdmissibleClass where
  object : AdmittedComplexSupermanifold
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end ComplexSupergeometryLemmaCanonicalLaneLean
end HautevilleHouse