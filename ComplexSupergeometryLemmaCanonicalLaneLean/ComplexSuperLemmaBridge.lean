import canonicalLaneMathlib.AdmissibleClass
import ComplexSupergeometryLemmaCanonicalLaneLean.ComplexSheafModel

namespace HautevilleHouse
namespace ComplexSupergeometryLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let M := A.object
  supercommutativeAlgebraClosed M

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end ComplexSupergeometryLemmaCanonicalLaneLean
end HautevilleHouse
