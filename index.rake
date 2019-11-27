# main task list:
namespace :app do
  # build & serve:
  desc "Create react-app:view"
  task :view do
    sh 'yo @feizheng/react-app:view'
  end

  desc "Create react-app:service"
  task :service do
    sh 'yo @feizheng/react-app:service'
  end

  desc "Create react-app:mixin"
  task :mixin do
    sh 'yo @feizheng/react-app:mixin'
  end

  desc "Clean yeoman cache"
  task :yo_clean do
    sh 'rake yo:cleang'
  end

  ## clear other task
  Rake::Task.tasks.each do |task|
    unless task.name.include?('app:')
      task.clear_comments
    end
  end
end



