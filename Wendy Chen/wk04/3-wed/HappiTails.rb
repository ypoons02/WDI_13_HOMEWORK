#HappiTails

#Objectives:
#Practice creating objects
#You are the manager at HappiTails animal shelter. You need to manage your
#shelter by storing and manipulating information about clients and animals.

#Specification:
#Object Specs:
#Animal:
#An animal should have a name.
#An animal should have an age.
#An animal should have a gender.
#An animal should have a species.
#An animal can have multiple toys.

#Client:
#A client should have a name.
#A client should have a number of children.
#A client should have an age.
#A client should have a list of pets.

#Shelter:
#The shelter should display all the clients.
#The shelter should display all the animals.

#Relationships:
#A client should be able to adopt an animal.
#A client should be able to put an animal up for adoption

#-------------------------------------------------
#Phase 1
#Can create animals and clients

#Phase 2
#New animals and clients can be added to the shelter

#Phase 3
#When creating an animal or client, the user is prompted for
#information like names, gender etc.

  def initialize
    @@aToyList = Array.new
    @@clientList = Array.new
    @@clientID = 0
    @@animalID = 0
    @@animalList = Array.new
    @adoptClientID
    @adoptAnimalID
  end

  question = Proc.new do |info|
    puts "Please enter #{info}:"
    gets.chomp
  end

  def createClients runProdQuestion
    @cName = runProdQuestion.call 'name'
    @cNoOfChildren = runProdQuestion.call 'no. of Children'
    @cAge = runProdQuestion.call 'age'
    @@clientID = @@clientID + 1

    #createClient
    @@clientList = {clientID:@@clientID, cName:@cName, cNoOfChildren:@cNoOfChildren, cAge:@cAge}
  end

  def createAnimals runProdQuestion
    @aName = runProdQuestion.call 'animal name'
    @aGender = runProdQuestion.call 'animal gender'
    @aAge = runProdQuestion.call 'animal age'
    @aSpecies = runProdQuestion.call 'animal species'
    @aForAdoption = runProdQuestion.call 'is animal for adoption? (y/n)'
    @aSentByClientID = runProdQuestion.call 'sent to home by (clientID)'

    loop do
      @aToys = runProdQuestion.call 'toy'
      @@aToyList << @aToys #insert toy into ToyList in array
      addMoreToys = runProdQuestion.call 'add more toys (y/n)'
      break if addMoreToys=="n"
    end

    #createAnimal
    @@animalList = {animalID:@@animalID, aName:@aName, aGender:@aGender, aAge:@aAge, aSpecies:@aSpecies, aForAdoption:@aForAdoption, aToys:@@aToyList, aAdoptedByClient:"" ,aSendToHomeByClient:@aSentByClientID }
    @@aToyList = [] #clear toylist
    @@animalID = @@animalID + 1;

  end

  def adoptAnimals runProdQuestion
    @adoptClientID = runProdQuestion.call 'Client ID to adopt'
    @adoptAnimalID = runProdQuestion.call 'Animal ID to adopt'
    @adoptAnimalID = @adoptAnimalID.to_i
    @update = false

    @@animalList.each do |key, animal|
      if key == :animalID and animal == 0
         @update = true
        end

      if @update == true
        @@animalList = {:aAdoptedByClient, @adoptClientID}
      end
  end
end

#createClients question
createAnimals question
adoptAnimals question

#@@animalList[0][:aAdoptedByClient] = "YAY"
puts @@animalList
#puts @@clientList


#Phase 4
#At start, the user is prompted with a menu of options:
#display all animals
#display all clients
#create an animal
#create an client
#facilitate client adopts an animal
#facilitate client puts an animal up for adoption
#After selecting from the menu the task the user is prompted through the entire process
