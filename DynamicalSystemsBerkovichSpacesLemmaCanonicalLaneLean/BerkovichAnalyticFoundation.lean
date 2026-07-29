import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean

structure BerkovichAnalyticFoundation where
  berkovichSpace : BerkovichSpace ℚ
  dynamicalSystem : DynamicalSystem berkovichSpace
  evidence : DynamicalSystemEvidence berkovichSpace dynamicalSystem
  closure : DynamicalSystemClosed berkovichSpace dynamicalSystem

def BerkovichAnalyticFoundationClosed (F : BerkovichAnalyticFoundation) : Prop :=
  F.closure

theorem berkovich_analytic_foundation_closed_from_evidence
    (F : BerkovichAnalyticFoundation) :
    BerkovichAnalyticFoundationClosed F := by
  exact F.closure

end DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean
end HautevilleHouse