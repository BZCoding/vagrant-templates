# Base role for all boxes

- Set default locale to `en_US.UTF8`
- Ensure `sudo` is installed (not present on some hosts, ie DigitalOcean)
- Install and configure NTP
- Set timezone to UTC
- Ensure cURL is installed
- Install VIM and Mailutils
- Setup `sudo` to allow users of group `admin` as sudoers (with password)
