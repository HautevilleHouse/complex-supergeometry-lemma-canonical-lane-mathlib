import ComplexSupergeometryLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ComplexSupergeometryLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : ComplexSupergeometryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ComplexSupergeometryWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ComplexSupergeometryLemmaCanonicalLaneLean
end HautevilleHouse