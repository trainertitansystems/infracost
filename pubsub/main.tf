provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_pubsub_topic" "events" {
  name = "events-topic"
}

resource "google_pubsub_subscription" "events_sub" {
  name  = "events-subscription"
  topic = google_pubsub_topic.events.id

  ack_deadline_seconds = 20
}

