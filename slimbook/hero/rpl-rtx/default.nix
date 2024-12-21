{ config, lib, ... }:
{
  imports = [
    ../../../common/cpu/intel
    ../../../common/gpu/intel/coffee-lake
    ../../../common/gpu/nvidia/ada-lovelace
    ../../../common/gpu/nvidia/prime.nix
    ../../../common/pc/laptop
    ../../../common/pc/laptop/ssd
  ];

  hardware = {
    graphics = {
      enable = lib.mkDefault true;
      enable32Bit = lib.mkDefault true;
    };
    nvidia = {
      prime = {
        # Make sure to use the correct Bus ID values for your system!
        intelBusId = lib.mkDefault "PCI:0:2:0";
        nvidiaBusId = lib.mkDefault "PCI:1:0:0";
      };
      powerManagement = {
        enable = lib.mkDefault false;
        finegrained = lib.mkDefault false;
      };
    };
  };

  services = {
    fwupd.enable = lib.mkDefault true;
    thermald.enable = lib.mkDefault true;
  };
}
