# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "albert einstein", password: "123", inventor: true)
User.create(name: "thomas edison", password: "123", inventor: true)
User.create(name: "alexander graham bell", password: "123", inventor: true)
User.create(name: "wright brother", password: "123", inventor: true)
User.create(name: "henry ford", password: "123", inventor: true)
User.create(name: "nikola tesla", password: "123", inventor: true)
User.create(name: "leonardo da vinci", password: "123", inventor: true)
User.create(name: "isaac newton", password: "123", inventor: true)
User.create(name: "steve jobs", password: "123",inventor: true)





User.create(name: "warren buffet", password: "123", investor: true)
User.create(name: "benjamin graham", password: "123", investor: true)
User.create(name: "george soros", password: "123", investor: true)
User.create(name: "bill ackman", password: "123", investor: true)
User.create(name: "donal trump", password: "123", investor: true)
User.create(name: "peter thiel", password: "123", investor: true)
User.create(name: "mark cuban", password: "123", investor: true)
User.create(name: "carlos slim", password: "123", investor: true)
User.create(name: "barbara corcoran", password: "123", investor: true)
User.create(name: "jeff bezos", password: "123", investor: true)
User.create(name: "bernie madoff", password: "123", investor: true)


Invention.create(name: "Einstein Refridgerator", description: "The Einstein–Szilard or Einstein refrigerator is an absorption refrigerator which has no moving parts, operates at constant pressure, and requires only a heat source to operate.",  user_id: 1)
Invention.create( name: "Incandescent light bulb", description: "An incandescent light bulb, incandescent lamp or incandescent light globe is an electric light with a wire filament heated to such a high temperature that it glows with visible light.", user_id: 2)
Invention.create(name: "Telephone", description: "A telephone, or phone, is a telecommunications device that permits two or more users to conduct a conversation when they are too far apart to be heard directly.", user_id: 3)
Invention.create(name: "Aircraft", description: "An aircraft is a machine that is able to fly by gaining support from the air. It counters the force of gravity by using either static lift or by using the dynamic lift of an airfoil, or in a few cases the downward thrust from jet engines.", user_id: 4)
Invention.create(name: "Ford Model T", description: "Affordable automobile produced by the Ford Motor Company.", user_id: 5 )
Invention.create(name: "Tesla Coil", description: " an electrical resonant transformer circuit , used to produce high-voltage, low-current, high frequency alternating-current electricity.", user_id: 6)
Invention.create(name: "33 Barreled Organ", description: "The Viola Organista is a musical instrument that uses a friction belt to vibrate individual strings, with the strings selected by pressing keys on a keyboard.", user_id: 7)
Invention.create(name: "Reflecting Telescope", description: "A reflecting telescope (also called a reflector) is a telescope that uses a single or a combination of curved mirrors that reflect light and form an image.", user_id: 8)
Invention.create(name: "Macintosh", description: "The Macintosh is a family of personal computers designed, manufactured, and sold by Apple Inc.", user_id: 9)

InventionInvestment.create(amount: 30000, user_id: 10, invention_id: 5)
InventionInvestment.create(amount: 10000, user_id: 11, invention_id: 9 )
InventionInvestment.create(amount: 170000, user_id: 12, invention_id: 9)
InventionInvestment.create(amount: 50000, user_id: 13, invention_id: 5)
InventionInvestment.create(amount: 22000, user_id: 14, invention_id: 8)
InventionInvestment.create(amount: 87000, user_id: 15, invention_id: 7)
InventionInvestment.create(amount: 30000, user_id: 16, invention_id: 6)
InventionInvestment.create(amount: 30000, user_id: 17, invention_id: 5)
InventionInvestment.create(amount: 30000, user_id: 18, invention_id: 4)
InventionInvestment.create(amount: 30000, user_id: 19, invention_id: 3)
InventionInvestment.create(amount: 30000, user_id: 20, invention_id: 2)
