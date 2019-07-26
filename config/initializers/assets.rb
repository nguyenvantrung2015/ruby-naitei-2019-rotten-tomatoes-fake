# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
Rails.application.config.assets.precompile += %w( bootstrap.min.css font-awesome.min.css icofont.css magnific-popup.css
    meanmenu.min.css plugins.css default.css menu.css slider.css style.css responsive.css modernizr-2.8.3.min.js shortcodes.css
    jquery-1.12.4.min.js popper.js bootstrap.min.js jquery.ajaxchimp.min.js plugins.js main.js custom.css
    admin/bootstrap.min.css admin/font-awesome.min.css admin/themify-icons.css admin/cryptocurrency-icons.css admin/plugins.css 
    admin/plugins.css admin/helper.css admin/style.css admin/style-primary.css admin/modernizr-3.6.0.min.js admin/jquery-3.3.1.min.js
    admin/popper.min.js admin/bootstrap.min.js admin/perfect-scrollbar.min.js admin/tippy4.min.js admin/main.js admin/moment.min.js 
    admin/daterangepicker.js admin/daterangepicker.active.js admin/Chart.min.js admin/chartjs.active.js admin/jquery.vmap.min.js 
    admin/jquery.vmap.world.js admin/jquery.vmap.sampledata.js admin/vmap.active.js
)


