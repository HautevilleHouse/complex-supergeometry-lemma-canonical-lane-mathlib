import HautevilleHouse.ComplexSupergeometryLemmaCanonicalLaneLean.SuperVectorBundle

namespace HautevilleHouse
namespace ComplexSupergeometryLemmaCanonicalLaneLean

structure Superconnection {M : Type} (B : SuperVectorBundle M) where
  connectionForm : Type
  curvatureForm : Type
  superCompatibility : Prop
  BianchiIdentity : Prop
  superCompatibilityClosed : superCompatibility
  BianchiIdentityClosed : BianchiIdentity

structure SuperconnectionEvidence {M : Type} {B : SuperVectorBundle M} (C : Superconnection B) where
  superCompatibilityClosed : C.superCompatibility
  BianchiIdentityClosed : C.BianchiIdentity

def SuperconnectionClosed {M : Type} {B : SuperVectorBundle M} (C : Superconnection B) : Prop :=
  C.superCompatibility ∧ C.BianchiIdentity

theorem superconnection_closed_from_evidence {M : Type} {B : SuperVectorBundle M} (C : Superconnection B) (E : SuperconnectionEvidence C) : SuperconnectionClosed C :=
  And.intro E.superCompatibilityClosed E.BianchiIdentityClosed

end ComplexSupergeometryLemmaCanonicalLaneLean
end HautevilleHouse