{ lib, ... }:

{
  imports = [
    ../../../common/cpu/intel/broadwell
  ];

  hardware.intelgpu = {
    vaapiDriver = lib.mkForce null; # use both
  };

  services.thermald.enable = lib.mkDefault true;
}
