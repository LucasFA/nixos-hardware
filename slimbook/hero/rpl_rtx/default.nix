{ lib, ... }:
{
  imports = [
	../../../common/cpu/intel
	../../../common/gpu/nvidia/ada-lovelace
	../../../common/gpu/nvidia/prime.nix
	../../../common/pc/laptop
	../../../common/pc/ssd
  ];

  hardware.nvidia.prime = { 
    # Make sure to use the correct Bus ID values for your system!
    intelBusId = lib.mkDefault "PCI:0:2:0";
    nvidiaBusId = lib.mkDefault "PCI:1:0:0";
  };
}
