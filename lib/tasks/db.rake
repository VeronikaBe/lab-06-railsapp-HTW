
require 'factory_girl'
#usage:
# rake db:populate
# rake db:populate["Customer"]

namespace :db do
  desc "Populate the dev database with FactoryGirl data"
  task :populate, [:model_class] => [:environment] do |t, args|
    # adapted from https://gist.github.com/jgv/4638318
    args.with_defaults(:model_class => "all")
    puts args.inspect
    puts "Resetting the database"
    Rake::Task['db:reset'].invoke
    puts "Creating #{args[:count]} users"
    factory_names = FactoryGirl.factories.map {|f| f.name}
    puts "Found factories: #{factory_names.inspect}"
    puts "SKIP_FACTORIES_WHEN_POPULATING: #{SKIP_FACTORIES_WHEN_POPULATING}"
    factory_names = factory_names - SKIP_FACTORIES_WHEN_POPULATING

    models = factory_names.map{|n| FactoryGirl.build(n)}
    puts "#{models.size} factories, classes:"
    puts models.map{|m|m.class.name}.to_set.inspect
    if args[:model_class] == "all"
      puts "creating all models"
    else
      models = models.select{|m|m.class.name == args[:model_class]}
      puts "creating models of class #{args[:model_class]} (found #{models.size})"
    end
    models.each do | model |
      model.save
    end
  end
end
