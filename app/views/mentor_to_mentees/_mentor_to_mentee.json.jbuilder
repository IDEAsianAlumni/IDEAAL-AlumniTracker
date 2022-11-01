json.extract! mentor_to_mentee, :id, :mentor_uid, :mentee_uid, :status, :year, :created_at, :updated_at
json.url mentor_to_mentee_url(mentor_to_mentee, format: :json)
