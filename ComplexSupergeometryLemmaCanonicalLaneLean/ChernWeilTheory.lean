import HautevilleHouse.ComplexSupergeometryLemmaCanonicalLaneLean.Superconnection

namespace HautevilleHouse
namespace ComplexSupergeometryLemmaCanonicalLaneLean

structure ChernWeilPackage {M : Type} {B : SuperVectorBundle M} (C : Superconnection B) where
  invariantPolynomial : Type
  characteristicClass : Type
  topologicalInvariance : Prop
  supergeometricExtension : Prop
  topologicalInvarianceClosed : topologicalInvariance
  supergeometricExtensionClosed : supergeometricExtension

structure ChernWeilEvidence {M : Type} {B : SuperVectorBundle M} {C : Superconnection B} (W : ChernWeilPackage C) where
  topologicalInvarianceClosed : W.topologicalInvariance
  supergeometricExtensionClosed : W.supergeometricExtension

def ChernWeilClosed {M : Type} {B : SuperVectorBundle M} {C : Superconnection B} (W : ChernWeilPackage C) : Prop :=
  W.topologicalInvariance ∧ W.supergeometricExtension

theorem chern_weil_closed_from_evidence {M : Type} {B : SuperVectorBundle M} {C : Superconnection B} (W : ChernWeilPackage C) (E : ChernWeilEvidence W) : ChernWeilClosed W :=
  And.intro E.topologicalInvarianceClosed E.supergeometricExtensionClosed

end ComplexSupergeometryLemmaCanonicalLaneLean
end HautevilleHouse