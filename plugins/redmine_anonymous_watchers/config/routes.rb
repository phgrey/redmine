if Redmine::VERSION::MAJOR >= 2
  RedmineApp::Application.routes.draw do
    match 'watchers/anonymous_watch', :controller=> 'watchers', :action => 'anonymous_watch'
    match 'watchers/anonymous_unwatch', :controller=> 'watchers', :action => 'anonymous_unwatch'
  end
else
  ActionController::Routing::Routes.draw do |map|
    map.connect 'watchers/anonymous_watch', :controller=> 'watchers', :action => 'anonymous_watch'
    map.connect 'watchers/anonymous_unwatch', :controller=> 'watchers', :action => 'anonymous_unwatch'
  end
end
