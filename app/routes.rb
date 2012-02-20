get '/' do
  erb :front
end

# Use Sass with `views/style.scss` as your stylesheet
# To use, delete `public/stylehseets/style.css`
get '/css/style.css' do
  scss :style
end

get '/:page' do
  erb params[:page].to_sym
end

# 404 Error
not_found do
  erb :notfound
end