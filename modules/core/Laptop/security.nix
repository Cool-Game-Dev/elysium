{ config, ... }:

{
  security.pam.services.login.enableGnomeKeyring = true;
}
