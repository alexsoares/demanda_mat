/*
 Rails.js 0.0.1 - jQuery Dispatcher for Rails
 Copyright (c) 2008 Nando Vieira (simplesideias.com.br)
 Dual licensed under the MIT (MIT-LICENSE.txt)
 and GPL (GPL-LICENSE.txt) licenses.
*/

/*
 Usage: Add this code in your application.html.erb layout file
 
 <html>
    <head>
        <meta name="rails-controller" content="<%= response.controller_name %>" />
        <meta name="rails-action" content="<%= response.action_name %>" />
        <%= javascript_include_tag 'jquery' %>
        <%= javascript_include_tag 'rails' %>
        <%= javascript_include_tag 'your-own-lib' %>
    </head>
 </html>
 
 Your lib.js should follow this rule:
 
 Rails.users = {
     'index': function() {
         // execute specific code for users/index
     },
     
     'new': function() {
         // execute specific code for users/new
     }
 }
 
 NOTE: If you have a awkward action_name (or a javascript keyword), use the following syntax:
 
 Rails['users'] = {
     'index': function() {
         // execute specific code for users/index
     }
 }
 
 You cannot use the following controller names:
 - ALIASES, logger, dispatcher
*/ 
var Rails = {
    ALIASES: {
        'create': 'new',
        'update': 'edit'
    },
    
    logger: function() {
        try {
            if (!location.href.match(/^http:\/\/(localhost|127.0.0.1)/) || !window.console) {
                return;
            }

            var args = arguments;
            var type = args.shift();
            console[type].apply(window, args);
        } catch (e) {
            null;
        }
    },
    
    dispatcher: function() {
        var controller_name = $('head meta[name=rails-controller]').attr('content');
        var action_name = $('head meta[name=rails-action]').attr('content');
        
        action_name = Rails.ALIASES[action_name] || action_name;
        
        try {
            Rails.before();
        } catch (e) {
            Rails.logger('debug', 'Rails#before', e.message);
        }
        
        try {
            Rails[controller_name].before();
        } catch (e) {
            Rails.logger('debug', 'Rails#' + controller_name + '#before', e.message);
        }
        
        try {
            Rails[controller_name][action_name].call();
        } catch (e) {
            Rails.logger('debug', 'Rails#' + controller_name + '#' + action_name, e.message);
        }
    }
};

// start dispatcher

