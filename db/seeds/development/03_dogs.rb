# frozen_string_literal: true

puts "== Creating dogs =="

return if Dog.any?

shelters = Shelter.all

Dog.create!(
  name: "Arman",
  species: "German sheppard",
  birthdate: "19.07.2016",
  sex: "male",
  description: "Handsome registered German shepherd Arman is looking for a new home. Arma has a high watchdog, so when guests arrive, the boy has to welcome them in his own style, sniffing carefully. After confirming that the visitors are harmless, he goes on with his own activities. Arman came to the association to look for a home due to a change in the owner's living situation.
Arman is a very friendly, loyal, pleasing boy who loves active activities. Needs a firm and consistent owner, easily takes the reins into his own paws if he senses that he is getting the better of things and then living together can become difficult if the dog does not listen to his owner. Not suitable as a first dog.
Arman does not get along well with other dogs, so he is only placed as an only pet. On a leash, the boy walks nicely, making contact with his handler, but when he sees other dogs, he starts barking. You still need training for using a leash so that overtaking goes smoothly and jogging becomes a relaxed and enjoyable activity for both of you. In the foster home, we have started to train walking on a leash with other dogs for a short distance, after the initial enthusiasm and noises, he is already able to concentrate on receiving commands and walks most of the time by his owner's side without rushing to other dogs.
Being alone has gone without any problems, he hasn't caused havoc or barked on his own, plenty of exercise and activation has helped his calm behavior indoors, allowing you to focus on peaceful rest. Arman has been photographed at the vet, which revealed a suspicion of mild cauda equina syndrome, which does not require any measures at this stage. Hasn't been in pain in a foster home, but Armani is not into any heavy hobby. Exercise and light hobbies, such as nose jobs, are highly recommended. Forest walks are pleasant for the boy, a quiet environment with as few distractions as possible, then Arman is at his best.
We are looking for an adult home for Armani in a detached house in a quiet residential area, and the prospective home is expected to have experience with German shepherds or other service dog breeds. The future home must commit to taking care of the dog's daily ample amount of exercise, activation and training. Not placed in a family with children. Arman is clean inside and in a foster home in Vihti where he can get to know the boy as agreed.",
  shelter: shelters.sample,
)
