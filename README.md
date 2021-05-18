# wp-pre installation script

This script is useful in wordpress installation in which you can remove raw data of wordpress also 
you can install some suggested plugins and activate theme also you can make a sample theme with it's 
child theme and also you can activate the theme.

##Description

when you run this script on your terminal first it shows docker containers and then you have to enter particular docker container ID in which you want to set up
your wodpress.

when you enter the docker id then it shows

Are you sure you want to empty the site at 'http://localhost:Port_' of all posts, comments, and terms? [y/n] if you press y then all the raw data like pre installed
posts, comments and pages get removed.

And then your wordpress get updated then it shows

Do you want default plugins in your WordPress  [yn] if you press n than defult plugins (hello , akismet) get deleted and if you don't want to delete then press y.

Then it shows

Do you want to install some suggested plugins in your WordPress ? [yn] if you press y then an option comes to you: 
Do you want to install some suggested plugins with elementor in your WordPress ? [yn] if you press y then plugins installed with elementor
(seo-by-rank-math updraftplus ewww-image-optimizer elementor  header-footer-elementor) and 
if you press no then plugins installed without elementor(seo-by-rank-math updraftplus ewww-image-optimizer advanced-custom-fields).

After the installation of plugins it shows
Do you want to activate  suggested plugins in your WordPress ? [yn] if you press y then an option comes to you: 
Do you want to activate  suggested plugins with elementor or without elementor in your WordPress ? [yn] if you press y then all plugins with elementor get activated.
and if n then all plugins without elementor get activated.

After activation of plugins it shows:
Do you want to activate sample themes in your WordPress ? [yn] if you press y then it shows:
Enter your sample theme name (you have to enter the name which you want to give to sample theme)
Enter sample theme author name(enter the author name)
enter the theme domain name(enter domain name of your choice)
After entering all the information a sample theme gets generated and then by default it's child theme also gets generated.

Then it shows:
Do you want to activate sample themes in your WordPress ? [yn] if you want an active child theme then press y.

Then it shows:
Do you want default themes in your WordPress ? [yn] if you want to delete default themes then press n and if you don't want to delete them then press y.

*STILL IN DEVELOPMENT*



