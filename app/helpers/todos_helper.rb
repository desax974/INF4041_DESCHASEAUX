module TodosHelper
    
    def myTodos
        myTodos = Array.new
       if current_user
           myTodos = Todo.where(user_id: current_user.id, done: false)
       end
       return myTodos
    end
    
    def myDones
        myDones = Array.new
       if current_user
           myDones = Todo.where(user_id: current_user.id, done: true)
       end
       return myDones
    end
    
end
