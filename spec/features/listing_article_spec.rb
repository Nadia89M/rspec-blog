RSpec.feature "Listing Articles" do
    before do
        john = User.create(email: "john@example.com", password: "password")
        login_as(john)
        @article1 = Article.create(title: "The first article",
        body: "Lorem ipsum dolor sit amet, consectetur.", user: joh) 
        @article2 = Article.create(title: "The second article",
        body: "Pellentesque ac ligula in tellus feugiat.", user: joh) 
    end
    
    scenario "A user lists all articles" do
        
        visit "/"
        expect(page).to have_content(@article1.title) 
        expect(page).to have_content(@article1.body) 
        expect(page).to have_content(@article2.title) 
        expect(page).to have_content(@article2.body) 
        expect(page).to have_link(@article1.title) 
        expect(page).to have_link(@article2.title)
    end
end    