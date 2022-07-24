{ buildDunePackage, coq_8_15, zarith, lib }:

buildDunePackage {
  pname = "coq-plugin-template-atdgen";
  version = "0.1.0";
  duneVersion = "2";

  src = ./.;

  checkInputs = [ ];
  buildInputs = [
    coq_8_15
    zarith
  ];

  meta = {
    homepage = "https://github.com/Champitoad/coq-plugin-template-atdgen/tree/v8.16";
    description = "Testing atdgen integration with Coq 8.16 dynamic loading feature";
  };
}
