require 'pusher/push_notifications'

Pusher::PushNotifications.configure do |config|
  config.instance_id = ''
  config.secret_key = ''
end

data = {
  apns: {
    aps: {
      alert: {
        title: 'Hello',
        body: 'Hello, world!'
      }
    }
  },
  fcm: {
    notification: {
      title: 'Hello',
      body: 'Hello, world!'
    }
  }
}

Pusher::PushNotifications.publish_to_interests(interests: [''], payload: data)
