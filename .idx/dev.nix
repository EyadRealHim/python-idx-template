# To learn more about how to use Nix to configure your environment
# see: https://developers.google.com/idx/guides/customize-idx-env
{ pkgs, ... }: {
  # Which nixpkgs channel to use.
  channel = "stable-23.11"; # or "unstable"
  # Use https://search.nixos.org/packages to find packages
  packages = [
    pkgs.python39
  ];
  # Sets environment variables in the workspace
  env = { };
  idx = {
    workspace = {
      onCreate = {
        python-env = "python -m venv .venv && source .venv/bin/activate";
      };
    };

    # Search for the extensions you want on https://open-vsx.org/ and use "publisher.id"
    extensions = [
      "charliermarsh.ruff"
    ];
    # Enable previews and customize configuration
    previews = { };
  };
}
