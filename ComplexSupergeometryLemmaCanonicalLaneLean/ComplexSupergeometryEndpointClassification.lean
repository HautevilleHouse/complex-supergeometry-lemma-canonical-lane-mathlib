import ComplexSupergeometryLemmaCanonicalLaneLean.ComplexSupergeometryAdmissibleClass

namespace HautevilleHouse
namespace ComplexSupergeometryLemmaCanonicalLaneLean

structure EndpointClassificationPackage where
  targetSupermanifold : Type u
  targetTopology : TopologicalSpace targetSupermanifold
  complexSupergeometryStatement : Prop
  supermanifoldEndpoint : complexSupergeometryStatement
  endpointMatchesLemma : Prop

structure EndpointClassificationEvidence (Epkg : EndpointClassificationPackage) where
  complexSupergeometryStatementClosed : Epkg.complexSupergeometryStatement
  endpointMatchesLemmaClosed : Epkg.endpointMatchesLemma

def EndpointClassificationClosed (Epkg : EndpointClassificationPackage) : Prop :=
  Epkg.complexSupergeometryStatement ∧ Epkg.endpointMatchesLemma

theorem endpoint_classification_closed_from_evidence (Epkg : EndpointClassificationPackage)
    (E : EndpointClassificationEvidence Epkg) : EndpointClassificationClosed Epkg := by
  exact And.intro E.complexSupergeometryStatementClosed E.endpointMatchesLemmaClosed

end ComplexSupergeometryLemmaCanonicalLaneLean
end HautevilleHouse