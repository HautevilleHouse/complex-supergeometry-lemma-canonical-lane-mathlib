import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ComplexSupergeometryLemmaCanonicalLaneLean.ComplexSupergeometry

namespace HautevilleHouse
namespace ComplexSupergeometryLemmaCanonicalLaneLean

structure KahlerRicciFlowPackage (P : ComplexSupergeometryPackage) where
  timeParameter : Type u
  metricFamily : Type v
  initialKahlerMetric : Prop
  evolutionEquation : Prop
  maximalTime : Prop
  initialKahlerMetricTerm : initialKahlerMetric
  evolutionEquationTerm : evolutionEquation
  maximalTimeTerm : maximalTime

def KahlerRicciFlowClosed {P : ComplexSupergeometryPackage} (K : KahlerRicciFlowPackage P) : Prop :=
  K.initialKahlerMetric ∧ K.evolutionEquation ∧ K.maximalTime

end ComplexSupergeometryLemmaCanonicalLaneLean
end HautevilleHouse