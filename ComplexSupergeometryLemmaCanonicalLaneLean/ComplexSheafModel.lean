import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSupergeometryLemmaCanonicalLaneLean

structure ComplexSupermanifold where
  bosonicManifold : Type u
  fermionicSheaf : Type v
  bosonicTopology : TopologicalSpace bosonicManifold
  structureSheaf : bosonicManifold → Type w
  supercommutativeAlgebra : Prop
  localModelIsC^{∞|Λ} : Prop

def supercommutativeAlgebraClosed (M : ComplexSupermanifold) : Prop :=
  M.supercommutativeAlgebra ∧ M.localModelIsC^{∞|Λ}

structure ComplexSupergeometryEvidence (M : ComplexSupermanifold) where
  algebraClosed : supercommutativeAlgebraClosed M
  fermionicSheafGraded : Prop
  fermionicSheafGradedClosed : fermionicSheafGraded

theorem complex_supergeometry_closed (M : ComplexSupermanifold) (E : ComplexSupergeometryEvidence M) :
    supercommutativeAlgebraClosed M := E.algebraClosed

end ComplexSupergeometryLemmaCanonicalLaneLean
end HautevilleHouse
