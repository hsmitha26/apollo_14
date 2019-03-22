RSpec.describe 'As a visitor', type: :feature do
  describe 'when I visit astronauts index page' do
    it "shows all the astronauts - name, age and job" do
      astronaut_1 = Astronaut.create(name: 'Neil Armstrong', age: 37, job: "Commander")
      astronaut_2 = Astronaut.create(name: "Ian Douglas", age: 25, job: "First Officer")
      astronaut_3 = Astronaut.create(name: 'Megan McMahon', age: 24, job: "Chief Engineer")
      astronaut_4 = Astronaut.create(name: "Brian Zanti", age: 24, job: 'Chief Medical Officer')

      visit astronauts_path

      expect(page).to have_content(astronaut_1.name)
      expect(page).to have_content(astronaut_1.age)
      expect(page).to have_content(astronaut_1.job)

      expect(page).to have_content(astronaut_2.name)
      expect(page).to have_content(astronaut_2.age)
      expect(page).to have_content(astronaut_2.job)

      expect(page).to have_content(astronaut_3.name)
      expect(page).to have_content(astronaut_3.age)
      expect(page).to have_content(astronaut_3.job)

      expect(page).to have_content(astronaut_4.name)
      expect(page).to have_content(astronaut_4.age)
      expect(page).to have_content(astronaut_4.job)
    end

    it "shows the average age of all the astronauts" do
      astronaut_1 = Astronaut.create(name: 'Neil Armstrong', age: 37, job: "Commander")
      astronaut_2 = Astronaut.create(name: "Ian Douglas", age: 25, job: "First Officer")
      astronaut_3 = Astronaut.create(name: 'Megan McMahon', age: 24, job: "Chief Engineer")
      astronaut_4 = Astronaut.create(name: "Brian Zanti", age: 24, job: 'Chief Medical Officer')

      visit astronauts_path

      expect(page).to have_content("Average Age of all Astronauts: ")
    end
  end
end
