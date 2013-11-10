namespace :fill_db do

  desc "Fill Database"
  task :posts_table => :environment do
    categories = Category.all
    localities = Locality.all
    [1..2].each do |i|
      categories.each do |c|
        localities.each do |l|
          Post.create(:category_id=>c.id,:locality_id=>l.id,:title=>'HNN security services',\
          :description=>'Security servives 24 x 7 hyderabad,Security servives 24 x 7 hyderabad',\
          :city=>'hyderabad',:service_type=>'server',:mobile_no=>'9949763580')
        end
      end
    end
    puts "#{localities.count*categories.count} created"
  end

end