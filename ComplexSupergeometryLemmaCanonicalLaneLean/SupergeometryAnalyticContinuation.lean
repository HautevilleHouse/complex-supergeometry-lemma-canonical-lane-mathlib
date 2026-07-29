import ComplexSupergeometryLemmaCanonicalLaneLean.SupermoduliSpace

namespace HautevilleHouse
namespace ComplexSupergeometryLemmaCanonicalLaneLean

structure AnalyticContinuationPackage where
  superRiemannSurface : Type
  analyticContinuationAlongPath : Prop
  monodromyRepresentation : Prop
  superMonodromy : Prop
  analyticContinuationClosed : analyticContinuationAlongPath
  monodromyRepresentationClosed : monodromyRepresentation
  superMonodromyClosed : superMonodromy

def AnalyticContinuationClosed (A : AnalyticContinuationPackage) : Prop :=
  A.analyticContinuationAlongPath ∧ A.monodromyRepresentation ∧ A.superMonodromy

theorem analytic_continuation_closed_from_evidence
    (A : AnalyticContinuationPackage) : AnalyticContinuationClosed A := by
  exact And.intro A.analyticContinuationClosed
    (And.intro A.monodromyRepresentationClosed A.superMonodromyClosed)

end ComplexSupergeometryLemmaCanonicalLaneLean
end HautevilleHouse