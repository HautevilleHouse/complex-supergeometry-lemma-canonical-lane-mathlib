import ComplexSupergeometryLemmaCanonicalLaneLean.ComplexSupergeometryFoundation

namespace HautevilleHouse
namespace ComplexSupergeometryLemmaCanonicalLaneLean

structure SuperRiemannSurfacePackage where
  genus : Nat
  superRiemannSurface : Type
  complexStructure : Prop
  superconformalStructure : Prop
  superThetaFunction : Prop
  complexStructureClosed : complexStructure
  superconformalStructureClosed : superconformalStructure
  superThetaFunctionClosed : superThetaFunction

def SuperRiemannSurfaceClosed (S : SuperRiemannSurfacePackage) : Prop :=
  S.complexStructure ∧ S.superconformalStructure ∧ S.superThetaFunction

theorem super_riemann_surface_closed_from_evidence
    (S : SuperRiemannSurfacePackage) : SuperRiemannSurfaceClosed S := by
  exact And.intro S.complexStructureClosed
    (And.intro S.superconformalStructureClosed S.superThetaFunctionClosed)

end ComplexSupergeometryLemmaCanonicalLaneLean
end HautevilleHouse