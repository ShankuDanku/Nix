{...}:
{
home-manager.users.sashank = {pkgs, ...}: {
	programs.kitty = {
		enable = true;
		font.name = "family=\"Ubuntu Mono\"";
	};
	home.stateVersion = "24.05";
  };

}
