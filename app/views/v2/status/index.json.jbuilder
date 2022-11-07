json.name "Courses API V2"
json.status :ok
json.routes do
  json.sessions do
    json.create do
      json.method :post
      json.url v2_sessions_url
    end
  end
  json.courses do
    json.index do
      json.method :get
      json.url v2_courses_url
    end
    json.show do
      json.method :get
      json.url v2_course_url('ID')
    end
    json.create do
      json.method :post
      json.url v2_courses_url
    end
    json.update do
      json.method :path
      json.url v2_course_url('ID')
    end
    json.destroy do
      json.method :delete
      json.url v2_course_url('ID')
    end
  end
end