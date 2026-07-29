import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ComplexSupergeometryLemmaCanonicalLaneLean.KahlerRicciFlow

namespace HautevilleHouse
namespace ComplexSupergeometryLemmaCanonicalLaneLean

structure SuperCalabiYauPackage {P : ComplexSupergeometryPackage} (K : KahlerRicciFlowPackage P) where
  ricciFlatMetric : Prop
  superCalabiYauCondition : Prop
  mirrorSymmetry : Prop
  ricciFlatMetricTerm : ricciFlatMetric
  superCalabiYauConditionTerm : superCalabiYauCondition
  mirrorSymmetryTerm : mirrorSymmetry

def SuperCalabiYauClosed {P : ComplexSupergeometryPackage} {K : KahlerRicciFlowPackage P} (S : SuperCalabiYauPackage K) : Prop :=
  S.ricciFlatMetric ∧ S.superCalabiYauCondition ∧ S.mirrorSymmetry

end ComplexSupergeometryLemmaCanonicalLaneLean
end HautevilleHouse