require "json"
yorc = JSON.load File.open "./.yo-rc.json"
config = yorc["@feizheng/generator-react-app"]


# main task list:
namespace :app do
  # build & serve:
  desc "Create react-app:view"
  task :view,[:dir, :prefix] do |task, args|
    args.with_defaults(
      dir: config["dirs"]["views"],
      prefix: config["prefix"],
    )
    sh "yo @feizheng/react-app:view --dir=#{args[:dir]} --prefix=#{args[:prefix]}"
  end

  desc "Create react-app:service"
  task :service do
    sh 'yo @feizheng/react-app:service'
  end

  desc "Create react-app:mixin"
  task :mixin do
    sh 'yo @feizheng/react-app:mixin'
  end
end


