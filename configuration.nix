# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, lib, ... }:

let
  nord0 = "#2e3440";
  nord1 = "#3b4252";
  nord2 = "#434c5e";
  nord3 = "#4c566a";
  nord4 = "#d8dee9";
  nord5 = "#e5e9f0";
  nord6 = "#eceff4";
  nord7 = "#8fbcbb";
  nord8 = "#88c0d0";
  nord9 = "#81a1c1";
  nord10 = "#5e81ac";
  nord11 = "#bf616a";
  nord12 = "#d08770";
  nord13 = "#ebcb8b";
  nord14 = "#a3be8c";
  nord15 = "#b48aed";
in
{
  imports =
    [
      # Include the results of the hardware scan.
      /etc/nixos/hardware-configuration.nix
      <home-manager/nixos>
    ];

  # Bootloader.
  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/sda";
  boot.loader.grub.useOSProber = true;

  networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Pacific/Auckland";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_GB.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_NZ.UTF-8";
    LC_IDENTIFICATION = "en_NZ.UTF-8";
    LC_MEASUREMENT = "en_NZ.UTF-8";
    LC_MONETARY = "en_NZ.UTF-8";
    LC_NAME = "en_NZ.UTF-8";
    LC_NUMERIC = "en_NZ.UTF-8";
    LC_PAPER = "en_NZ.UTF-8";
    LC_TELEPHONE = "en_NZ.UTF-8";
    LC_TIME = "en_NZ.UTF-8";
  };

  # Configure keymap in X11
  services.xserver = {
    enable = true;
    layout = "us";
    xkbVariant = "";
    xkbOptions = "caps:escape";
    autoRepeatDelay = 200;
    autoRepeatInterval = 25;
    desktopManager = {
      xterm.enable = false;
    };
    displayManager = {
      defaultSession = "none+i3";
    };
    windowManager.i3 = {
      enable = true;
      package = pkgs.i3-gaps;
      extraPackages = with pkgs; [
        i3status
        i3lock
        dmenu
      ];
    };
  };

  console.useXkbConfig = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.jordan = {
    isNormalUser = true;
    description = "Jordan Sim-Smith";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
  };

  home-manager.users.jordan = {
    home.stateVersion = "23.11";
    home.sessionVariables = {
      EDITOR = "vim";
      VISUAL = "vim";
      SUDO_EDITOR = "vim";
      TERMINAL = "kitty";
      BROWSER = "brave";
    };
    home.packages = with pkgs; [
      brave
      ranger
      neofetch
    ];

    programs.kitty = {
      enable = true;
      theme = "Nord";
      shellIntegration.enableZshIntegration = true;
    };

    programs.zsh = {
      enable = true;
      enableAutosuggestions = true;
      syntaxHighlighting.enable = true;
    };

    programs.neovim = {
      enable = true;
      viAlias = true;
      vimAlias = true;
      extraConfig = ''
        set number relativenumber
        set ruler
        set showcmd
        set belloff=all
        set encoding=utf-8
        set mouse=a
        set backspace=indent,eol,start
        set tabstop=2
        set softtabstop=2
        set shiftwidth=2
        set expandtab
        set autoindent smartindent
        set list
      '';
    };

    programs.git = {
      enable = true;
      userName = "Jordan Sim-Smith";
      userEmail = "jordansimsmith@gmail.com";
    };

    xsession.windowManager.i3 = {
      enable = true;
      config = {
        modifier = "Mod4";
        workspaceLayout = "default";
        defaultWorkspace = "workspace number 1";
        focus.followMouse = false;
        window = {
          border = 2;
          hideEdgeBorders = "none";
        };
        gaps = {
          smartBorders = "on";
          smartGaps = true;
          inner = 10;
          outer = -2;
        };
        colors = {
          background = nord7;
          focused = {
            border = nord5;
            background = nord5;
            text = nord0;
            indicator = nord8;
            childBorder = nord9;
          };
          focusedInactive = {
            border = nord1;
            background = nord1;
            text = nord5;
            indicator = nord3;
            childBorder = nord1;
          };
          unfocused = {
            border = nord1;
            background = nord0;
            text = nord5;
            indicator = nord1;
            childBorder = nord1;
          };
          urgent = {
            border = nord8;
            background = nord8;
            text = nord0;
            indicator = nord8;
            childBorder = nord8;
          };
          placeholder = {
            border = nord0;
            background = nord0;
            text = nord5;
            indicator = nord0;
            childBorder = nord0;
          };
        };
        bars = [
          {
            position = "top";
            command = "i3bar";
            statusCommand = "i3status";
            trayPadding = 1;
            colors = {
              background = nord0;
              separator = nord1;
              statusline = nord4;
              focusedWorkspace = {
                border = nord5;
                background = nord8;
                text = nord0;
              };
              activeWorkspace = {
                border = nord5;
                background = nord3;
                text = nord5;
              };
              inactiveWorkspace = {
                border = nord3;
                background = nord1;
                text = nord5;
              };
              urgentWorkspace = {
                border = nord8;
                background = nord8;
                text = nord0;
              };
              bindingMode = {
                border = nord0;
                background = nord9;
                text = nord0;
              };
            };
          }
        ];
        keybindings = let
          modifier = "Mod4";
        in
        lib.mkOptionDefault {
          "${modifier}+Return" = "exec --no-startup-id kitty";
          "${modifier}+F2" = "exec brave";
        };
      };
      extraConfig = ''
      '';
    };
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
  # vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
  #  wget
  ];

  programs.zsh.enable = true;

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.11"; # Did you read the comment?
}
