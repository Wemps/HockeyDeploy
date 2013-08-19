module HockeyDeploy
  class Client
    # Defines methods related to users
    module Apps
      module TeamMembers
        
        def list_members_for_app(app_id)
          get_request("#{@endpoint}/#{app_id}/app_users")
        end
        
        def add_member_to_app(app_id, member)
          # member = {
          #   :email => "thomas@dohmke.de", <# required
          #   :first_name => "Thomas",
          #   :last_name => "Dohmke",
          #   :role => "3", <# 0 - owner, 1 - developer, 2 - member, 3 - tester (default)
          #   :tags => "internal,codenauts" <# comma delimited list
          # }
          
          post_request("#{@endpoint}/#{app_id}/app_users", member)
        end
        
        def remove_member_from_app(app_id, member_id)
          delete_request("#{@endpoint}/#{app_id}/app_users/#{member_id}")
        end
      end
    end
  end
end
