import DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "dynamical-systems-berkovich-spaces-lemma-canonical-lane",
  theoremName := "DynamicalSystemsBerkovichSpacesLemma",
  theoremObject := "Berkovich analytic space dynamical system with marked point and Berkovich closed orbit",
  classicalBoundary := "classical boundary: unrestricted topological entropy and measure-theoretic entropy",
  manifoldConstrainedStatement := "dynamical-system-constrained theorem certificate internalized through baseline gates, source constants, reviewer bridge, manifest hashes, and outside-constant dependency count",
  certificateLane := "dynamical_constrained",
  carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
}

end DynamicalSystemsBerkovichSpacesLemmaCanonicalLaneLean
end HautevilleHouse