{ pkgs ? import ./nix/nixpkgs.nix }:
let
  nodejs = (import ./default.nix { inherit pkgs; }).nodejs;
in pkgs.mkShell {
  buildInputs = [ pkgs.bats pkgs.pkgconfig pkgs.python pkgs.libusb1 pkgs.libudev.dev nodejs pkgs.yarn ];
}
