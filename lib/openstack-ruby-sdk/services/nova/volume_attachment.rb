class OpenStackRubySDK::Nova::VolumeAttachment
  include Core::Model

  attr_accessor :id, :server_id, :volume_id, :device

  attr_with_alias :server_id, :serverId
  attr_with_alias :volume_id, :volumeId

  belongs_to :server
  belongs_to :volume

  json_key_name :volumeAttachments
  api_path "/servers/{{server_id}}/os-volume_attachments"

end
