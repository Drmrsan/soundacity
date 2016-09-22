#json.array! @notifications do |notification|
	#json.recipient 		notification.recipient
	#json.id 					notification.id
	#json.actor		 		notification.actor.username
	#json.action		 		notification.action
	#json.read_at			notification.read_at
	#json.notifiable do 
	#	json.type "a #{notification.notifiable.class.to_s.underscore.humanize.downcase}"
	#end
	#json.url					song_path(notification.notifiable.song, anchor: dom_id(notification.notifiable))
#end