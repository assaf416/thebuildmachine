class Recipe < ActiveRecord::Base
  attr_accessible :body, :category, :name, :rate, :user_id, :image_url, :description

  def icon
    return "/assets/recipes/rails.png" if self.category.include? "Rails"
    return "/assets/recipes/angular.png" if self.category.include? "Angular"
    return "/assets/recipes/sinatra.png" if self.category.include? "Sinatra"
    return "/assets/recipes/nginx.png" if self.category.include? "Nginx"
    return "/assets/recipes/capistrano.png" if self.category.include? "Capistrano"
    return "/assets/recipes/cucumber.png" if self.category.include? "Test"
    return "/assets/recipes/github.png" if self.category.include? "github"
    return "/assets/recipes/git.png" if self.category.include? "git"
    return "/assets/recipes/bitbucket.png" if self.category.include? "bitbucket"
    return "/assets/recipes/android.png" if self.category.include? "android"
    return "/assets/recipes/cordova.png" if self.category.include? "cordova"
    return self.image_url
  end

end
