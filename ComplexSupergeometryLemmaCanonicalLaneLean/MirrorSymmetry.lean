import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ComplexSupergeometryLemmaCanonicalLaneLean.DeformationTheory

namespace HautevilleHouse
namespace ComplexSupergeometryLemmaCanonicalLaneLean

structure MirrorSymmetryPackage {P : ComplexSupergeometryPackage} {K : KahlerRicciFlowPackage P} {S : SuperCalabiYauPackage K} (D : DeformationTheoryPackage S) where
  mirrorPairing : Prop
  homologicalMirror : Prop
  categoricalMirror : Prop
  mirrorPairingTerm : mirrorPairing
  homologicalMirrorTerm : homologicalMirror
  categoricalMirrorTerm : categoricalMirror

def MirrorSymmetryClosed {P : ComplexSupergeometryPackage} {K : KahlerRicciFlowPackage P} {S : SuperCalabiYauPackage K} {D : DeformationTheoryPackage S} (M : MirrorSymmetryPackage D) : Prop :=
  M.mirrorPairing ∧ M.homologicalMirror ∧ M.categoricalMirror

end ComplexSupergeometryLemmaCanonicalLaneLean
end HautevilleHouse