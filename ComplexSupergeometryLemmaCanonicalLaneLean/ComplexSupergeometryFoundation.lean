import ComplexSupergeometryLemmaCanonicalLaneLean.ComplexSupergeometryDomain

namespace HautevilleHouse
namespace ComplexSupergeometryLemmaCanonicalLaneLean

structure ComplexSupermanifoldPackage where
  baseManifold : Type
  baseTopology : TopologicalSpace baseManifold
  structureSheaf : Type
  oddBundle : Type
  integrability : Prop
  superLieBracket : Prop
  integrabilityClosed : integrability
  superLieBracketClosed : superLieBracket

def ComplexSupermanifoldClosed (P : ComplexSupermanifoldPackage) : Prop :=
  P.integrability ∧ P.superLieBracket

theorem complex_supermanifold_closed_from_evidence
    (P : ComplexSupermanifoldPackage) : ComplexSupermanifoldClosed P := by
  exact And.intro P.integrabilityClosed P.superLieBracketClosed

end ComplexSupergeometryLemmaCanonicalLaneLean
end HautevilleHouse