import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSupergeometryLemmaCanonicalLaneLean

structure AdmittedObject where
  baseSpace : Type
  vectorBundle : Type
  superStructure : Prop
  connections : Prop
  curvatureForms : Prop
  conclusion : superStructure ∧ connections ∧ curvatureForms

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.superStructure ∧ A.object.connections ∧ A.object.curvatureForms) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ComplexSupergeometryLemmaCanonicalLaneLean
end HautevilleHouse