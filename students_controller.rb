require('sinatra')
require('sinatra/contrib/all')
require_relative('models/student')
require_relative('models/house')
also_reload('./models/*')

# index

    get '/students' do
        @students = Student.all()
        erb(:index)
    end 


    # new

    get '/students/new' do
        erb(:new)
    end 

# show

    get '/students/:id' do
        @students = Student.find (params[:id])
        erb(:show)
    end

# create

    post '/students' do # create
        @order = Student.new( params )
        @order.save()
        erb( :create )
    end


# edit

    

# update

# destroy
