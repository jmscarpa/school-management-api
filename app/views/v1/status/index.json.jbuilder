json.name "Courses API V1"
json.status :ok
json.routes do
  json.index do
    json.method :get
    json.url v1_courses_url
  end
  json.show do
    json.method :get
    json.url v1_course_url('ID')
  end
  json.create do
    json.method :post
    json.url v1_courses_url
  end
  json.update do
    json.method :path
    json.url v1_course_url('ID')
  end
  json.destroy do
    json.method :delete
    json.url v1_course_url('ID')
  end
end