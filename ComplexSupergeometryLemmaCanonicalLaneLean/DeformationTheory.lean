import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ComplexSupergeometryLemmaCanonicalLaneLean.SuperCalabiYau

namespace HautevilleHouse
namespace ComplexSupergeometryLemmaCanonicalLaneLean

structure DeformationTheoryPackage {P : ComplexSupergeometryPackage} {K : KahlerRicciFlowPackage P} (S : SuperCalabiYauPackage K) where
  kuranishiFamily : Prop
  obstructions : Prop
  stabilizerDimension : Prop
  kuranishiFamilyTerm : kuranishiFamily
  obstructionsTerm : obstructions
  stabilizerDimensionTerm : stabilizerDimension

def DeformationTheoryClosed {P : ComplexSupergeometryPackage} {K : KahlerRicciFlowPackage P} {S : SuperCalabiYauPackage K} (D : DeformationTheoryPackage S) : Prop :=
  D.kuranishiFamily ∧ D.obstructions ∧ D.stabilizerDimension

end ComplexSupergeometryLemmaCanonicalLaneLean
end HautevilleHouse