import ComplexSupergeometryLemmaCanonicalLaneLean.SuperRiemannSurface

namespace HautevilleHouse
namespace ComplexSupergeometryLemmaCanonicalLaneLean

structure SupermoduliSpacePackage where
  superRiemannSurface : Type
  moduli : Type
  superTeichmullerSpace : Type
  periodMatrix : Prop
  superPeriodMatrix : Prop
  periodMatrixClosed : periodMatrix
  superPeriodMatrixClosed : superPeriodMatrix

def SupermoduliSpaceClosed (M : SupermoduliSpacePackage) : Prop :=
  M.periodMatrix ∧ M.superPeriodMatrix

theorem supermoduli_space_closed_from_evidence
    (M : SupermoduliSpacePackage) : SupermoduliSpaceClosed M := by
  exact And.intro M.periodMatrixClosed M.superPeriodMatrixClosed

end ComplexSupergeometryLemmaCanonicalLaneLean
end HautevilleHouse