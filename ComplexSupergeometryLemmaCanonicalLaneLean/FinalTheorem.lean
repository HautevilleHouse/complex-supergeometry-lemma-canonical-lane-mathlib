import canonicalLaneMathlib.AdmissibleClass
import ComplexSupergeometryLemmaCanonicalLaneLean.ComplexSuperLemmaBridge
import ComplexSupergeometryLemmaCanonicalLaneLean.ComplexSuperLemmaGate

namespace HautevilleHouse
namespace ComplexSupergeometryLemmaCanonicalLaneLean

def ConstrainedComplexSupergeometryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_complex_supergeometry_endgame (A : AdmissibleClass) :
    ConstrainedComplexSupergeometryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ComplexSupergeometryLemmaCanonicalLaneLean
end HautevilleHouse
