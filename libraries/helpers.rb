# The topic property and feature properties should end up in a standard
# format so that it can be fed into the yaml searcher
def properties_to_feature_key(topic, feature)
  tr_topic = topic.downcase.tr(' ', '_')
  tr_feature = feature.downcase.tr(' ', '_')
  tr_topic + '__' + tr_feature
end

def macos_current_user(platform)
  if platform == 'mac_os_x'
    user_uid = File.stat('/dev/console').uid
    require 'etc'
    uid_user = Etc.getpwuid(user_uid).name
    if uid_user == 'root'
      nil
    elsif /^_\w*\z/.match(uid_user)
      nil
    else
      return uid_user
    end
  else
    raise 'Platform is not currently supported in helpers/current_user'
  end
end
