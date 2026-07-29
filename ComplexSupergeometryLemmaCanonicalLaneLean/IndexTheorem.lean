import HautevilleHouse.ComplexSupergeometryLemmaCanonicalLaneLean.ChernWeilTheory

namespace HautevilleHouse
namespace ComplexSupergeometryLemmaCanonicalLaneLean

structure IndexPackage {M : Type} {B : SuperVectorBundle M} {C : Superconnection B} (W : ChernWeilPackage C) where
  analyticIndex : Type
  topologicalIndex : Type
  indexTheoremStatement : Prop
  supergeometricCorrections : Prop
  indexTheoremStatementClosed : indexTheoremStatement
  supergeometricCorrectionsClosed : supergeometricCorrections

structure IndexEvidence {M : Type} {B : SuperVectorBundle M} {C : Superconnection B} {W : ChernWeilPackage C} (I : IndexPackage W) where
  indexTheoremStatementClosed : I.indexTheoremStatement
  supergeometricCorrectionsClosed : I.supergeometricCorrections

def IndexClosed {M : Type} {B : SuperVectorBundle M} {C : Superconnection B} {W : ChernWeilPackage C} (I : IndexPackage W) : Prop :=
  I.indexTheoremStatement ∧ I.supergeometricCorrections

theorem index_closed_from_evidence {M : Type} {B : SuperVectorBundle M} {C : Superconnection B} {W : ChernWeilPackage C} (I : IndexPackage W) (E : IndexEvidence I) : IndexClosed I :=
  And.intro E.indexTheoremStatementClosed E.supergeometricCorrectionsClosed

end ComplexSupergeometryLemmaCanonicalLaneLean
end HautevilleHouse