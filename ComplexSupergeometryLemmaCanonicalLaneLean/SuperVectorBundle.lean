import HautevilleHouse.ComplexSupergeometryLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSupergeometryLemmaCanonicalLaneLean

structure SuperVectorBundle (M : Type) where
  totalSpace : Type
  projection : totalSpace → M
  rank : ℕ
  superstructure : Prop
  transitionFunctionsSmooth : Prop
  superstructureClosed : superstructure
  transitionFunctionsSmoothClosed : transitionFunctionsSmooth

structure SuperVectorBundleEvidence {M : Type} (B : SuperVectorBundle M) where
  superstructureClosed : B.superstructure
  transitionFunctionsSmoothClosed : B.transitionFunctionsSmooth

def SuperVectorBundleClosed {M : Type} (B : SuperVectorBundle M) : Prop :=
  B.superstructure ∧ B.transitionFunctionsSmooth

theorem super_vector_bundle_closed_from_evidence {M : Type} (B : SuperVectorBundle M) (E : SuperVectorBundleEvidence B) : SuperVectorBundleClosed B :=
  And.intro E.superstructureClosed E.transitionFunctionsSmoothClosed

end ComplexSupergeometryLemmaCanonicalLaneLean
end HautevilleHouse