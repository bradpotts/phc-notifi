### PHC-Notifi for Rails 5.2 (Form Validation & Notification Engine) Documentation
PHCNotifi Rails 5.2 engine with helpers for alerts and form validation notifications.  

* Add alert and form validation helpers ruby on rails.
* Setup in seconds with only one line of code in the application_helper file.
* Save time and keep your rails projects manageable, tidy and secure.

#### Step 1 - Add PHCNotifi to your gemfile  

	gem 'phcnotifi'
	bundle install

#### Step 2 - Load Helpers in the Application's Controller  
Add the line of code below into your app/controllers/application_controller.rb (application's controller file).  

	helper Phcnotifi::Engine.helpers

#### How to Add Notifications to Layouts
Add the line of code below to your app/views/layouts/application.rb  

	<%= render 'phcnotifi/default/notifications' %>

#### How to Add Validations to your Form
Add the line of code below to your _form.rb file. Change @example_object to the same one on your form.  

	<%= render 'phcnotifi/default/validations', :object => @example_object %>
