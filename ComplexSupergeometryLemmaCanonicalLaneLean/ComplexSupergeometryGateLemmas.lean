import ComplexSupergeometryLemmaCanonicalLaneLean.ComplexSupergeometryBridgeLemmas

namespace HautevilleHouse
namespace ComplexSupergeometryLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end ComplexSupergeometryLemmaCanonicalLaneLean
end HautevilleHouse