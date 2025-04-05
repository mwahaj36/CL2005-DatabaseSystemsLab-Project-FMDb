use master
-- Use the FMDb database
USE FMDb;
GO


-- Genres

INSERT INTO Genres (GenreName) VALUES
 ('Action'),
 ('Adventure'),
 ('Animation'),
 ('Biography'),
 ('Comedy'),
 ('Crime'),
 ('Drama'),
 ('Family'),
 ('Fantasy'),
 ('History'),
 ('Horror'),
 ('Music'),
 ('Musical'),
 ('Mystery'),
 ('Romance'),
 ('Sci-Fi'),
 ('Sport'),
 ('Thriller'),
 ('War'),
 ('Western');

SELECT * from Genres;
GO 

 -- Keywords

 -- Insert distinct individual keywords (extracted from all comma-separated values)
INSERT INTO Keywords (KeywordName) VALUES
 ('surgeon'),
('romcom'),
('stalker'),
('dream girl'),
('taboo'),
('screwball comedy'),
('frisbee'),
('troubadour'),
('intellectual disability'),
('new york city'),
('police brutality'),
('hip-hop'),
('italian american'),
('culture clash'),
('chaos'),
('heat'),
('street war'),
('restaurant critic'),
('radio transmission'),
('punk rock'),
('pizzeria'),
('police operation'),
('pizza'),
('love'),
('money'),
('racism'),
('brooklyn'),
('heatwave'),
('dreams'),
('street gang'),
('society'),
('psychopath'),
('clown'),
('villain'),
('based on comic'),
('murder'),
('psychological thriller'),
('criminal mastermind'),
('mental illness'),
('anarchy'),
('character study'),
('clown makeup'),
('subway train'),
('social realism'),
('supervillain'),
('tv host'),
('1980s'),
('mother son relationship'),
('origin story'),
('falling into madness'),
('frightened'),
('pretentious'),
('rescue'),
('future'),
('australia'),
('chase'),
('dystopia'),
('post-apocalyptic future'),
('survival'),
('on the run'),
('on the road'),
('desert'),
('convoy'),
('peak oil'),
('dark future'),
('post-apocalyptic'),
('car'),
('suspenseful'),
('intense'),
('awestruck'),
('commanding'),
('hopeful'),
('stuntman'),
('missing person'),
('duringcreditsstinger'),
('movie industry'),
('action comedy'),
('playful'),
('based on tv series'),
('grand'),
('romantic'),
('amused'),
('farcical'),
('indian'),
('revenge thriller'),
('action thriller'),
('night club'),
('transgender'),
('lgbt'),
('fan'),
('musical'),
('partner'),
('film in film'),
('hollywood'),
('broadway'),
('dancing in the street'),
('burlesque'),
('audience'),
('chorus girl'),
('diction coach'),
('pearl necklace'),
('flapper'),
('silent film star'),
('squeaky voice'),
('christmas'),
('old hollywood'),
('provocative'),
('sentimental'),
('exuberant'),
('epic'),
('based on novel or book'),
('fight'),
('politics'),
('sandstorm'),
('sand'),
('spice'),
('chosen one'),
('cult'),
('sequel'),
('tragedy'),
('distant future'),
('tragic hero'),
('creature'),
('planet'),
('destiny'),
('giant worm'),
('space opera'),
('sand dune'),
('allegorical'),
('messiah'),
('fall from grace'),
('shocking'),
('domineering'),
('vengeance'),
('vindictive'),
('cautionary'),
('religious allegory'),
('giant creature'),
('power'),
('violence'),
('ambiguous'),
('antagonistic'),
('audacious'),
('bold'),
('foreboding'),
('melodramatic'),
('writer''s block'),
('bollywood'),
('family relationships'),
('relationship'),
('chocolate'),
('prequel'),
('nostalgic'),
('cartel'),
('grandparent grandchild relationship'),
('wedding'),
('east asian lead'),
('family reunion'),
('grandmother'),
('chinese american'),
('family gathering'),
('ethical dilemma'),
('woman director'),
('lung cancer'),
('deadly disease'),
('personal relationships'),
('grandmother granddaughter relationship'),
('asian american'),
('superhero'),
('alien planet'),
('female villain'),
('norse mythology'),
('aftercreditsstinger'),
('marvel cinematic universe (mcu)'),
('norse god'),
('loki'),
('adolescence'),
('fake boyfriend'),
('based on young adult novel'),
('friendship'),
('parent child relationship'),
('prophecy'),
('part live action'),
('based on toy'),
('falling in love'),
('anti villain'),
('super power'),
('good cop bad cop'),
('live action and animation'),
('lego'),
('father son relationship'),
('loving'),
('mischievous'),
('irreverent'),
('evil tyrant'),
('witty'),
('hilarious'),
('whimsical'),
('celebratory'),
('euphoric'),
('exhilarated'),
('ridiculous'),
('infidelity'),
('wife'),
('marriage crisis'),
('investigation'),
('disappearance'),
('whodunit'),
('blunt'),
('psychotic'),
('search party'),
('criminal lawyer'),
('mysterious'),
('detached'),
('murder suspect'),
('missing wife'),
('satirical'),
('perspective'),
('manipulative woman'),
('killed during sex'),
('time travel'),
('halloween party'),
('unrequited love'),
('time loop'),
('do over'),
('baseball bat'),
('exam'),
('car crash'),
('dyslexia'),
('teacher'),
('prom'),
('learning disability'),
('night school'),
('high school drop out'),
('boxing ring'),
('artificial intelligence (a.i.)'),
('the white house'),
('asteroid'),
('climate change'),
('satire'),
('global warming'),
('comet'),
('end of the world'),
('social commentary'),
('social satire'),
('meteorite'),
('astronomer'),
('disaster'),
('teacher student relationship'),
('denial'),
('mass hysteria'),
('london'),
('england'),
('dark comedy'),
('surrey'),
('parody'),
('slacker'),
('friends'),
('zombie'),
('cynical'),
('survival horror'),
('british pub'),
('boyfriend girlfriend relationship'),
('taunting'),
('zombie apocalypse'),
('frantic'),
('desperate'),
('anxious'),
('dramatic'),
('defiant'),
('countryside'),
('police'),
('village'),
('arrest'),
('rural area'),
('conspiracy'),
('serial killer'),
('gunfight'),
('police force'),
('buddy cop'),
('accident'),
('addiction'),
('alcoholism'),
('apocalypse'),
('homage'),
('pub'),
('pub crawl'),
('swing'),
('writer'),
('india'),
('calcutta'),
('newspaper editor'),
('based on short story'),
('19th century'),
('preserved film'),
('pianist'),
('witness to a crime'),
('blind man'),
('piano'),
('san francisco'),
('california'),
('restaurant owner'),
('widower'),
('childhood friends'),
('reconnect'),
('rekindled romance'),
('childhood sweethearts'),
('emigration'),
('class'),
('alzheimer''s disease'),
('teheran (tehran)'),
('iran'),
('maid'),
('divorce'),
('caregiver'),
('marital separation'),
('family argument'),
('rape'),
('trauma'),
('assault'),
('theater play'),
('attack'),
('rape and revenge'),
('death of a salesman'),
('chicago'),
('illinois'),
('post-traumatic stress disorder (ptsd)'),
('airplane'),
('cataclysm'),
('guitar'),
('alcohol'),
('stewardess'),
('taxi driver'),
('passenger'),
('fear of flying'),
('pilot'),
('medicine'),
('air controller'),
('landing'),
('saxophone'),
('autopilot'),
('spoof'),
('food poisoning'),
('los angeles'),
('alcohol abuse'),
('inflatable life raft'),
('anarchic comedy'),
('dying and death'),
('child abuse'),
('philadelphia'),
('pennsylvania'),
('sense of guilt'),
('afterlife'),
('loss of loved one'),
('confidence'),
('psychology'),
('paranormal phenomena'),
('single'),
('cowardliness'),
('single mother'),
('school play'),
('ghost'),
('child'),
('spiritism'),
('ghost child'),
('supernatural thriller'),
('literature'),
('professor'),
('fate'),
('author'),
('death'),
('dying'),
('novelist'),
('publisher'),
('what if'),
('book'),
('narrator'),
('death of father'),
('revenge'),
('kashmir conflict'),
('hamlet'),
('avenge'),
('rage and hate'),
('s.w.a.t.'),
('sadism'),
('self-fulfilling prophecy'),
('detective'),
('insomnia'),
('religion'),
('shootout'),
('corpse'),
('macabre'),
('seven deadly sins'),
('depravity'),
('neo-noir'),
('sinister'),
('ominous'),
('seven: los siete pecados capitales'),
('escape'),
('paranoia'),
('suspicion'),
('video surveillance'),
('deception'),
('hidden camera'),
('simulated reality'),
('television producer'),
('tv show in film'),
('questioning'),
('make believe'),
('reflective'),
('actor'),
('tv show'),
('dignified'),
('allegory of the cave'),
('adultery'),
('circus'),
('biography'),
('rags to riches'),
('based on true story'),
('outcast'),
('singing'),
('dreamer'),
('freak show'),
('absurd'),
('cliché'),
('complicated'),
('coming out'),
('loneliness'),
('usa'),
('kidnapping'),
('hostage'),
('maze'),
('symbolism'),
('georgia'),
('beating'),
('god'),
('vigilante'),
('crime scene'),
('brutality'),
('candlelight vigil'),
('animal cruelty'),
('sex offender'),
('child abduction'),
('beach'),
('hope'),
('toronto'),
('canada'),
('cousin'),
('dublin'),
('ireland'),
('travel'),
('best friend'),
('job promotion'),
('multiple perspectives'),
('medical school'),
('living with sibling'),
('papercut animation'),
('long term relationship'),
('brother sister relationship'),
('sister sister relationship'),
('college dropout'),
('casual'),
('animator'),
('crush on friend'),
('friend zone'),
('comforting'),
('husband wife relationship'),
('war veteran'),
('fbi'),
('greed'),
('oklahoma'),
('manipulation'),
('native american'),
('series of murders'),
('genocide'),
('period drama'),
('courtroom'),
('guilt'),
('true crime'),
('oil industry'),
('death of sister'),
('catholicism'),
('uncle nephew relationship'),
('catholic guilt'),
('1920s'),
('candid'),
('grim'),
('osage indian'),
('gullibility'),
('poisoning'),
('diabetes'),
('revisionist western'),
('meta'),
('western'),
('depressing'),
('empathetic'),
('harsh'),
('tragic'),
('depression'),
('winter'),
('cat'),
('subway'),
('pregnancy'),
('overdose'),
('melancholy'),
('folk music'),
('aspiring singer'),
('grief'),
('hitchhiker'),
('cafe'),
('recording'),
('self expression'),
('greenwich village'),
('merchant marine'),
('1960s'),
('couchsurfing'),
('bleak'),
('struggling musician'),
('death of friend'),
('autism'),
('mumbai (bombay)'),
('prejudice'),
('disability'),
('asperger''s syndrome'),
('classic bollywood'),
('1970s'),
('reincarnation'),
('sociopath'),
('betrayal'),
('disco'),
('predator turns victim'),
('unlikely lovers'),
('desire for fame'),
('2000s'),
('crossover'),
('high school'),
('affectation'),
('fake identity'),
('bullying'),
('high school sports'),
('adult as a child'),
('age change'),
('lighthearted'),
('enchant'),
('assassin'),
('espionage'),
('spy'),
('arms dealer'),
('terrorism'),
('terrorist attack'),
('nuclear weapons'),
('terrorist plot'),
('backwards'),
('alternate timeline'),
('oslo'),
('norway'),
('time paradox'),
('kyiv (kiev)'),
('ukraine'),
('dead body'),
('deserted island'),
('buddy comedy'),
('fart'),
('con man'),
('con artist'),
('attempted jailbreak'),
('engagement party'),
('mislaid trust'),
('bank fraud'),
('conman'),
('fraudster'),
('mask'),
('social worker'),
('transvestite'),
('nanny'),
('restaurant'),
('custody battle'),
('responsibility'),
('voice acting'),
('divorced couple'),
('gore'),
('stalking'),
('teenage girl'),
('split personality'),
('multiple personality'),
('traumatic childhood'),
('dissociative identity disorder'),
('farm'),
('faith'),
('miracle'),
('alien'),
('alien invasion'),
('crop circle'),
('alien attack'),
('death of wife'),
('loss of faith'),
('alien encounter'),
('wheelchair'),
('road trip'),
('muscular dystrophy'),
('approving'),
('runaway'),
('wrestling'),
('down syndrome'),
('wrestling coach'),
('raft'),
('nursing home'),
('dream come true'),
('escape plan'),
('southern gothic'),
('temple'),
('grandfather'),
('romantic rivalry'),
('ashes'),
('journey'),
('burglar'),
('secret identity'),
('crime fighter'),
('villainess'),
('time bomb'),
('cover-up'),
('destruction'),
('fighting'),
('criminal underworld'),
('cat burglar'),
('flood'),
('martial arts'),
('two man army'),
('chinese mafia'),
('cop'),
('consul'),
('crime lord'),
('art treasures'),
('child kidnapping'),
('action hero'),
('usa president'),
('nuclear war'),
('mass murder'),
('narration'),
('soviet union'),
('retirement'),
('animated scene'),
('doomsday'),
('masked vigilante'),
('doomsday clock'),
('red square'),
('admiring'),
('assertive'),
('samurai'),
('asylum'),
('brothel'),
('sword fight'),
('dragon'),
('robot'),
('inmate'),
('lobotomy'),
('war zone'),
('abusive stepfather'),
('rape culture'),
('alternate reality'),
('physicist'),
('based on memoir or autobiography'),
('fictional biography'),
('motor neuron disease'),
('als'),
('cambridge university'),
('inspirational'),
('japan'),
('hero'),
('world war ii'),
('abusive father'),
('pacifism'),
('bible'),
('vegetarian'),
('okinawa'),
('conscientious objector'),
('soldier'),
('alcoholic'),
('war hero'),
('pacifist'),
('medic'),
('us military'),
('battle of okinawa'),
('congressional medal of honor'),
('combat medic'),
('weaponless'),
('seventh-day adventists'),
('transporter'),
('boxer'),
('angry'),
('boxing'),
('adoring'),
('ambivalent'),
('ku klux klan'),
('black panther party'),
('undercover cop'),
('white supremacy'),
('thoughtful'),
('kkk'),
('kkk rally'),
('right and justice'),
('political activism'),
('black activist'),
('counter-culture'),
('historical fiction'),
('activist'),
('courtroom drama'),
('cave'),
('earthquake'),
('swimming pool'),
('drug use'),
('palm springs'),
('nemesis'),
('maid of honor'),
('carefree'),
('older sister'),
('groundhog day'),
('stuck'),
('sister''s wedding'),
('chance encounter'),
('workaholic'),
('birthday'),
('truth'),
('lie'),
('wish'),
('legal drama'),
('movie business'),
('dc comics'),
('slapstick comedy'),
('car race'),
('sports'),
('car mechanic'),
('le mans'),
('racing'),
('race car driver'),
('powerful'),
('female friendship'),
('female protagonist'),
('campy'),
('teen comedy'),
('lgbt teen'),
('teenage romance'),
('teen drama'),
('generation z'),
('gay theme'),
('lesbian'),
('sapphic'),
('suicide'),
('indiana'),
('new love'),
('lovesickness'),
('moon'),
('moses'),
('prayer'),
('christianity'),
('journalism'),
('news reporter'),
('female journalist'),
('religious conflict'),
('praying'),
('almighty'),
('central intelligence agency (cia)'),
('secret agent'),
('high school reunion'),
('accountant'),
('radical transformation'),
('high school classmates'),
('glory days'),
('sarcastic'),
('sardonic'),
('washington dc'),
('sibling relationship'),
('amusement park'),
('twinkie'),
('body count'),
('zombification'),
('disposing of a dead body'),
('loner'),
('fear of clowns'),
('enthusiastic'),
('saving the world'),
('flying'),
('superhuman'),
('mysterious force'),
('reboot'),
('save the day'),
('dc extended universe (dceu)'),
('save the planet'),
('alien spaceship'),
('resurrection'),
('superhero team'),
('planet invasion'),
('superhero teamup'),
('bounty hunter'),
('extreme sports'),
('cyberpunk'),
('based on manga'),
('female cyborg'),
('live action remake'),
('floating city'),
('gunnm'),
('enraged'),
('straightforward'),
('spacecraft'),
('planet mars'),
('nasa'),
('isolation'),
('botanist'),
('alone'),
('space'),
('engineering'),
('stranded'),
('astronaut'),
('struggle for survival'),
('deep space'),
('potatoes'),
('2030s'),
('mars'),
('life and death'),
('broken engagement'),
('love at first sight'),
('fireworks'),
('religion and supernatural'),
('based on play or musical'),
('teenage crush'),
('grim reaper'),
('doctor'),
('millionaire'),
('death personified'),
('death incarnate'),
('angel of death'),
('encontro marcado'),
('appreciative'),
('compassionate'),
('new year''s eve'),
('vietnam war'),
('vietnam veteran'),
('mentally disabled'),
('waitress'),
('hippie'),
('single parent'),
('optimism'),
('drug addiction'),
('alabama'),
('bus stop'),
('chameleon'),
('military'),
('anti war protest'),
('college american football'),
('america'),
('feel-good'),
('terminal illness'),
('rebellious youth'),
('heartbreak'),
('rock musical'),
('rockstar'),
('slum'),
('cheating'),
('game show'),
('quiz'),
('orphan'),
('taj mahal'),
('soulmates'),
('midlife crisis'),
('babysitter'),
('womanizer'),
('law school'),
('middle school'),
('love affair'),
('divorcee'),
('teenage love'),
('dancing'),
('widow'),
('letter'),
('neighbor'),
('ex-wife'),
('institutionalization'),
('bipolar'),
('restraining order'),
('male mental health'),
('businessman'),
('shyness'),
('hawaii'),
('dysfunctional family'),
('psychological abuse'),
('scam artist'),
('telephone sex'),
('pudding'),
('sweepstakes'),
('harmonium'),
('absurdist'),
('social anxiety'),
('emotional abuse'),
('provo utah'),
('scam call center'),
('overbearing sister'),
('daughter'),
('bookshop'),
('shore'),
('advice columnist'),
('single father'),
('theatre group'),
('north carolina'),
('coming of age'),
('cancer'),
('tragic love'),
('valentine''s day'),
('star crossed lovers'),
('distressing'),
('feminism'),
('patriarchy'),
('doll'),
('fantasy world'),
('motherhood'),
('existentialism'),
('mother daughter relationship'),
('gender discrimination'),
('secret world'),
('matel'),
('deaf-mute'),
('handicapped'),
('rebellion'),
('army'),
('robbery'),
('france'),
('love triangle'),
('mayor'),
('french revolution'),
('barricade'),
('prostitution');


GO
INSERT INTO Keywords (KeywordName) VALUES
('convict'),
('forced prostitution'),
('police inspector'),
('girl disguised as boy'),
('historical drama'),
('out of wedlock child'),
('historical romance'),
('death of a child'),
('abusive family'),
('corrupt businessman'),
('indifferent'),
('drug dealer'),
('nerd'),
('male friendship'),
('crude humor'),
('high school student'),
('police academy'),
('high school rivalry'),
('bicycle cop'),
('cops'),
('party drugs'),
('one night'),
('fake id'),
('serene'),
('small town'),
('loss of virginity'),
('teen movie'),
('rumor'),
('pretend relationship'),
('gay friend'),
('teenager'),
('bet'),
('gambling'),
('auction'),
('ethiopia'),
('art house'),
('debt'),
('apartment building'),
('opal'),
('pawnshop'),
('city life'),
('independent film'),
('black opal'),
('music recording'),
('singer-songwriter'),
('street musician'),
('recording session'),
('street singer'),
('newspaper'),
('journalist'),
('killing'),
('victim'),
('code'),
('young man'),
('fourth of july'),
('newspaper article'),
('curious'),
('cartoonist'),
('zodiac killer'),
('clinical'),
('bar'),
('video game'),
('virtual reality'),
('gun'),
('gamer'),
('bank robbery'),
('bank teller'),
('programmer'),
('mmorpg'),
('heroic'),
('vrmmo'),
('mad scientist'),
('raccoon'),
('hopeless'),
('cosmic'),
('outer space'),
('chosen family'),
('cheerful'),
('disheartening'),
('sympathetic'),
('taxi'),
('corruption'),
('new jersey'),
('expensive restaurant'),
('blackmail'),
('mistaken identity'),
('stripper'),
('mafia boss'),
('muscleman'),
('district attorney'),
('manhattan'),
('outtakes'),
('detectives'),
('breaking in'),
('thieves'),
('married couple with children'),
('reservation'),
('game'),
('group of friends'),
('classmates'),
('pornography'),
('private investigator'),
('private eye'),
('earnest'),
('vibrant'),
('immigrant'),
('muslim'),
('roommates'),
('sadness'),
('sarcasm'),
('comedian'),
('one-man show'),
('pakistan'),
('matchmaking'),
('cultural difference'),
('hospital'),
('illness'),
('intercultural relationship'),
('college student'),
('uber'),
('traditional family'),
('comedy club'),
('stand-up comedian'),
('grad school'),
('atomic bomb'),
('patriotism'),
('new mexico'),
('atomic bomb test'),
('physics'),
('historical event'),
('communism'),
('red scare'),
('mccarthyism'),
('top secret project'),
('moral dilemma'),
('usa politics'),
('1940s'),
('antisemitism'),
('20th century'),
('manhattan project'),
('los alamos'),
('concert'),
('nazi'),
('resistance'),
('warsaw ghetto'),
('polish resistance'),
('homeland'),
('holocaust (shoah)'),
('hunger'),
('prisoner of war'),
('ghetto'),
('deportation'),
('jew persecution'),
('liberation'),
('poland'),
('theater director'),
('lawyer'),
('divorce lawyer'),
('sincere'),
('elephant'),
('gambling debt'),
('orgy'),
('cocaine'),
('champagne'),
('filmmaking'),
('movie star'),
('fading star'),
('sex'),
('funeral'),
('boston'),
('massachusetts'),
('brother'),
('boat'),
('house fire'),
('nephew'),
('ex-husband ex-wife relationship'),
('legal guardian'),
('dysfunctional life'),
('times square'),
('marijuana'),
('magic realism'),
('meditative'),
('jealousy'),
('gallery'),
('date'),
('architect'),
('interview'),
('sister'),
('summer'),
('year'),
('heartache'),
('magic'),
('competition'),
('obsession'),
('hostility'),
('diary'),
('twist'),
('tricks'),
('illusion'),
('rivalry'),
('steampunk'),
('cruelty'),
('hanging'),
('jail cell'),
('nikola tesla'),
('magician'),
('tesla coil'),
('bittersweet'),
('mind-blowing'),
('imaginary friend'),
('hitler youth'),
('nazism'),
('child protagonist'),
('adolf hitler'),
('children in wartime'),
('externally controlled action'),
('hypnosis'),
('parents-in-law'),
('racist'),
('interracial relationship'),
('biting'),
('neurosurgeon'),
('stereotype'),
('brain surgery'),
('race-conscious'),
('atlanta'),
('crime boss'),
('heist'),
('getaway car'),
('getaway driver'),
('sign languages'),
('armed robbery'),
('hearing impaired'),
('joyful'),
('urgent'),
('hacker'),
('ex-girlfriend'),
('harvard university'),
('narcissism'),
('hacking'),
('twins'),
('double cross'),
('creator'),
('frat party'),
('social network'),
('deposition'),
('intellectual property'),
('entrepreneur'),
('arrogance'),
('social media'),
('young entrepreneur'),
('facebook'),
('callous'),
('guerrilla warfare'),
('swastika'),
('paris'),
('self sacrifice'),
('dynamite'),
('mexican standoff'),
('german occupation of france'),
('british politics'),
('teen angst'),
('high school graduation'),
('loss of job'),
('catholic school'),
('first love'),
('semi autobiographical'),
('sacramento'),
('college applications'),
('shrew'),
('shakespeare in modern dress'),
('opposites attract'),
('overprotective father'),
('skateboarding'),
('ex-boyfriend'),
('dating'),
('guitar player'),
('break-up'),
('based on graphic novel'),
('whipping'),
('hipster'),
('underage girlfriend'),
('unconsciousness'),
('girl fight'),
('vegan'),
('garage band'),
('band competition'),
('mission'),
('philosophy'),
('memory'),
('architecture'),
('dream world'),
('subconscious'),
('hotel'),
('painting'),
('wartime'),
('eastern europe'),
('theft'),
('bellboy'),
('mentor protégé relationship'),
('european'),
('hotel lobby'),
('renaissance painting'),
('1930s'),
('ironic'),
('joyous'),
('joker'),
('scarecrow'),
('organized crime'),
('regret'),
('deja vu'),
('amnesia'),
('operation'),
('relationship problems'),
('brainwashing'),
('memory manipulation'),
('race against time'),
('time warp'),
('expedition'),
('space travel'),
('wormhole'),
('famine'),
('hibernation'),
('black hole'),
('quantum mechanics'),
('scientist'),
('farmer'),
('space station'),
('space adventure'),
('cryonics'),
('cornfield'),
('time manipulation'),
('composer'),
('artist'),
('hiv/aids epidemic'),
('portrait of an artist'),
('dance'),
('jazz'),
('ambition'),
('casting'),
('coffee shop'),
('jazz club'),
('traffic jam'),
('pier'),
('audition'),
('planetarium'),
('aspiring actor'),
('movie set'),
('sunset'),
('one woman show'),
('pool party'),
('griffith observatory'),
('horse'),
('exploitation'),
('ufo'),
('child star'),
('chimpanzee'),
('horse farm'),
('african american man'),
('racial issues'),
('luck'),
('deadly snake'),
('shinkansen'),
('kung fu'),
('generations conflict'),
('chinese woman'),
('surrealism'),
('laundromat'),
('chinese'),
('hot dog'),
('asian woman'),
('chinese immigrant'),
('imaginative'),
('intergenerational trauma'),
('internal revenue service'),
('interdimensional travel'),
('island'),
('donkey'),
('irish civil war (1922-23)'),
('church'),
('drinking'),
('former best friend'),
('self mutilation'),
('fiddle'),
('big family'),
('mansion'),
('family home'),
('murder mystery'),
('privilege'),
('drug smuggling'),
('girlfriend'),
('snack bar'),
('hong kong'),
('expiration date'),
('flight attendant'),
('cleaning'),
('worker'),
('homeless person'),
('bus'),
('homelessness'),
('church service'),
('bad luck'),
('salesman'),
('stockbroker'),
('inspiring story'),
('poor'),
('working life'),
('happiness'),
('capitalism'),
('black market'),
('identity'),
('beauty'),
('aging'),
('celebrity'),
('has been'),
('aerobics'),
('disfigurement'),
('beauty standards'),
('insecure woman'),
('toxic masculinity'),
('body horror'),
('female rage'),
('youth'),
('actress'),
('attraction'),
('pakistani culture'),
('social life'),
('social justice'),
('italy'),
('patriarch'),
('europe'),
('mafia'),
('crime family'),
('sicilian mafia'),
('religious hypocrisy'),
('gun violence'),
('rise to power'),
('dead horse'),
('gang violence'),
('massage'),
('stolen money'),
('briefcase'),
('redemption'),
('heirloom'),
('dance competition'),
('empire'),
('emperor'),
('hallucinogen'),
('treason'),
('baron'),
('premonition'),
('water shortage'),
('knife fight'),
('wonder'),
('jewish american'),
('american abroad'),
('irishman'),
('scheme'),
('gangsters'),
('age difference'),
('balloon'),
('dog'),
('pets'),
('exploring'),
('senior');


select * from Keywords;
GO

-- Directors 

INSERT INTO Directors (DirectorName) VALUES
('Bobby Farrelly'),
('Peter Farrelly'),
('Spike Lee'),
('Todd Phillips'),
('George Miller'),
('David Leitch'),
('Dev Patel'),
('Stanley Donen'),
('Gene Kelly'),
('Denis Villeneuve'),
('Akshay Roy'),
('Vinil Mathew'),
('Paul King'),
('Lulu Wang'),
('Taika Waititi'),
('Chris Nelson'),
('Phil Lord'),
('Christopher Miller'),
('David Fincher'),
('Ari Sandel'),
('Malcolm D. Lee'),
('Adam McKay'),
('Edgar Wright'),
('Satyajit Ray'),
('Sriram Raghavan'),
('Nahnatchka Khan'),
('Asghar Farhadi'),
('Jim Abrahams'),
('David Zucker'),
('Jerry Zucker'),
('M. Night Shyamalan'),
('Marc Forster'),
('Vishal Bhardwaj'),
('Peter Weir'),
('Michael Gracey'),
('Shakun Batra'),
('Sajid Ali'),
('Michael Dowse'),
('Martin Scorsese'),
('Ethan Coen'),
('Joel Coen'),
('Karan Johar'),
('Priyadarshan'),
('Farah Khan'),
('Burr Steers'),
('Christopher Nolan'),
('Daniel Kwan'),
('Daniel Scheinert'),
('Steven Spielberg'),
('Chris Columbus'),
('Rob Burnett'),
('Tyler Nilson'),
('Michael Schwartz'),
('Rohit Shetty'),
('Brett Ratner'),
('Zack Snyder'),
('James Marsh'),
('Mel Gibson'),
('Michael Mann'),
('Aaron Sorkin'),
('Max Barbakow'),
('Tom Shadyac'),
('Aaron Horvath'),
('Peter Rida Michail'),
('James Mangold'),
('Jennifer Kaytin Robinson'),
('Brett Haley'),
('Lorene Scafaria'),
('Rawson Marshall Thurber'),
('Chris McKay'),
('Sekhar Kammula'),
('Ruben Fleischer'),
('Shoojit Sircar'),
('Robert Rodriguez'),
('Ridley Scott'),
('Martin Brest'),
('Robert Zemeckis'),
('Imtiaz Ali'),
('Danny Boyle'),
('Loveleen Tandan'),
('Glenn Ficarra'),
('John Requa'),
('David O. Russell'),
('Paul Thomas Anderson'),
('Peter Hedges'),
('Adam Shankman'),
('Greta Gerwig'),
('Anurag Basu'),
('Tom Hooper'),
('Greg Mottola'),
('Will Gluck'),
('Benny Safdie'),
('Josh Safdie'),
('John Carney'),
('Shawn Levy'),
('James Gunn'),
('Jeff Tomsic'),
('Shane Black'),
('Michael Showalter'),
('Roman Polanski'),
('Noah Baumbach'),
('Damien Chazelle'),
('Kenneth Lonergan'),
('Alejandro G. Iñárritu'),
('Marc Webb'),
('Jordan Peele'),
('Quentin Tarantino'),
('Gil Junger'),
('Wes Anderson'),
('Michel Gondry'),
('Bob Persichetti'),
('Peter Ramsey'),
('Rodney Rothman'),
('Lin-Manuel Miranda'),
('Martin McDonagh'),
('Rian Johnson'),
('Wong Kar-Wai'),
('Gabriele Muccino'),
('Coralie Fargeat'),
('Saim Sadiq'),
('Sarmad Sultan Khoosat'),
('Francis Ford Coppola');


select * from Directors ;
GO 

-- Writers 

INSERT INTO Writers (WriterName) VALUES
('Ed Decter'),
('John J. Strauss'),
('Peter Farrelly'),
('Bobby Farrelly'),
('Spike Lee'),
('Todd Phillips'),
('Scott Silver'),
('Bob Kane'),
('Bill Finger'),
('Jerry Robinson'),
('George Miller'),
('Brendan McCarthy'),
('Nick Lathouris'),
('Glen A. Larson'),
('Drew Pearce'),
('Dev Patel'),
('Paul Angunawela'),
('John Collee'),
('Betty Comden'),
('Adolph Green'),
('Denis Villeneuve'),
('Jon Spaihts'),
('Frank Herbert'),
('Soumik Sen'),
('Suprotim Sengupta'),
('Harshavardhan Kulkarni'),
('Anurag Kashyap'),
('Purva Naresh'),
('Vinil Mathew'),
('Roald Dahl'),
('Paul King'),
('Simon Farnaby'),
('Lulu Wang'),
('Eric Pearson'),
('Craig Kyle'),
('Christopher L. Yost'),
('Stan Lee'),
('Larry Lieber'),
('Jack Kirby'),
('Greg Pak'),
('Walter Simonson'),
('Carlo Pagulayan'),
('Steve Bloom'),
('Randall Green'),
('Phil Lord'),
('Christopher Miller'),
('Dan Hageman'),
('Kevin Hageman'),
('Ole Kirk Christiansen'),
('Godtfred Kirk Christiansen'),
('Jens Nygaard Knudsen'),
('Gillian Flynn'),
('John Whittington'),
('Kevin Hart'),
('Harry Ratchford'),
('Joey Wells'),
('Matthew Kellard'),
('Nicholas Stoller'),
('John Hamburg'),
('Adam McKay'),
('David Sirota'),
('Lee Sung Jin'),
('Jean Kyoung Frazier'),
('Simon Pegg'),
('Edgar Wright'),
('Rabindranath Tagore'),
('Satyajit Ray'),
('Arijit Biswas'),
('Yogesh Chandekar'),
('Sriram Raghavan'),
('Hemanth M. Rao'),
('Pooja Ladha Surti'),
('Olivier Treiner'),
('Ali Wong'),
('Randall Park'),
('Michael Golamco'),
('Asghar Farhadi'),
('Jim Abrahams'),
('David Zucker'),
('Jerry Zucker'),
('Hall Bartlett'),
('John C. Champion'),
('Arthur Hailey'),
('M. Night Shyamalan'),
('Zach Helm'),
('William Shakespeare'),
('Basharat Peer'),
('Vishal Bhardwaj'),
('Andrew Kevin Walker'),
('Andrew Niccol'),
('Jenny Bicks'),
('Bill Condon'),
('Shakun Batra'),
('Ayesha DeVitre'),
('Spandan Mishra'),
('Imtiaz Ali'),
('Sajid Ali'),
('Aaron Guzikowski'),
('Elan Mastai'),
('T.J. Dawe'),
('Michael Rinaldi'),
('Jody Hill'),
('Danny McBride'),
('Eric Roth'),
('Martin Scorsese'),
('David Grann'),
('Joel Coen'),
('Ethan Coen'),
('Shibani Bathija'),
('Niranjan Iyengar'),
('Siddique'),
('Lal'),
('Neeraj Vora'),
('Anand S. Vardhan'),
('Farah Khan'),
('Mushtaq Shiekh'),
('Mayur Puri'),
('Jason Filardi'),
('Christopher Nolan'),
('Daniel Scheinert'),
('Daniel Kwan'),
('Frank Abagnale Jr.'),
('Stan Redding'),
('Jeff Nathanson'),
('Anne Fine'),
('Randi Mayem Singer'),
('Leslie Dixon'),
('Guy Ritchie'),
('Matthew Read'),
('Nick Vallelonga'),
('Brian Hayes Currie'),
('Rob Burnett'),
('Jonathan Evison'),
('Tyler Nilson'),
('Michael Schwartz'),
('K. Subhash'),
('Yunus Sajawal'),
('Robin Bhatt'),
('Farhad Samji'),
('Sajid'),
('Madhiyalagan Subbaiah'),
('Jonathan Nolan'),
('David S. Goyer'),
('Ross LaManna'),
('Jim Kouf'),
('Dave Gibbons'),
('David Hayter'),
('Alex Tse'),
('Zack Snyder'),
('Steve Shibuya'),
('Anthony McCarten'),
('Jane Hawking'),
('Robert Schenkkan'),
('Andrew Knight'),
('Gregory Allen Howard'),
('Stephen J. Rivele'),
('Christopher Wilkinson'),
('Charlie Wachtel'),
('David Rabinowitz'),
('Kevin Willmott'),
('Ron Stallworth'),
('Aaron Sorkin'),
('Andy Siara'),
('Max Barbakow'),
('Paul Guay'),
('Stephen Mazur'),
('Chugong'),
('H-Goon'),
('Michael Jelenic'),
('Aaron Horvath'),
('Jerry Siegel'),
('Joe Shuster'),
('Marv Wolfman'),
('George Pérez'),
('Arnold Drake'),
('William Moulton Marston'),
('Jez Butterworth'),
('John-Henry Butterworth'),
('Jason Keller'),
('Celeste Ballard'),
('Jennifer Kaytin Robinson'),
('Jennifer Niven'),
('Liz Hannah'),
('Lorene Scafaria'),
('Steve Koren'),
('Mark O''Keefe'),
('Steve Oedekerk'),
('Ike Barinholtz'),
('David Stassen'),
('Rawson Marshall Thurber'),
('Seth Grahame-Smith'),
('Chris McKenna'),
('Erik Sommers'),
('Jared Stern'),
('Harry G. Peter'),
('Sekhar Kammula'),
('Rhett Reese'),
('Paul Wernick'),
('Juhi Chaturvedi'),
('James Cameron'),
('Laeta Kalogridis'),
('Yukito Kishiro'),
('Drew Goddard'),
('Andy Weir'),
('Ron Osborn'),
('Jeff Reno'),
('Kevin Wade'),
('Bo Goldman'),
('Alberto Casella'),
('Walter Ferris'),
('Maxwell Anderson'),
('Gladys Lehman'),
('Winston Groom'),
('Muazzam Beg'),
('Simon Beaufoy'),
('Vikas Swarup'),
('Dan Fogelman'),
('David O. Russell'),
('Matthew Quick'),
('Paul Thomas Anderson'),
('Pierce Gardner'),
('Peter Hedges'),
('Nicholas Sparks'),
('Karen Janszen'),
('Greta Gerwig'),
('Noah Baumbach'),
('Anurag Basu'),
('Tani Basu'),
('Sanjeev Dutta'),
('William Nicholson'),
('Alain Boublil'),
('Claude-Michel Schönberg'),
('Herbert Kretzmer'),
('Victor Hugo'),
('Michael Bacall'),
('Jonah Hill'),
('Patrick Hasburgh'),
('Stephen J. Cannell'),
('Seth Rogen'),
('Evan Goldberg'),
('Bert V. Royal'),
('Ronald Bronstein'),
('Josh Safdie'),
('Benny Safdie'),
('John Carney'),
('James Vanderbilt'),
('Robert Graysmith'),
('Matt Lieberman'),
('Zak Penn'),
('James Gunn'),
('Jim Starlin'),
('Steve Englehart'),
('Don Heck'),
('Roger Stern'),
('John Buscema'),
('Sal Buscema'),
('Keith Giffen'),
('Josh Klausner'),
('Rob McKittrick'),
('Mark Steilen'),
('Russell Adams'),
('Shane Black'),
('Anthony Bagarozzi'),
('Emily V. Gordon'),
('Kumail Nanjiani'),
('Kai Bird'),
('Martin Sherwin'),
('Ronald Harwood'),
('Wladyslaw Szpilman'),
('Damien Chazelle'),
('Kenneth Lonergan'),
('Alejandro G. Iñárritu'),
('Nicolás Giacobone'),
('Alexander Dinelaris'),
('Armando Bo'),
('Raymond Carver'),
('Scott Neustadter'),
('Michael H. Weber'),
('Christine Leunens'),
('Taika Waititi'),
('Jordan Peele'),
('Ben Mezrich'),
('Quentin Tarantino'),
('Karen McCullah'),
('Kirsten Smith'),
('Bryan Lee O''Malley'),
('Stefan Zweig'),
('Wes Anderson'),
('Hugo Guinness'),
('Charlie Kaufman'),
('Michel Gondry'),
('Pierre Bismuth'),
('Steven Levenson'),
('Jonathan Larson'),
('Zak Olkewicz'),
('Kôtarô Isaka'),
('Martin McDonagh'),
('Rian Johnson'),
('Wong Kar-Wai'),
('Steve Conrad'),
('Coralie Fargeat'),
('Saim Sadiq'),
('Maggie Briggs'),
('Nirmal Bano'),
('Mario Puzo'),
('Francis Ford Coppola'),
('Roger Avary'),
('Wajid Shaikh'),
('Ivan Atkinson'),
('Marn Davies'),
('Lauren Bond'),
('Pete Docter'),
('Bob Peterson'),
('Tom McCarthy'),
('Yûko Kakihara'),
('Akira Toriyama'),
('Atsushi Maekawa'),
('Kôhei Horikoshi'),
('Hajime Isayama'),
('Yasuko Kobayashi'),
('Masashi Kishimoto'),
('Eiichirô Oda'),
('Tite Kubo'),
('Masashi Sogo'),
('Vince Gilligan'),
('Peter Gould'),
('Ricky Gervais'),
('Brendan Hunt'),
('Álex Pina'),
('Hwang Dong-hyuk'),
('Greg Daniels'),
('David Crane'),
('Matt Duffer'),
('David Benioff'),
('Ryan J. Condal'),
('Steven Knight'),
('Charlie Brooker'),
('Peter Morgan'),
('Mark Gatiss'),
('Michael Crichton'),
('Lisa Joy'),
('Nic Pizzolatto'),
('Garth Ennis'),
('Noah Hawley'),
('Lee Edward Colston'),
('Baran bo Odar'),
('Jantje Friese'),
('Bill Dubuque'),
('Jesse Armstrong'),
('Jamie Carragher'),
('Carlo Bernard'),
('John Douglas'),
('Mark Olshaker'),
('Joe Penhall'),
('Lauren Schmidt Hissrich'),
('Matthew Weiner'),
('Jonathan Igla'),
('J.J. Abrams'),
('Paul T. Scheuring'),
('Jon Favreau'),
('George Lucas'),
('Jeff Lindsay'),
('James Manos Jr.'),
('Carter Bays'),
('Craig Thomas'),
('Dan Goor'),
('Michael Schur'),
('Chuck Lorre'),
('Greg Berlanti'),
('Marc Guggenheim'),
('Geoff Johns'),
('Alfred Gough'),
('Tim Kring'),
('Yule Caise'),
('Matt Corman'),
('Chris Ord'),
('Brian Michael Bendis'),
('Michael Gaydos'),
('Melissa Rosenberg'),
('Cheo Hodari Coker'),
('Archie Goodwin'),
('Scott Buck'),
('Gil Kane'),
('Akiva Goldsman'),
('Bruno Heller'),
('Eric Kripke'),
('Mike Dringenberg'),
('Brad Falchuk'),
('Ryan Murphy'),
('Lauren LeFranc'),
('David Chase');

select * from Writers ;
GO 

-- Actors 

INSERT INTO Actors (ActorName) VALUES
('Cameron Diaz')
,('Danny Aiello')
,('Joaquin Phoenix')
,('Tom Hardy')
,('Ryan Gosling')
,('Dev Patel')
,('Gene Kelly')
,('Timothée Chalamet')
,('Isabelle Almoyan')
,('Ayushmann Khurrana')
,('Sidharth Malhotra')
,('Shuzhen Zhao')
,('Chris Hemsworth')
,('Noah Centineo')
,('Will Arnett')
,('Ben Affleck')
,('Adam Devine')
,('Kevin Hart')
,('Leonardo DiCaprio')
,('Steven Yeun')
,('Simon Pegg')
,('Thomas Law')
,('Soumitra Chatterjee')
,('Ali Wong')
,('Leila Hatami')
,('Shahab Hosseini')
,('Kareem Abdul-Jabbar')
,('Bruce Willis')
,('Will Ferrell')
,('Tabu')
,('Morgan Freeman')
,('Jim Carrey')
,('Hugh Jackman')
,('Rishi Kapoor')
,('Avinash Tiwary')
,('Daniel Radcliffe')
,('Danny McBride')
,('Oscar Isaac')
,('Shah Rukh Khan')
,('Akshay Kumar')
,('Zac Efron')
,('Juhan Ulfsak')
,('Paul Dano')
,('Robin Williams')
,('James McAvoy')
,('Mel Gibson')
,('Theo James')
,('Viggo Mortensen')
,('Alex Huff')
,('Zack Gottsagen')
,('Deepika Padukone')
,('Christian Bale')
,('Ken Leung')
,('Malin Akerman')
,('Emily Browning')
,('Eddie Redmayne')
,('Andrew Garfield')
,('Will Smith')
,('Alec Baldwin')
,('Andy Samberg')
,('Taito Ban')
,('Greg Cipes')
,('Matt Damon')
,('Camila Mendes')
,('Elle Fanning')
,('Steve Carell')
,('Dwayne Johnson')
,('Raja')
,('Jesse Eisenberg')
,('Henry Cavill')
,('Rosa Salazar')
,('Brad Pitt')
,('Tom Hanks')
,('Ranbir Kapoor')
,('Bradley Cooper')
,('Adam Sandler')
,('Shane West')
,('Margot Robbie')
,('Jonah Hill')
,('Emma Stone')
,('Mesfin Lamengo')
,('James Corden')
,('Jake Gyllenhaal')
,('Ryan Reynolds')
,('Chukwudi Iwuji')
,('Ed Helms')
,('Russell Crowe')
,('Kumail Nanjiani')
,('Cillian Murphy')
,('Adrien Brody')
,('Adam Driver')
,('J.C. Currais')
,('Casey Affleck')
,('Michael Keaton')
,('Joseph Gordon-Levitt')
,('Roman Griffin Davis')
,('Daniel Kaluuya')
,('Ansel Elgort')
,('Saoirse Ronan')
,('Heath Ledger')
,('Michael Cera')
,('Ralph Fiennes')
,('Shameik Moore')
,('Ellen Burstyn')
,('Michelle Yeoh')
,('Colin Farrell')
,('Daniel Craig')
,('Brigitte Lin')
,('Demi Moore')
,('Ali Junejo')
,('Arif Hassan')
,('Marlon Brando')
,('Tim Roth')
,('Varun Dhawan')
,('Matthew McConaughey')
,('Edward Asner')
,('Masako Nozawa')
,('Elise Baughman')
,('Daiki Yamashita')
,('Jessie James Grelle')
,('Junko Takeuchi')
,('Mayumi Tanaka')
,('Johnny Yong Bosch')
,('Bryan Cranston')
,('Bob Odenkirk')
,('Ricky Gervais')
,('Jeremy Swift')
,('Úrsula Corberó')
,('Lee Jung-jae')
,('Rainn Wilson')
,('Jennifer Aniston')
,('Winona Ryder')
,('Peter Dinklage')
,('Matt Smith')
,('Cristin Milioti')
,('Claire Foy')
,('Benedict Cumberbatch')
,('Thandiwe Newton')
,('Karl Urban')
,('Allison Tolman')
,('Louis Hofmann')
,('Jason Bateman')
,('Nicholas Braun')
,('Pedro Pascal')
,('Jonathan Groff')
,('Freya Allan')
,('Jon Hamm')
,('Jorge Garcia')
,('Dominic Purcell')
,('Michael C. Hall')
,('Josh Radnor')
,('Johnny Galecki')
,('Amy Poehler')
,('Joel McHale')
,('Rami Malek')
,('Hugh Dancy')
,('Elliot Page')
,('David Ramsey')
,('Grant Gustin')
,('Tom Welling')
,('Jack Coleman')
,('Charlie Cox')
,('Krysten Ritter')
,('Mike Colter')
,('Finn Jones')
,('Brenton Thwaites')
,('Ben McKenzie')
,('Jared Padalecki')
,('Tom Ellis')
,('Evan Peters')
,('James Gandolfini')
,('Matt Dillon')
,('Ossie Davis')
,('Robert De Niro')
,('Charlize Theron')
,('Emily Blunt')
,('Pitobash')
,('Donald O''Connor')
,('Zendaya')
,('Drew Ater')
,('Parineeti Chopra')
,('Gustave Die')
,('Awkwafina')
,('Tom Hiddleston')
,('Laura Marano')
,('Elizabeth Banks')
,('Rosamund Pike')
,('Alexandra Daddario')
,('Tiffany Haddish')
,('Jennifer Lawrence')
,('Kate Ashfield')
,('Martin Freeman')
,('Zachary Bailess')
,('Madhavi Mukherjee')
,('Randall Park')
,('Payman Maadi')
,('Taraneh Alidoosti')
,('Lloyd Bridges')
,('Haley Joel Osment')
,('William Dick')
,('Shahid Kapoor')
,('Andrew Kevin Walker')
,('Laura Linney')
,('Michelle Williams')
,('Rajat Kapoor')
,('Triptii Dimri')
,('Zoe Kazan')
,('Walton Goggins')
,('Carey Mulligan')
,('Kajol')
,('Suniel Shetty')
,('Arjun Rampal')
,('Leslie Mann')
,('Jefferson Hall')
,('Sally Field')
,('Anya Taylor-Joy')
,('Kaya Scodelario')
,('Mahershala Ali')
,('Donna Biscoe')
,('Ann Pierce')
,('Gary Oldman')
,('Jackie Chan')
,('Billy Crudup')
,('Abbie Cornish')
,('Felicity Jones')
,('Richard Pyros')
,('Jamie Foxx')
,('John David Washington')
,('Alex Sharp')
,('Maura Tierney')
,('Jimmy Tandel')
,('Scott Menville')
,('Maya Hawke')
,('Justice Smith')
,('Keira Knightley')
,('Kamalinee Mukherjee')
,('Woody Harrelson')
,('Amitabh Bachchan')
,('Amy Adams')
,('Christoph Waltz')
,('Jessica Chastain')
,('Anthony Hopkins')
,('Rebecca Williams')
,('Nargis Fakhri')
,('Saurabh Shukla')
,('Jason Andrews')
,('Juliette Binoche')
,('Mandy Moore')
,('Issa Rae')
,('Priyanka Chopra Jonas')
,('Channing Tatum')
,('Penn Badgley')
,('Sun Zhi Hua-Hilton')
,('Mark Ruffalo')
,('Jodie Comer')
,('Tina Fey')
,('Lil Rel Howery')
,('Emilia Fox')
,('Scarlett Johansson')
,('Diego Calva')
,('Ivy O''Brien')
,('Zooey Deschanel')
,('Thomasin McKenzie')
,('Allison Williams')
,('Jon Bernthal')
,('Rooney Mara')
,('Mélanie Laurent')
,('Laurie Metcalf')
,('Julia Stiles')
,('Kieran Culkin')
,('F. Murray Abraham')
,('Kate Winslet')
,('Jake Johnson')
,('Alexandra Shipp')
,('Keke Palmer')
,('Joey King')
,('Stephanie Hsu')
,('Brendan Gleeson')
,('Chris Evans')
,('Tony Leung Chiu-wai')
,('Jaden Smith')
,('Margaret Qualley')
,('Rasti Farooq')
,('Samiya Mumtaz')
,('Al Pacino')
,('Amanda Plummer')
,('Banita Sandhu')
,('Rebecca Ferguson')
,('Charlie Hunnam')
,('Christopher Plummer')
,('Kôki Uchiyama')
,('Andrew Chandler')
,('Justin Briner')
,('Bryce Papenbrook')
,('Maile Flanagan')
,('Akemi Okamura')
,('Michelle Ruff')
,('Anna Gunn')
,('Jonathan Banks')
,('Tom Basden')
,('Jason Sudeikis')
,('Álvaro Morte')
,('Tom Choi')
,('John Krasinski')
,('Courteney Cox')
,('David Harbour')
,('Lena Headey')
,('Fabien Frankel')
,('Paul Anderson')
,('Jimmi Simpson')
,('Olivia Colman')
,('Jeffrey Wright')
,('Jack Quaid')
,('Billy Bob Thornton')
,('Karoline Eichhorn')
,('Brian Cox')
,('Wagner Moura')
,('Holt McCallany')
,('Elisabeth Moss')
,('Josh Holloway')
,('Wentworth Miller')
,('Chris Bartlett')
,('Jennifer Carpenter')
,('Jason Segel')
,('Stephanie Beatriz')
,('Jim Parsons')
,('Aubrey Plaza')
,('Gillian Jacobs')
,('Christian Slater')
,('Mads Mikkelsen')
,('Tom Hopper')
,('Bella Ramsey')
,('Stephen Amell')
,('Candice Patton')
,('Allison Mack')
,('Hayden Panettiere')
,('Margarita Levieva')
,('Rachael Taylor')
,('Simone Missick')
,('Jessica Henwick')
,('Anna Diop')
,('Donal Logue')
,('Jensen Ackles')
,('Lauren German')
,('Sarah Paulson')
,('Edie Falco')
,('Ben Stiller')
,('Ruby Dee')
,('Zazie Beetz')
,('Nicholas Hoult')
,('Aaron Taylor-Johnson')
,('Jatin Malik')
,('Debbie Reynolds')
,('Bob Barna')
,('Nishant Dahiya')
,('Adah Sharma')
,('Murray McArthur')
,('X Mayo')
,('Cate Blanchett')
,('Odiseas Georgiadis')
,('Craig Berry')
,('Neil Patrick Harris')
,('Shelley Hennig')
,('Rob Riggle')
,('Meryl Streep')
,('Joseph Lee')
,('Nick Frost')
,('Bill Nighy')
,('Jasper Levine')
,('Shailen Mukherjee')
,('Radhika Apte')
,('James Saito')
,('Mina Sadati')
,('Peter Graves')
,('Toni Collette')
,('Guy Massey')
,('Shraddha Kapoor')
,('Daniel Zacapa')
,('Noah Emmerich')
,('Ratna Pathak Shah')
,('Sumit Kaul')
,('Viola Davis')
,('Megan Park')
,('Georgia King')
,('Lily Gladstone')
,('Justin Timberlake')
,('Katie Amanda Keane')
,('Paresh Rawal')
,('Kirron Kher')
,('Thomas Lennon')
,('Ivo Uukkivi')
,('Mary Elizabeth Winstead')
,('Christopher Walken')
,('Pierce Brosnan')
,('Betty Buckley')
,('Rory Culkin')
,('Daniel Ings')
,('Linda Cardellini')
,('Paul Rudd')
,('Dakota Johnson')
,('Nikitin Dheer')
,('Tom Wilkinson')
,('Matthew Goode')
,('Jena Malone')
,('Tom Prior')
,('Jacob Warner')
,('Jon Voight')
,('Isiah Whitlock Jr.')
,('Sacha Baron Cohen')
,('J.K. Simmons')
,('Justin Cooper')
,('Makoto Furukawa')
,('Khary Payton')
,('Austin Abrams')
,('Adam Brody')
,('Amy Ryan')
,('Rosario Dawson')
,('Anuj Gurwara')
,('Irrfan Khan')
,('Michael Shannon')
,('Jennifer Connelly')
,('Kristen Wiig')
,('Claire Forlani')
,('Shammi Kapoor')
,('Anil Kapoor')
,('Julianne Moore')
,('Don McManus')
,('Dane Cook')
,('Peter Coyote')
,('Kate McKinnon')
,('Ileana D''Cruz')
,('Anne Hathaway')
,('Brie Larson')
,('Christopher Mintz-Plasse')
,('Amanda Bynes')
,('Liang Wei-Hui-Duncan')
,('Anthony Edwards')
,('Pom Klementieff')
,('Mark Wahlberg')
,('Angourie Rice')
,('Holly Hunter')
,('Robert Downey Jr.')
,('Michal Zebrowski')
,('Julia Greer')
,('Jimmy Ortega')
,('Kyle Chandler')
,('Kenny Chin')
,('Geoffrey Arend')
,('Michael Caine')
,('Catherine Keener')
,('Bryan Barter')
,('Tracy Letts')
,('Anna Kendrick')
,('Mathieu Amalric')
,('Aaron Eckhart')
,('Gerry Robert Byrne')
,('Hailee Steinfeld')
,('Mackenzie Foy')
,('Robin de Jesus')
,('Amiee Conn')
,('Brandon Perea')
,('Ke Huy Quan')
,('Kerry Condon')
,('Ana de Armas')
,('Faye Wong')
,('Dennis Quaid')
,('Alina Khan')
,('Eman Suleman')
,('James Caan')
,('Laura Lovelace')
,('Gitanjali Rao')
,('Michelle Dockery')
,('Jordan Nagai')
,('Aaron Dismuke')
,('Nobuhiko Okamoto')
,('Trina Nishimura')
,('Kate Higgins')
,('Laurent Vernin')
,('Stephanie Sheh')
,('Aaron Paul')
,('Rhea Seehorn')
,('Tony Way')
,('Hannah Waddingham')
,('Itziar Ituño')
,('Greg Chun')
,('Jenna Fischer')
,('Lisa Kudrow')
,('Finn Wolfhard')
,('Maisie Williams')
,('Olivia Cooke')
,('Finn Cole')
,('Milanka Brooks')
,('Dominic West')
,('Mark Gatiss')
,('James Marsden')
,('Carmen Ejogo')
,('Laz Alonso')
,('Russell Harvard')
,('Andreas Pietschmann')
,('Charlie Tahan')
,('Alan Ruck')
,('Juan Murcia')
,('Hannah Gross')
,('MyAnna Buring')
,('Aaron Staton')
,('Naveen Andrews')
,('Wade Williams')
,('Emily Swallow')
,('Luna Lauren Velez')
,('Lyndsy Fonseca')
,('Andre Braugher')
,('Melissa Rauch')
,('Retta')
,('Yvette Nicole Brown')
,('Michael Cristofer')
,('Aaron Abrams')
,('Aidan Gallagher')
,('Gabriel Luna')
,('Willa Holland')
,('Tom Cavanagh')
,('Erica Durance')
,('Greg Grunberg')
,('David Tennant')
,('Sean Ringgold')
,('David Wenham')
,('Curran Walters')
,('Cory Michael Smith')
,('Alexander Calvert')
,('Rachael Harris')
,('Frances Conroy')
,('Theo Rossi')
,('Tony Sirico')
,('Lee Evans')
,('Richard Edson')
,('Hugh Keays-Byrne')
,('Sikandar Kher')
,('Jean Hagen')
,('Javier Bardem')
,('Nicole Britton')
,('Amrita Bagchi')
,('Manoj Joshi')
,('Paul G. Raymond')
,('Hong Lu')
,('Idris Elba')
,('Alison Brie')
,('Tyler Perry')
,('Andrew Bachelor')
,('Romany Malco')
,('Young Mazino')
,('Lucy Davis')
,('Robert Popper')
,('James Tarpey')
,('Shyamal Ghoshal')
,('Anil Dhawan')
,('Michelle Buteau')
,('Sareh Bayat')
,('Babak Karimi')
,('Julie Hagerty')
,('Olivia Williams')
,('Martha Espinoza')
,('Kay Kay Menon')
,('Natascha McElhone')
,('Fawad Khan')
,('Abrar Qazi')
,('Maria Bello')
,('Shea Whigham')
,('Jesse Plemons')
,('Ethan Phillips')
,('Kenton Duty')
,('Shreyas Talpade')
,('Matthew Perry')
,('Andrew Howard')
,('Antonia Ribero')
,('Martin Sheen')
,('Harvey Fierstein')
,('Haley Lu Richardson')
,('Abigail Breslin')
,('Joely Richardson')
,('Sebastian Maniscalco')
,('Julia Denton')
,('Bruce Dern')
,('Sathyaraj')
,('Tzi Ma')
,('Jackie Earle Haley')
,('Vanessa Hudgens')
,('Sophie Perry')
,('Milo Gibson')
,('Mario Van Peebles')
,('Robert John Burke')
,('Jeremy Strong')
,('Peter Gallagher')
,('Cary Elwes')
,('Haruna Mikawa')
,('Tara Strong')
,('Caitríona Balfe')
,('Rish Shah')
,('Kelli O''Hara')
,('Connie Britton')
,('Philip Baker Hall')
,('Danielle Nicolet')
,('Master Abhijit')
,('Moushumi Chatterjee')
,('Diane Lane')
,('Gal Gadot')
,('Jeff Daniels')
,('Jake Weber')
,('Michael Conner Humphreys')
,('Kumud Mishra')
,('Raj Zutshi')
,('Jacki Weaver')
,('Emily Watson')
,('Alison Pill')
,('Daryl Hannah')
,('Amar Gupta')
,('Amanda Seyfried')
,('Dave Franco')
,('Bill Hader')
,('Dan Byrd')
,('Sunny Wu Jin Zahao')
,('Joe Keery')
,('Dave Bautista')
,('Taraji P. Henson')
,('Annabelle Wallis')
,('Matt Bomer')
,('Ray Romano')
,('Alden Ehrenreich')
,('Ed Stoppard')
,('Azhy Robertson')
,('Marcos A. Ferraez')
,('Richard Donelly')
,('Jamahl Garrison-Lowe')
,('Chloë Grace Moretz')
,('Piper Perabo')
,('Taika Waititi')
,('Bradley Whitford')
,('Eiza González')
,('Dustin Fitzsimons')
,('Eli Roth')
,('Lucas Hedges')
,('Larisa Oleynik')
,('Elijah Wood')
,('John Lithgow')
,('Terry Walters')
,('Michael Wincott')
,('Brian Tyree Henry')
,('James Hong')
,('Pat Shortt')
,('Jamie Lee Curtis')
,('Takeshi Kaneshiro')
,('Brian Howe')
,('Edward Hamilton-Clark')
,('Sarwat Gilani')
,('Ali Kureshi')
,('Richard S. Castellano')
,('John Travolta')
,('Sahil Vedoliyaa')
,('Jason Momoa')
,('Bob Peterson')
,('Stephanie Nadolny')
,('Yûko Minaguchi')
,('Ayane Sakura')
,('Yûki Kaji')
,('Chie Nakamura')
,('Tony Beck')
,('Jamieson Price')
,('Betsy Brandt')
,('Patrick Fabian')
,('Diane Morgan')
,('Brett Goldstein')
,('Pedro Alonso')
,('Wi Ha-joon')
,('Leslie David Baker')
,('Matt LeBlanc')
,('Gaten Matarazzo')
,('Emilia Clarke')
,('Emma D''Arcy')
,('Helen McCrory')
,('Wunmi Mosaku')
,('Rupert Graves')
,('Evan Rachel Wood')
,('Erin Moriarty')
,('Jason Schwartzman')
,('Maja Schöne')
,('Skylar Gaertner')
,('Peter Friedman')
,('Alberto Ammann')
,('Sonny Valicenti')
,('Eamon Farren')
,('January Jones')
,('Evangeline Lilly')
,('Robert Knepper')
,('Carl Weathers')
,('James Remar')
,('Melissa Fumero')
,('Simon Helberg')
,('Jim O''Heir')
,('Martin Wallström')
,('Laurence Fishburne')
,('Emmy Raver-Lampman')
,('Brendan Rozario')
,('Katie Cassidy')
,('Jesse L. Martin')
,('Michael Rosenbaum')
,('Masi Oka')
,('Genneya Walton')
,('Carrie-Anne Moss')
,('Alfre Woodard')
,('Tom Pelphrey')
,('Teagan Croft')
,('Robin Lord Taylor')
,('Mark Sheppard')
,('D.B. Woodside')
,('Lily Rabe')
,('Deirdre O''Connell')
,('Steven Van Zandt')
,('Chris Elliott')
,('Giancarlo Esposito')
,('Brett Cullen')
,('Josh Helman')
,('Teresa Palmer')
,('Sobhita Dhulipala')
,('Millard Mitchell')
,('Josh Brolin')
,('Christian Brunetti')
,('Prakash Belawadi')
,('Sharat Saxena')
,('Bertie Caplan')
,('Hong Lin')
,('Jeff Goldblum')
,('Matt Walsh')
,('David Burrows')
,('Carrie Coon')
,('Robbie Amell')
,('Taran Killam')
,('Rob Morgan')
,('Remy Holt')
,('Dylan Moran')
,('Joe Cornish')
,('Luke Bromley')
,('Gitali Roy')
,('Manav Vij')
,('Vivian Bang')
,('Sarina Farhadi')
,('Maral Baniadam')
,('Robert Hays')
,('Trevor Morgan')
,('T.J. Jagodowski')
,('Narendra Jha')
,('Gwyneth Paltrow')
,('Holland Taylor')
,('Sahiba Bali')
,('Terrence Howard')
,('Mackenzie Davis')
,('Maya G. Love')
,('Tantoo Cardinal')
,('Robin Bartlett')
,('Benny Nieves')
,('Om Puri')
,('Tyler Steelman')
,('Timothy Eulich')
,('Nathalie Baye')
,('Polly Holliday')
,('Jessica Sula')
,('Cherry Jones')
,('Vinnie Jones')
,('Dimiter D. Marinov')
,('Jennifer Ehle')
,('Shia LaBeouf')
,('Mukesh Tiwari')
,('Robert Littman')
,('Jeffrey Dean Morgan')
,('Jamie Chung')
,('Finlay Wright-Stephens')
,('Darcy Bryce')
,('Ron Silver')
,('Brian Tarantina')
,('John Carroll Lynch')
,('Meredith Hagner')
,('Anne Haney')
,('Daisuke Hirakawa')
,('Hynden Walch')
,('Josh Lucas')
,('Talia Ryder')
,('Lamar Johnson')
,('Roger Aaron Brown')
,('Catherine Bell')
,('Siri')
,('Baby Bakita')
,('Amber Heard')
,('Raghubir Yadav')
,('Ray Fisher')
,('Ed Skrein')
,('Michael Peña')
,('Marcia Gay Harden')
,('Harold G. Herthum')
,('Piyush Mishra')
,('Jeneva Talwar')
,('Lio Tipton')
,('Chris Tucker')
,('Luis Guzmán')
,('Britt Robertson')
,('Emma Mackey')
,('Seth Rogen')
,('Thomas Haden Church')
,('Deneke Muhugeta')
,('Yasiin Bey')
,('Utkarsh Ambudkar')
,('Karen Gillan')
,('Anupam Kher')
,('Scott Grimes')
,('Maureen Lipman')
,('Wallace Shawn')
,('Shane Powers')
,('Virginia Loring Cooke')
,('Zach Galifianakis')
,('Matthew Gray Gubler')
,('Rebecca Hall')
,('Sam Rockwell')
,('Caleb Landry Jones')
,('Micah Howard')
,('Joseph Mazzello')
,('Michael Fassbender')
,('David Krumholtz')
,('Ken Watanabe')
,('Willem Dafoe')
,('Maggie Gyllenhaal')
,('Thomas Jay Ryan')
,('Joshua Henry')
,('Thom Shelton')
,('Andrew Koji')
,('Gary Lydon')
,('Valerie Chow')
,('James Karen')
,('Gore Abrams')
,('Salmaan Peerzada')
,('Nadia Afgan')
,('Robert Duvall')
,('Samuel L. Jackson')
,('Isha Chaturvedi')
,('Stellan Skarsgård')
,('Lyne Renée')
,('Delroy Lindo')
,('Yumiko Kobayashi')
,('Jôji Yanami')
,('Yui Ishikawa')
,('Noriaki Sugiyama')
,('Kazuya Nakai')
,('Steve Prince')
,('RJ Mitte')
,('Michael Mando')
,('Kerry Godliman')
,('Juno Temple')
,('Miguel Herrán')
,('Lee Byung-hun')
,('Brian Baumgartner')
,('Caleb McLaughlin')
,('Sophie Turner')
,('Rhys Ifans')
,('Ned Dennehy')
,('Monica Dolan')
,('Tobias Menzies')
,('Louise Brealey')
,('Tessa Thompson')
,('Rachel McAdams')
,('Jessie T. Usher')
,('Jördis Triebel')
,('Julia Garner')
,('Matthew Macfadyen')
,('Paulina Gaitan')
,('Stacey Roca')
,('Mimî M Khayisa')
,('John Slattery')
,('Daniel Dae Kim')
,('Paul Adelstein')
,('Misty Rosas')
,('Julie Benz')
,('Joel McKinnon Miller')
,('Kevin Sussman')
,('Rashida Jones')
,('Donald Glover')
,('BD Wong')
,('Hettienne Park')
,('Colm Feore')
,('Rick Gonzalez')
,('Kayla Compton')
,('John Schneider')
,('Adrian Pasdar')
,('J.R. Ramirez')
,('Karen Pittman')
,('Wai Ching Ho')
,('Sigourney Weaver')
,('Minka Kelly')
,('Erin Richards')
,('Samantha Smith')
,('Scarlett Estevez')
,('Jessica Lange')
,('Daniel J. Watts')
,('Lorraine Bracco')
,('Keith David')
,('Paul Benjamin')
,('Leigh Gill')
,('Riley Keough')
,('Matuse')
,('Adithi Kalkunte')
,('Dawn Addams')
,('Jennifer Finley')
,('Aarnaa Sharma')
,('Amita Udgata')
,('Tom Davis')
,('Becca Khalil')
,('Blaine Kern III')
,('Keith Ferguson')
,('Lisa Banes')
,('Chris Wylde')
,('Gavin Ferguson')
,('Richard Hadfield')
,('Bholanath Koyal')
,('Pawan Singh')
,('Karan Soni')
,('Shirin Yazdanbakhsh')
,('Ehteram Boroumand')
,('Stephen Stucker')
,('Bruce Norris')
,('Denise Hughes')
,('Aamir Bashir')
,('Reg E. Cathey')
,('Heidi Schanz')
,('Sam Humphrey')
,('Anahita Oberoi')
,('Farhana Bhat');

GO

INSERT INTO Actors (ActorName) VALUES
  ('Zoë Soul')
,('Tommie-Amber Pirie')
,('Ashley Rae Spillers')
,('Janae Collins')
,('Parvin Dabas')
,('Govardhan Asrani')
,('Yuvika Chaudhary')
,('Adam Gregory')
,('Sander Rebane')
,('Aaron Marshall')
,('Frank John Hughes')
,('Robert Prosky')
,('Neal Huff')
,('Merritt Wever')
,('Logan Dean')
,('Mary Agnes Nixon')
,('Alan Boell')
,('Tim Zajaros')
,('Manu Malik')
,('Matthew Modine')
,('Chris Penn')
,('Stephen McHattie')
,('Scott Glenn')
,('Thomas Morrison')
,('Hugo Weaving')
,('Nona Gaye')
,('Ben Shenkman')
,('Jacqueline Obradors')
,('Swoosie Kurtz')
,('Ikuto Kanemasa')
,('Michael Bolton')
,('Ray McKinnon')
,('Paris Berelc')
,('Keegan-Michael Key')
,('Mark Moses')
,('Eddie Jemison')
,('Timothy John Smith')
,('Conan O''Brien')
,('Melkote')
,('Jacob G. Akins')
,('Sajal Bhattacharya')
,('Christopher Meloni')
,('Lana Condor')
,('Aksel Hennie')
,('Jahnni St. John')
,('Sam Anderson')
,('Shikha Jain')
,('Ayush Mahesh Khedekar')
,('Beth Littleford')
,('Hazel Mailloux')
,('Norbert Leo Butz')
,('Jonathan Parks Jordan')
,('Ritu Arya')
,('Jisshu Sengupta')
,('Samantha Barks')
,('Chris Parnell')
,('Joe Lo Truglio')
,('Malcolm McDowell')
,('Keith William Richards')
,('Andrew Sellon')
,('John Lacy')
,('Britne Oldford')
,('Terence Rosemore')
,('J.B. Smoove')
,('Steve Berg')
,('Lois Smith')
,('Aidy Bryant')
,('John Gowans')
,('Wanja Mues')
,('David Turner')
,('Hansford Prince')
,('Ben Hanson')
,('Katherine O''Sullivan')
,('Andy Serkis')
,('Archie Yates')
,('Stephen Root')
,('Morse Diggs')
,('Alecia Svensen')
,('Gedeon Burkhard')
,('Odeya Rush')
,('Larry Miller')
,('Mark Webber')
,('Marion Cotillard')
,('Bill Murray')
,('Ron Dean')
,('Kirsten Dunst')
,('John Mulaney')
,('Bill Irwin')
,('Judith Light')
,('Sonoya Mizuno')
,('Terry Notary')
,('Bad Bunny')
,('Biff Wiff')
,('John Carty')
,('Liang Zhen')
,('Kevin West')
,('Tom Morton')
,('Honey Albela')
,('Agha Haider')
,('Al Lettieri')
,('Ashish Ghosh')
,('Sharon Duncan-Brewster')
,('Chidi Ajufo')
,('Elie Docter')
,('Tom Laflin')
,('Eric Vale')
,('Jun''ichi Suwabe')
,('Clifford Chapin')
,('Laurent Vernin');

GO 
INSERT INTO Actors (ActorName) VALUES
('Colleen Clinkenbeard'),
('Wendee Lee'),
('Jonathan Banks'),
('Mark Margolis'),
('Joe Wilkinson'),
('Toheeb Jimoh'),
('Mike Manning'),
('Kim Byung-cheol'),
('Creed Bratton'),
('Christina Pickles'),
('Millie Bobby Brown'),
('John Bradley'),
('Kurt Egyiawan'),
('Harry Kirton'),
('Hannah John-Kamen'),
('Vanessa Kirby'),
('Jonathan Aris'),
('Anthony Hopkins'),
('Stephen Dorff'),
('Karen Fukuhara'),
('Kirsten Dunst'),
('Oliver Masucci'),
('Jordana Spiro'),
('J. Smith-Cameron'),
('Francisco Denis'),
('Cotter Smith'),
('Anna Shaffer'),
('Kiernan Shipka'),
('Emilie de Ravin'),
('Rockmond Dunbar'),
('Leilani Shiu'),
('Christina Robinson'),
('Marshall Manesh'),
('Chelsea Peretti'),
('Carol Ann Susi'),
('Adam Scott'),
('Chevy Chase'),
('Stephanie Corneliussen'),
('Kacey Rohl'),
('Ritu Arya'),
('Melanie Lynskey'),
('Echo Kellum'),
('Brandon McKnight'),
('Justin Hartley'),
('Zachary Quinto'),
('Nikki M. James'),
('Janet McTeer'),
('Ron Cephas Jones'),
('Giullian Yao Gioiello'),
('Rosario Dawson'),
('Jay Lycurgo'),
('Morena Baccarin'),
('Ruth Connell'),
('Tricia Helfer'),
('Billie Lourd'),
('David H. Holmes'),
('Dominic Chianese'),
('W. Earl Brown'),
('Frankie Faison'),
('Josh Pais'),
('Abbey Lee'),
('Adam Dunn'),
('Jomon Thomas'),
('John Albright'),
('Léa Seydoux'),
('Vincent Gurzo'),
('Aparajita Adhya'),
('Anshikaa Shrivastava'),
('Olivia Colman'),
('Yongbo Jiang'),
('Benedict Cumberbatch'),
('Zak Steiner'),
('Will Ferrell'),
('Missi Pyle'),
('Daryn Kahn'),
('Anne Winters'),
('Ron Perlman'),
('Justin H. Min'),
('Peter Serafinowicz'),
('Peter Wight'),
('Flora Slorach'),
('Kamu Mukherjee'),
('Kabir Sajid Shaikh'),
('Charlyne Yi'),
('Merila Zare''i'),
('Sahra Asadollahi'),
('Otto'),
('Glenn Fitzgerald'),
('Peggy Roeder'),
('Sumit Kaul'),
('R. Lee Ermey'),
('Ron Taylor'),
('Yahya Abdul-Mateen II'),
('Aakriti Dobhal'),
('Shagufta Ali'),
('Erin Gerasimovich'),
('Meghan Heffern'),
('James M. Connor'),
('Jillian Dion'),
('Stark Sands'),
('Arjun Mathur'),
('Razak Khan'),
('Shawar Ali'),
('Hunter Parrish'),
('Martin Donovan'),
('Shane Carruth'),
('Steve Eastin'),
('Anne Haney'),
('Ukee Washington'),
('Lanny Flaherty'),
('Chanel Cresswell'),
('Von Lewis'),
('Selena Gomez'),
('John Hawkes'),
('Rakesh Kukreti'),
('Alon Aboutboul'),
('Kai Lennox'),
('Laura Mennell'),
('Richard Cetrone'),
('Michael Marcus'),
('Rachel Griffiths'),
('Michael Michele'),
('Michael Buscemi'),
('J.C. MacKenzie'),
('June Squibb'),
('Mitchell Ryan'),
('Reina Ueda'),
('Kal-El Cage'),
('JJ Feild'),
('Maia Reficco'),
('Luke Wilson'),
('Tonita Castro'),
('Paul Satterfield'),
('Sione Kelepi'),
('Doug Benson'),
('Srikanth Polisetti'),
('Hunter Aldridge'),
('Rupsa Banerjee'),
('Kevin Costner'),
('Scoot McNairy'),
('Jeremy Irons'),
('Idara Victor'),
('Chiwetel Ejiofor'),
('Richard Clarke'),
('Margo Moorer'),
('Jaideep Ahlawat'),
('Jira Banjara'),
('John Carroll Lynch'),
('Paul Herman'),
('Karen Kilgariff'),
('Amy Ryan'),
('Matt Lutz'),
('Dua Lipa'),
('Haradhan Bannerjee'),
('Daniel Huttlestone'),
('Ellie Kemper'),
('Kevin Corrigan'),
('Aly Michalka'),
('Tommy Kominik'),
('Ed Renninger'),
('Chloë Sevigny'),
('Camille Kostek'),
('Maria Bakalova'),
('Kristen Wiig'),
('Jeremy Renner'),
('Murielle Telio'),
('Kurt Braunohler'),
('Macon Blair'),
('Richard Ridings'),
('Gideon Glick'),
('Telvin Griffin'),
('Mary Mallen'),
('Damian Young'),
('Charles Walker'),
('Daniel Davis'),
('Luke Brandon Field'),
('Lil Rel Howery'),
('CJ Jones'),
('Jami Owen'),
('Jacky Ido'),
('Jordan Rodrigues'),
('Daryl Mitchell'),
('Ellen Wong'),
('Pete Postlethwaite'),
('Edward Norton'),
('Cillian Murphy'),
('Tom Wilkinson'),
('Kimiko Glenn'),
('Anne Hathaway'),
('Bradley Whitford'),
('Rosemarie DeWitt'),
('Barbie Ferreira'),
('Logan Lerman'),
('Sunita Mani'),
('Oliver Farrelly'),
('Katherine Langford'),
('Songshen Zuo'),
('George Cheung'),
('Hugo Diego Garcia'),
('Priya Usman Khan'),
('Ali Hasnain'),
('Diane Keaton'),
('Ving Rhames'),
('Rachica Oswal'),
('Chang Chen'),
('Hugh Grant'),
('Jeremy Leary'),
('Veronica Laux'),
('Matthew Erickson'),
('Luci Christian'),
('Mike McFarland'),
('Colleen O''Shaughnessey'),
('Yuriko Yamaguchi'),
('Masakazu Morita'),
('Giancarlo Esposito'),
('Kerry Condon'),
('Penelope Wilton'),
('Kola Bokinni'),
('Enrique Arce'),
('Yasushi Iwaki'),
('Oscar Nuñez'),
('Maggie Wheeler'),
('Noah Schnapp'),
('Alfie Allen'),
('Matthew Needham'),
('Packy Lee'),
('Michaela Coel'),
('Marion Bailey'),
('Vinette Robinson'),
('Aaron Paul'),
('Michael Potts'),
('Nathan Mitchell'),
('Ewan McGregor'),
('Moritz Jahn'),
('Jessica Frances Dukes'),
('Scott Nicholson'),
('Raúl Méndez'),
('Albert Jones'),
('Royce Pierreson'),
('Robert Morse'),
('Michael Emerson'),
('Jodi Lyn O''Keefe'),
('Lateef Crowder'),
('Geoff Pierson'),
('Joe Nieves'),
('Marc Evan Jackson'),
('John Ross Bowie'),
('Rob Lowe'),
('Richard Erdman'),
('Vaishnavi Sharma'),
('Lara Jean Chorostecki'),
('Jordan Claire Robbins'),
('Nico Parker'),
('John Barrowman'),
('Hartley Sawyer'),
('Sam Jones III'),
('Ali Larter'),
('Ayelet Zurer'),
('Benjamin Walker'),
('Jeremiah Craft'),
('Christine Toy Johnson'),
('Wai Ching Ho'),
('Alan Ritchson'),
('Chris Chalk'),
('Rob Benedict'),
('Tom Welling'),
('Leslie Grossman'),
('Michael Kelly'),
('Aida Turturro');


select * from Actors;
GO 

-- Movies 

ALTER TABLE Movies
ADD CONSTRAINT DF_FMDB_Rating DEFAULT 0 FOR FMDB_Rating;


ALTER TABLE Movies
ALTER COLUMN Language VARCHAR(255);


delete from Movies ;


INSERT INTO Movies(Title,ReleaseDate,IMDB_Rating,MovieLength,Language,Type,Synopsis,MoviePosterLink,MovieBackdropLink,Awards,BoxOffice,MPAA_Rating) VALUES
 ('There''s Something About Mary','15 Jul 1998',7.1,'119 minutes','English','Movie','Ted was a geek in high school, who was going to go to the prom with one of the most popular girls in school, Mary. The prom date never happened, because Ted had a very unusual accident. Thirteen years later he realizes he is still in love with Mary, so he hires a private investigator to track her down. That investigator discovers he too may be in love with Mary, so he gives Ted some false information to keep him away from her. But soon Ted finds himself back into Mary''s life, as we watch one funny scene after another.','https://image.tmdb.org/t/p/original/kdT3Wwc11GOHorMA4SLqJzG8NJ4.jpg','https://image.tmdb.org/t/p/original/egJQ3nIon5fT8wyXcKRHzvmtZpD.jpg','17 wins & 17 nominations total','$176,484,651','R')
,('Do the Right Thing','14 Jun 1989',8,'120 minutes','English, Italian, Spanish, Korean','Movie','This film looks at life in the Bedford-Stuyvesant district of Brooklyn on a hot summer Sunday. As he does everyday, Sal Fragione opens the pizza parlor he''s owned for 25 years. The neighborhood has changed considerably in the time he''s been there and is now composed primarily of African-Americans and Hispanics. His son Pino hates it there and would like nothing better than to relocate the eatery to their own neighborhood. For Sal however, the restaurant represents something that is part of his life and sees it as a part of the community. What begins as a simple complaint by one of his customers, Buggin Out - who wonders why he has only pictures of famous Italian-Americans on the wall when most of his customers are black - eventually disintegrates into violence as frustration seemingly brings out the worst in everyone.','https://image.tmdb.org/t/p/original/63rmSDPahrH7C1gEFYzRuIBAN9W.jpg','https://image.tmdb.org/t/p/original/v3XlaCNJxJLxby4RAc9gAHEXIe1.jpg','Nominated for 2 Oscars. 21 wins & 19 nominations total','$27,545,445','R')
,('Joker','04 Oct 2019',8.3,'122 minutes','English, German','Movie','A socially inept clown for hire - Arthur Fleck aspires to be a stand up comedian among his small job working dressed as a clown holding a sign for advertising. He takes care of his mother, Penny Fleck, and as he learns more about his mental illness, he learns more about his past. Dealing with all the negativity and bullying from society, he heads downwards on a spiral, in turn showing how his alter ego, "Joker," came to be.','https://image.tmdb.org/t/p/original/udDclJoHjfjb8Ekgsd4FDteOkCU.jpg','https://image.tmdb.org/t/p/original/n6bUvigpRFqSwmPp1m2YADdbRBc.jpg','Won 2 Oscars. 121 wins & 247 nominations total','$335,477,657','R')
,('Mad Max: Fury Road','22 May 2015',8.1,'120 minutes','English, Russian','Movie','An apocalyptic story set in the furthest reaches of our planet, in a stark desert landscape where humanity is broken, and almost everyone is crazed fighting for the necessities of life. Within this world exist two rebels on the run who just might be able to restore order. There''s Max, a man of action and a man of few words, who seeks peace of mind following the loss of his wife and child in the aftermath of the chaos. And Furiosa, a woman of action and a woman who believes her path to survival may be achieved if she can make it across the desert back to her childhood homeland.','https://image.tmdb.org/t/p/original/hA2ple9q4qnwxp3hKVNhroipsir.jpg','https://image.tmdb.org/t/p/original/gqrnQA6Xppdl8vIb2eJc58VC1tW.jpg','Won 6 Oscars. 245 wins & 233 nominations total','$154,280,290','R')
,('The Fall Guy','24 Apr 2024',6.8,'126 minutes','English','Movie','He''s a stuntman, and like everyone in the stunt community, he gets blown up, shot, crashed, thrown through windows and dropped from the highest of heights, all for our entertainment. And now, fresh off an almost career-ending accident, this working-class hero has to track down a missing movie star, solve a conspiracy and try to win back the love of his life while still doing his day job. What could possibly go right?','https://image.tmdb.org/t/p/original/e7olqFmzcIX5c23kX4zSmLPJi8c.jpg','https://image.tmdb.org/t/p/original/H5HjE7Xb9N09rbWn1zBfxgI8uz.jpg','13 wins & 37 nominations total','$92,900,355','PG-13')
,('Monkey Man','03 Apr 2024',6.8,'121 minutes','English, Hindi','Movie','Inspired by the legend of Hanuman, an icon embodying strength and courage, Kid is an anonymous young man who ekes out a meager living in an underground fight club. There, night after night, he wears a gorilla mask and is beaten bloody by more popular fighters for cash. After years of suppressed rage, Kid discovers a way to infiltrate the enclave of the city''s sinister elite. As his childhood trauma boils over, his mysteriously scarred hands unleash an explosive campaign of retribution to settle the score with the men who took everything from him.','https://image.tmdb.org/t/p/original/4lhR4L2vzzjl68P1zJyCH755Oz4.jpg','https://image.tmdb.org/t/p/original/9NSXdVHeSfSHUv49OzLispFcpz1.jpg',NULL,NULL,NULL)
,('Singin'' in the Rain','10 Apr 1952',8.3,'103 minutes','English','Movie','1927 Hollywood. Monumental Pictures'' biggest stars, glamorous on-screen couple Lina Lamont and Don Lockwood, are also an off-screen couple if the trade papers and gossip columns are to be believed. Both perpetuate the public perception if only to please their adoring fans and bring people into the movie theaters. In reality, Don barely tolerates her, while Lina, despite thinking Don beneath her, simplemindedly believes what she sees on screen in order to bolster her own stardom and sense of self-importance. R.F. Simpson, Monumental''s head, dismisses what he thinks is a flash in the pan: talking pictures. It isn''t until The Jazz Singer (1927) becomes a bona fide hit which results in all the movie theaters installing sound equipment that R.F. knows Monumental, most specifically in the form of Don and Lina, have to jump on the talking picture bandwagon, despite no one at the studio knowing anything about the technology. Musician Cosmo Brown, Don''s best friend, gets hired as Monumental''s ideas man and musical director. And by this time, Don has secretly started dating Kathy Selden, a chorus girl who is trying to make it big in pictures herself. Don and Kathy''s relationship is despite their less than friendly initial meeting. Cosmo and Kathy help Don, who had worked his way up through the movie ranks to stardom, try make the leap to talking picture stardom, with Kathy following along the way. However, they have to overcome the technological issues. But the bigger problem is Lina, who will do anything to ensure she also makes the successful leap into talking pictures, despite her own inabilities and at anyone and everyone else''s expense if they get in her way, especially Kathy as Don''s off screen girlfriend and possibly his new talking picture leading lady.','https://image.tmdb.org/t/p/original/w03EiJVHP8Un77boQeE7hg9DVdU.jpg','https://image.tmdb.org/t/p/original/6qOyw4yfzbzTp5YsCX26C28Do0S.jpg','Nominated for 2 Oscars. 11 wins & 11 nominations total','$1,884,537','G')
,('Dune: Part Two','27 Feb 2024',8.5,'166 minutes','English','Movie','Paul Atreides unites with Chani and the Fremen while on a warpath of revenge against the conspirators who destroyed his family. Facing a choice between the love of his life and the fate of the known universe, he endeavors to prevent a terrible future only he can foresee.','https://image.tmdb.org/t/p/original/6izwz7rsy95ARzTR3poZ8H6c5pp.jpg','https://image.tmdb.org/t/p/original/xOMo8BRK7PfcJv9JCnx7s5hj0PX.jpg','Won 2 Oscars. 106 wins & 367 nominations total','$282,144,358','PG-13')
,('Money, Guns, and a Merry Christmas',NULL,3.8,NULL,'English','Series',NULL,NULL,NULL,NULL,NULL,NULL)
,('Meri Pyaari Bindu','11 May 2017',6.1,'117 minutes','Hindi','Movie','Fed up with the lack of critical appreciation despite being a successful writer, Abhimanyu Roy (Ayushmann Khurrana) returns to his roots in Kolkata to write more meaningful literature and decides on an old-fashioned love story - which was now, 3 years in the making. This writer''s block is called Bindu (Parineeti Chopra). How do you contain this unpredictable, crazy, restless, larger than life, live wire in the pages of a book? As Abhi says ''''You know when a song comes on and you just have to dance? Bindu was that song. That silly infectious joyful tune you couldn''t get out of your head - even if you wanted to." So where should he begin? Where should he end? But when Abhi stumbles across an old audio cassette of their favorite playlist, it sends Abhi down memory lane - and as he waltzes in and out of his past and present through the songs in the mixed tape, he finally faces reality and reconnects with his roots, with his family and his novel starts writing itself. Of course, life in its usual scheming manner surprises him yet again and changes the ending of his book and his life, as he once again finds himself being pulled back into the center of that crazy little thing called love. He realizes, that love, is neither time- nor place-dependent. - All we need is the right person next to us and of course the right soundtrack.','https://image.tmdb.org/t/p/original/hKZZiiHuHFopzJwl0JYttRWEzKD.jpg','https://image.tmdb.org/t/p/original/sFN1KnAVJhy5oV0gIEMf3HicxBb.jpg','8 nominations',NULL,'Not Rated')
,('Hasee Toh Phasee','07 Feb 2014',6.8,'141 minutes','Hindi','Movie','Spread across Mumbai over a decade, the film presents the relationship between quirky, rebellious Meeta (Parineeti Chopra) and mischievous Nikhil (Sidharth Malhotra), struggling with their respective families to fit in. Nikhil bumps into Meeta on the occasion of her sister Deeksha''s wedding while Meeta is on the run. He falls in love with Meeta''s sister Karishma on the same day. The film jumps to the eve of Nikhil and Karishma''s engagement. Karishma''s wealthy father, Devesh Solanki, does not approve of Nikhil as he finds him to be a lackadaisical young man. On the day of his engagement, Nikhil promises Karishma that he will prove himself worthy of her within the next seven days. Nikhil is re-introduced to Meeta by Karishma and is instructed to put her up in a hotel. Nikhil recognizes Meeta. In an attempt to please Karishma, he decides to keep Meeta in the flat above his own house, with his crazy extended family. During the course of Meeta''s stay at Nikhil''s house, they get closer to each other and open up to each other. In the midst of this confusion, the truth of relationships is unfolded; the strength of unions is tested and love triumphs.','https://image.tmdb.org/t/p/original/A6s9Nb0bfuH1KqXvnG22FCAgrP7.jpg','https://image.tmdb.org/t/p/original/9XzWOwHn5sKFn0WdBSw56ISk6HN.jpg','3 wins & 16 nominations','$646,035','Not Rated')
,('Wonka','06 Dec 2023',7,'116 minutes','English, Latin, French','Movie','Willy Wonka is the mastermind behind some of the most delicious and innovative chocolate creations the world has ever seen. But before shaking up the chocolate industry and making a name for himself as a confectionery genius, the ambitious young creator had to defy all odds. As a result, Willy transformed his wildest dreams into reality with a bold vision, determination, and unexpected help from new friends. After all, hard work and a dash of magic can make anything happen. Because, as Willy already knows, it only takes a dream to make a difference.','https://image.tmdb.org/t/p/original/qhb1qOilapbapxWQn9jtRCMwXJF.jpg','https://image.tmdb.org/t/p/original/yOm993lsJyPmBodlYjgpPwBjXP9.jpg','Nominated for 1 BAFTA Award3 wins & 42 nominations total','$218,402,312','PG')
,('The Farewell','09 Aug 2019',7.5,'100 minutes','Mandarin, English, Japanese, Italian','Movie','A headstrong Chinese-American woman returns to China when her beloved grandmother is diagnosed with terminal cancer. Billi struggles with her family''s decision to keep grandma in the dark about her own illness as they all stage an impromptu wedding to see grandma one last time.','https://image.tmdb.org/t/p/original/7ht2IMGynDSVQGvAXhAb83DLET8.jpg','https://image.tmdb.org/t/p/original/5INPBiKVRsyp9kgHfsC0cTfvKFH.jpg','Nominated for 1 BAFTA Award37 wins & 194 nominations total','$17,695,781','PG')
,('Thor: Ragnarok','03 Nov 2017',7.9,'130 minutes','English','Movie','Imprisoned on the other side of the universe, the mighty Thor (Chris Hemsworth) finds himself in a deadly gladiatorial contest that puts him against The Incredible Hulk (Mark Ruffalo), his former ally and fellow Avenger. Thor''s quest for survival leads him in a race against time to prevent the all-powerful Hela (Cate Blanchett) from destroying his home world and the Asgardian civilization.','https://image.tmdb.org/t/p/original/rzRwTcFvttcN1ZpX2xv4j3tSdJu.jpg','https://image.tmdb.org/t/p/original/6G2fLCVm9fiLyHvBrccq6GSe2ih.jpg','6 wins & 50 nominations total','$315,058,289','PG-13')
,('The Perfect Date','12 Apr 2019',5.8,'89 minutes','English','Movie','Brooks Rattigan (Noah Centineo) has the academic chops to get into his dream Ivy League school, but he''s missing an outstanding extracurricular--and the money. When he seizes on an opportunity to make some extra cash by posing as the boyfriend of self-assured, combat-boot-loving Celia Lieberman (Laura Marano), he finds that he has a knack for being the perfect stand-in. With his programmer friend Murph (Odiseas Georgiadis), Brooks launches an app selling himself as a plus-one for all occasions. Along the way, he meets the girl of his dreams (Camila Mendes). But when business starts to boom, Brooks must reassess everything of which he was once sure.','https://image.tmdb.org/t/p/original/rrAYdezO3h1mjdYTaQyTXoj8IZ4.jpg','https://image.tmdb.org/t/p/original/tHUzzVwshwidhQxZXj0WzAdKdto.jpg',NULL,NULL,NULL)
,('The Lego Movie','28 Feb 2014',7.7,'100 minutes','English, Turkish','Movie','The LEGO Movie is a 3D animated film which follows lead character, Emmet, a completely ordinary LEGO mini-figure who is identified as the most "extraordinary person" and the key to saving the Lego universe. Emmet and his friends go on an epic journey to stop the evil tyrant, Lord Business.','https://image.tmdb.org/t/p/original/lbctonEnewCYZ4FYoTZhs8cidAl.jpg','https://image.tmdb.org/t/p/original/9531Jp42H0ppRXjkxxgCulnQNZp.jpg','Nominated for 1 Oscar. 72 wins & 67 nominations total','$257,966,122','PG')
,('Gone Girl','01 Oct 2014',8.1,'149 minutes','English','Movie','On the occasion of his fifth wedding anniversary, Nick Dunne reports that his wife, Amy, has gone missing. Under pressure from the police and a growing media frenzy, Nick''s portrait of a blissful union begins to crumble. Soon his lies, deceits and strange behavior have everyone asking the same dark question: Did Nick Dunne kill his wife?','https://image.tmdb.org/t/p/original/ts996lKsxvjkO2yiYG0ht4qAicO.jpg','https://image.tmdb.org/t/p/original/1ufic9NSdolkgNkQSAVjlVp0uqn.jpg','Nominated for 1 Oscar. 64 wins & 188 nominations total','$167,767,189','R')
,('When We First Met','09 Feb 2018',6.4,'97 minutes','English, Mandarin','Movie','Noah thinks he has the perfect first night with Avery, the girl of his dreams, but he gets relegated to the friend zone. He spends the next three years wondering what went wrong--until he gets the unexpected chance to travel back in time and change that night--and his fate--over and over again.','https://image.tmdb.org/t/p/original/pscQKoikkSJxAu8O5LKtjgGJEt1.jpg','https://image.tmdb.org/t/p/original/kZwpxqIXPqNfRigrqF5rN8L54a.jpg',NULL,NULL,'TV-14')
,('Night School','26 Sep 2018',5.6,'111 minutes','English, Spanish, French, Arabic','Movie','In 2001, high-school student Teddy Walker drops out of school when he''s unable to concentrate during a crucial test. In 2018 he works as a barbecue-grill salesman and dates a wealthy woman named Lisa, and has developed a careful financial strategy that allows him to maintain the illusion that he is better off than he actually is. But his life falls apart just as he learns that he will inherit control of the store when the current manager retires: As he proposes to Lisa in the shop, he accidentally triggers an explosion when a champagne cork pops open a gas tank; the manager runs away with the insurance from the explosion. Teddy''s friend is willing to give him a job--if he can earn his GED.','https://image.tmdb.org/t/p/original/uQVIQDc3foTPodZw0ie1Or0CXBn.jpg','https://image.tmdb.org/t/p/original/1dDSULh0SQxCgNdPafbC0gWeIaY.jpg','1 win & 4 nominations total','$77,339,130','PG-13')
,('Don''t Look Up','08 Dec 2021',7.2,'138 minutes','English','Movie','Kate Dibiasky (Jennifer Lawrence), an astronomy grad student, and her professor Dr. Randall Mindy (Leonardo DiCaprio) make an astounding discovery of a comet orbiting within the solar system. The problem - it''s on a direct collision course with Earth. The other problem? No one really seems to care. Turns out warning mankind about a planet-killer the size of Mount Everest is an inconvenient fact to navigate. With the help of Dr. Oglethorpe (Rob Morgan), Kate and Randall embark on a media tour that takes them from the office of an indifferent President Orlean (Meryl Streep) and her sycophantic son and Chief of Staff, Jason (Jonah Hill), to the airwaves of The Daily Rip, an upbeat morning show hosted by Brie (Cate Blanchett) and Jack (Tyler Perry). With only six months until the comet makes impact, managing the 24-hour news cycle and gaining the attention of the social media obsessed public before it''s too late proves shockingly comical - what will it take to get the world to just look up?.','https://image.tmdb.org/t/p/original/th4E1yqsE8DGpAseLiUrI60Hf8V.jpg','https://image.tmdb.org/t/p/original/nvxrQQspxmSblCYDtvDAbVFX8Jt.jpg','Nominated for 4 Oscars. 24 wins & 99 nominations total',NULL,'R')
,('Beef',NULL,8,'30 minutes','English','Series','After an incident in a parking lot, road rage ensues resulting in a bitter feud between the two antagonists. The vendetta between them and the lengths they''ll go to avenge themselves on the other spirals out of control, jeopardising everything and everyone in their lives.','https://image.tmdb.org/t/p/original/4b4v7RnPhNyPEaVGFarEuo74r8W.jpg','https://image.tmdb.org/t/p/original/u7OpeS4eckBSR1wFxFTuyy3FjHE.jpg','Won 8 Primetime Emmys. 52 wins & 59 nominations total',NULL,'TV-MA')
,('Shaun of the Dead','09 Apr 2004',7.9,'99 minutes','English','Movie','Shaun (Simon Pegg) doesn''t have a very good day, so he decides to turn his life around by getting his ex to take him back, but he times it for right in the middle of what may be a zombie apocalypse. But for him, it''s an opportunity to show everyone he knows how useful he is by saving them all. All he has to do is survive, and get his ex back.','https://image.tmdb.org/t/p/original/dgXPhzNJH8HFTBjXPB177yNx6RI.jpg','https://image.tmdb.org/t/p/original/mrdHbaCp3ysDrzUHle5eQlY9Vzu.jpg','Nominated for 3 BAFTA 14 wins & 20 nominations total','$14,461,359','R')
,('Hot Fuzz','16 Feb 2007',7.8,'121 minutes','English','Movie','Top London cop PC Nicholas Angel is good. Too good. To stop the rest of his team looking bad, he is reassigned to the quiet town of Sandford. He is paired with Danny Butterman, who endlessly questions him on the action lifestyle. Everything seems quiet for Angel until two actors are found decapitated. It is called an accident, but Angel won''t accept that, especially when more and more people turn up dead. Angel and Danny clash with everyone while they try to uncover the truth behind the mystery of the apparent "accidents".','https://image.tmdb.org/t/p/original/zPib4ukTSdXvHP9pxGkFCe34f3y.jpg','https://image.tmdb.org/t/p/original/9rMSCFH9zhv1vILpEZQlUJs9iUm.jpg','2 wins & 9 nominations total','$23,637,265','R')
,('The World''s End','18 Jul 2013',6.9,'109 minutes','English','Movie','20 years after attempting an epic pub crawl, five childhood friends reunite when one of them becomes hell bent on trying the drinking marathon again. They are convinced to stage an encore by mate Gary King, a 40-year old man trapped at the cigarette end of his teens, who drags his reluctant pals to their home town and once again attempts to reach the fabled pub, The World''s End. As they attempt to reconcile the past and present, they realize the real struggle is for the future, not just theirs but humankind''s. Reaching The World''s End is the least of their worries.','https://image.tmdb.org/t/p/original/kpglnOBYmKn0AkkWDzGxzKHDbds.jpg','https://image.tmdb.org/t/p/original/stAPkorBeBkvEZ6DQs30Ke4cPyr.jpg','4 wins & 28 nominations total','$26,004,851','R')
,('Charulata','17 Apr 1964',8.1,'117 minutes','Bangla, English','Movie','Charu lives a lonely and idle life in 1870s India. Although her husband Bhupati devotes more time to his newspaper than to their marriage, he sees her loneliness and asks his brother-in-law,Umapada to keep her company. At the same time Bhupati''s own cousin, Amal, a would-be writer comes home finishing his college education. However, after several months, Charu and Amal''s feelings for each other move beyond literary friendship.','https://image.tmdb.org/t/p/original/4kznHLoJGN3OBZunQvZwy26it8z.jpg','https://image.tmdb.org/t/p/original/hXYf2k0igWcfReM98949EVTfSgP.jpg','8 wins & 2 nominations','$77,820','Not Rated')
,('Andhadhun','04 Oct 2018',8.2,'139 minutes','Hindi, English','Movie','Akash a blind pianist is preparing for a London concert.Sophie''s scooter bumps into Akash and upon finding he a pianist she takes him to her restaurant Franco''s run by her father and offers him a job.Akash meets 70s actor Pramod Sinha at the restaurant who asks him to do a private concert of his songs at his residence to surprise his wife Simi. Next Day upon reaching his house a shocking surprise is waiting for Akash.','https://image.tmdb.org/t/p/original/dy3K6hNvwE05siGgiLJcEiwgpdO.jpg','https://image.tmdb.org/t/p/original/ArvKQJv3nEpnBoVyjWDUT7TtJOL.jpg','35 wins & 43 nominations','$1,193,046','Not Rated')
,('Always Be My Maybe','31 May 2019',6.7,'101 minutes','English','Movie','Childhood friends Sasha and Marcus have a falling-out and don''t speak for 15 years. But when Sasha, now a celebrity chef in Los Angeles, returns to her hometown of San Francisco to open a new restaurant, she runs into her old pal--a happily-complacent musician still living at home and working for his dad. Though the two are reluctant to reconnect, they soon find the old sparks--and maybe some new ones?','https://image.tmdb.org/t/p/original/kHp4Fmj2a6mtxKSGtjq44h4xLs9.jpg','https://image.tmdb.org/t/p/original/pjGXREIplQWVpaMxlEuYTwQUGtt.jpg','1 win & 5 nominations total',NULL,'PG-13')
,('A Separation','16 Mar 2011',8.3,'123 minutes','Persian','Movie','Nader (Payman Maadi) and Simin (Leila Hatami) argue about living abroad. Simin prefers to live abroad to provide better opportunities for their only daughter, Termeh. However, Nader refuses to go because he thinks he must stay in Iran and take care of his father (Ali-Asghar Shahbazi), who suffers from Alzheimers. However, Simin is determined to get a divorce and leave the country with her daughter.','https://image.tmdb.org/t/p/original/wQVvASmpm8jGhJBQU20OkoMcNzi.jpg','https://image.tmdb.org/t/p/original/mJrSFyb7uoqiICUmvIIzeOerA5K.jpg','Won 1 Oscar. 88 wins & 52 nominations total','$7,099,055','PG-13')
,('The Salesman','31 Aug 2016',7.7,'124 minutes','Persian, English','Movie','Forced to leave their collapsing house, Ranaa and Emad, an Iranian couple who happen to be performers rehearsing for Arthur Miller''s "Death of a Salesman" rent a new apartment from one of their fellow performers. Unaware of the fact that the previous tenant had been a woman of ill repute having many clients, they settle down. By a nasty turn of events one of the clients pays a visit to the apartment one night while Ranaa is alone at home taking a bath and the aftermath turns the peaceful life of the couple upside down.','https://image.tmdb.org/t/p/original/x4PIuYU5ZMMXiTrheNR8vCTYPBf.jpg','https://image.tmdb.org/t/p/original/woSmQgo1wxE4WRVXWHrmgv3jy2O.jpg','Won 1 Oscar. 15 wins & 32 nominations total','$2,402,067','PG-13')
,('Airplane!','02 Jul 1980',7.7,'88 minutes','English','Movie','Drowning his sorrows after that botched mission during World War II, Ted Striker, a traumatized ex-fighter-pilot with a neurotic fear of flying, still has not gotten over his old flame, flight attendant, Elaine Dickinson. Determined to win her back, Ted boards a domestic flight from Los Angeles to Chicago, only to come face-to-face with a severe case of in-flight food poisoning that is threatening everyone''s lives. With most of the passengers and the entire cockpit crew down with the food-borne illness, Striker must confront his inner demons and take over the control of the ungovernable aircraft with the help of a gruff air-traffic controller and his former commander. Can Ted Striker land the airplane and save the passengers?','https://image.tmdb.org/t/p/original/7Q3efxd3AF1vQjlSxnlerSA7RzN.jpg','https://image.tmdb.org/t/p/original/rpp7XSFsFgaslZB5IqDDdZB9CjR.jpg','Nominated for 1 BAFTA Award3 wins & 7 nominations total','$83,453,539','PG')
,('The Sixth Sense','06 Aug 1999',8.2,'107 minutes','English, Latin, Spanish','Movie','Malcom Crowe (Bruce Willis) is a child psychologist who receives an award on the same night that he is visited by a very unhappy ex-patient. After this encounter, Crowe takes on the task of curing a young boy with the same ills as the ex-patient (Donnie Wahlberg) . This boy "sees dead people". Crowe spends a lot of time with the boy much to the dismay of his wife (Olivia Williams). Cole''s mom (Toni Collette) is at her wit''s end with what to do about her son''s increasing problems. Crowe is the boy''s only hope.','https://image.tmdb.org/t/p/original/vOyfUXNFSnaTk7Vk5AjpsKTUWsu.jpg','https://image.tmdb.org/t/p/original/6TjllWT3cGrPFyqDXurVZ3L8bBi.jpg','Nominated for 6 Oscars. 37 wins & 56 nominations total','$293,506,292','PG-13')
,('Stranger Than Fiction','10 Nov 2006',7.5,'113 minutes','English','Movie','Everybody knows that your life is a story. But what if a story was your life? Harold Crick (Will Ferrell) is your average I.R.S. Agent: monotonous, boring, and repetitive. But one day this all changes when Harold begins to hear an author inside of his head narrating his life. The narrator it is extraordinarily accurate, and Harold recognizes the voice as an esteemed author he saw on television. But when the narration reveals that he is going to die, Harold must find the author of the story, and ultimately his life, to convince her to change the ending of the story before it is too late.','https://image.tmdb.org/t/p/original/nCzcepubwShvZ4vbCsygQNgF2Z1.jpg','https://image.tmdb.org/t/p/original/d9eONXYtCmQnPWw61w9pNMGlSzK.jpg','3 wins & 15 nominations total','$40,660,952','PG-13')
,('Haider','02 Oct 2014',8,'160 minutes','Hindi','Movie','In Vishal Bhardwaj''s adaptation of William Shakespeare''s ''Hamlet'', young fellow Haider returns home to Kashmir on receiving news of his father''s disappearance. Not only does he learn that security forces have detained his father for harboring militants, but also that his mother is in a relationship with his very own uncle. Intense drama follows between mother and son as both struggle to come to terms with the news of his father''s death. Soon Haider learns that his uncle is responsible for the gruesome murder; what follows is his journey to avenge his father''s death.','https://image.tmdb.org/t/p/original/lOCotkHPODWdsRDMoLbSdLdVT3L.jpg','https://image.tmdb.org/t/p/original/tiyqwRBKVyLgKwVNicKjKvjaLXf.jpg','35 wins & 47 nominations','$1,048,143','Not Rated')
,('Seven','22 Sep 1995',8.6,'127 minutes','English','Movie','Taking place in a nameless city, Se7en follows the story of two homicide detectives tracking down a sadistic serial killer (Kevin Spacey) who chooses his victims according to the seven deadly sins. Brad Pitt stars as Detective David Mills, a hopeful but naive rookie who finds himself partnered with veteran Detective William Somerset (Morgan Freeman). Together they trace the killer''s every step, witnessing the aftermath of his horrific crimes one by one as the victims pile up in rapid succession, all the while moving closer to a gruesome fate neither of them could have predicted.','https://image.tmdb.org/t/p/original/191nKfP0ehp3uIvWqgPbFmI4lv9.jpg','https://image.tmdb.org/t/p/original/p1PLSI5Nw2krGxD7X4ulul1tDAk.jpg','Nominated for 2 Oscars. 5 wins & 9 nominations total','$820,278','Not Rated')
,('The Truman Show','1998',8.2,'103 minutes','English','Movie','Since birth, a big fat lie defines the well-organised but humdrum life of the kind-hearted insurance salesman and ambitious explorer, Truman Burbank. Utterly unaware of the thousands of cleverly hidden cameras watching his every move, for nearly three decades, Truman''s entire existence pivots around the will and the wild imagination of the ruthlessly manipulative television producer, Christof--the all-powerful TV-God of an extreme 24/7 reality show: The Truman Show. As a result, Truman''s picturesque neighbourhood with the manicured lawns and the uncannily perfect residents is nothing but an elaborate state-of-the-art set, and the only truth he knows is what the worldwide television network and its deep financial interests dictate. Do lab rats know they are forever imprisoned?','https://image.tmdb.org/t/p/original/vuza0WqY239yBXOadKlGwJsZJFE.jpg','https://image.tmdb.org/t/p/original/aCHn2TXYJfzPXQKA6r9mKPbMlUB.jpg','Nominated for 3 Oscars. 41 wins & 69 nominations total','$125,618,201','PG')
,('The Greatest Showman','20 Dec 2017',7.5,'105 minutes','English','Movie','Orphaned, penniless, but ambitious and with a mind crammed with imagination and fresh ideas, the American entertainer, Phineas Taylor Barnum, will always be remembered as the man with the gift to blur the line between reality and fiction. Thirsty for innovation and hungry for success, the son of a tailor manages to open a wax museum; however, he soon shifts focus to the unique and the peculiar, introducing extraordinary, never-seen-before live acts on the circus stage. Now, some people call Barnum''s rich collection of oddities, an outright freak show; but, when Phineas, obsessed for cheers and respectability, gambles everything on the opera singer, Jenny Lind, to appeal to a high-brow audience, he will lose sight of the most crucial aspect of his life: his family. Will Barnum, the greatest showman, risk it all to be accepted?','https://image.tmdb.org/t/p/original/b9CeobiihCx1uG1tpw8hXmpi7nm.jpg','https://image.tmdb.org/t/p/original/lrNKm3HNvGdZoAfiBKu7b04FLHN.jpg','Nominated for 1 Oscar. 17 wins & 32 nominations total','$174,340,174','PG')
,('Kapoor & Sons','18 Mar 2016',7.7,'132 minutes','Hindi','Movie','Amrajeet Kapoor lives joyfully at the age of 90 his wish is to get a family photograph and mentioning Kapoor and Sons and frame it in the hall of his house. He suddenly suffer an heart attack and is rushed to hospital by his son Harsh and his wife Sunita his grandsons Rahul whose writer in London and Arjun who works in New Jersey soon rush home.The Kapoor''s aren''t happy with each other as they seem to be and have a estranged relationship and frequent arguments in between this Rahul and Arjun meet Tia on separate occasions and develop a friendship. While Sr Kapoor is in hospital the family plan his birthday party which is on his day of discharge where at the party Rahul and Arjun meet Tia where Rahul clears the air that they don''t have any relationship apart from business. But soon party goes hey wire when Anu arrives whom Sunita believes Harsh is having an affair while Amarjeet as an argument with his Sr friends during a bridge game. Amarjeet is waiting for his younger son to return to complete the family pic but but is worried seeing his family''s estranged relationship.','https://image.tmdb.org/t/p/original/oPdcOInH8TqR5udDTDPiDuLSN90.jpg','https://image.tmdb.org/t/p/original/xuF6qhtc7Q79Fh2aJxRJAX3YgbE.jpg','18 wins & 38 nominations','$2,607,036','Not Rated')
,('Laila Majnu','06 Sep 2018',7.7,'140 minutes','Hindi','Movie',NULL,'https://image.tmdb.org/t/p/original/m21pcuuNY58P7wkxQd3LzZSdXKU.jpg','https://image.tmdb.org/t/p/original/6wRBtkjf5DCmybSnnQ9PSEPT3s8.jpg','1 win & 11 nominations',NULL,NULL)
,('Prisoners','04 Oct 2013',8.2,'153 minutes','English','Movie','How far would you go to protect your family? Keller Dover is facing every parent''s worst nightmare. His six-year-old daughter, Anna, is missing, together with her young friend, Joy, and as minutes turn to hours, panic sets in. The only lead is a dilapidated RV that had earlier been parked on their street. Heading the investigation, Detective Loki arrests its driver, Alex Jones, but a lack of evidence forces his release. As the police pursue multiple leads and pressure mounts, knowing his child''s life is at stake the frantic Dover decides he has no choice but to take matters into his own hands. But just how far will this desperate father go to protect his family?','https://image.tmdb.org/t/p/original/uhviyknTT5cEQXbn6vWIqfM4vGm.jpg','https://image.tmdb.org/t/p/original/3RFmTz5h2UuFWEV4oH00XICBR9y.jpg','Nominated for 1 Oscar. 10 wins & 38 nominations total','$61,002,302','R')
,('What If','13 Aug 2014',6.8,'98 minutes','English','Movie','Medical-school dropout Wallace has been repeatedly burned by bad relationships. So while everyone around him, including his roommate Allan, seems to be finding the perfect partner, Wallace decides to put his love life on hold. It is then that he meets Chantry, an animator who lives with her longtime boyfriend Ben. Wallace and Chantry form an instant connection, striking up a close friendship. Still, there is no denying the chemistry between them, leading the pair to wonder, what if the love of your life is actually your best friend?','https://image.tmdb.org/t/p/original/67x9NJyjK4u02NpISnChDMKzCUr.jpg','https://image.tmdb.org/t/p/original/iIcJ72VzqAIw5NT6bOYqfHB2ukM.jpg',NULL,NULL,NULL)
,('Vice Principals',NULL,8,'30 minutes','English','Series','A dark comedy series about a high school and the two vice principals. McBride and Walton Goggins star as the V.P.s who are in an epic power struggle, vying for the top spot: to be school principal.','https://image.tmdb.org/t/p/original/hbAH3WlLpeAxJ06xpF4Uwg9j7kr.jpg','https://image.tmdb.org/t/p/original/emEJdHqgr0dLTpchPmifiGM2DR.jpg','Won 1 Oscar. 35 wins & 139 nominations total','$47,836,282','R')
,('Killers of the Flower Moon','20 Oct 2023',7.6,'206 minutes','English, Osage, Latin, French','Movie','The story takes place in the 1920s around the Osage Indian tribe living in Oklahoma. Native Americans are being killed one by one after the tribe becomes rich by discovering oil. The Osage massacre attracts the attention of the FBI, which begins an investigation.','https://image.tmdb.org/t/p/original/dB6Krk806zeqd0YNp2ngQ9zXteH.jpg','https://image.tmdb.org/t/p/original/acvE3RWjDLgvbL2RtcyzkrsAyNV.jpg','Nominated for 10 Oscars. 136 wins & 427 nominations total','$68,035,488','R')
,('Inside Llewyn Davis','06 Nov 2013',7.4,'104 minutes','English','Movie','Follow a week in the life of a young folk singer as he navigates the Greenwich Village folk scene of 1961. Guitar in tow, huddled against the unforgiving New York winter, he is struggling to make it as a musician against seemingly insurmountable obstacles -- some of them of his own making.','https://image.tmdb.org/t/p/original/nNxK3pC3DMpPpWKMvo2p3liREVT.jpg','https://image.tmdb.org/t/p/original/nnaUAkXgMKmkMI4Go6q4Q5q4nKm.jpg','Nominated for 2 Oscars. 47 wins & 174 nominations total','$13,235,319','R')
,('My Name Is Khan','11 Feb 2010',7.9,'165 minutes','Hindi, English','Movie','Rizwan Khan, a Muslim from the Borivali section of Mumbai, suffers from Asperger''s syndrome, a form of high-functioning autism that complicates socialization. The adult Rizwan marries a Hindu single mother, Mandira, in San Francisco. After 9/11, Rizwan is detained by authorities at LAX who mistake his disability for suspicious behavior. Following his arrest, he meets Radha, a therapist who helps him deal with his situation and his affliction. Rizwan then begins a journey to meet US President Bush to clear his name.','https://image.tmdb.org/t/p/original/5Y36lCiNyyV71mjq6LavgiggbhT.jpg','https://image.tmdb.org/t/p/original/zGCnIADWwpjGllYv8DgT8HIuIQl.jpg','25 wins & 36 nominations total','$4,018,771','PG-13')
,('Hera Pheri','31 Mar 2000',8.2,'156 minutes','Hindi','Movie','Baburao, a garage owner always in financial trouble has a tenant named Raju, who has not paid his rent for 2 years. He also has another tenant named Shyam, who has come to the city to look for a job in his late father''s place but is unable to find employment. The three men quarrel amongst themselves frequently. Then one day, the three men get a phone call from a kidnapper named Kabira and decide to make use of this phone call to overcome their financial problems - pretend to be the real kidnappers, increase the ransom amount, keep the incremental amount for themselves, and then give the original ransom demanded to Kabira. Will they get away with this idea?','https://image.tmdb.org/t/p/original/23MKGUPT5laTStim4TaGhfgSltu.jpg','https://image.tmdb.org/t/p/original/mIisDBJVAsugwReRoeAuWIDnc9S.jpg','8 wins & 6 nominations total',NULL,'Not Rated')
,('Om Shanti Om','07 Nov 2007',6.8,'162 minutes','Hindi, Urdu','Movie','Om Prakash Makhija is a Junior Artist in the 1970s Hindi film industry and in love with actress Shantipriya. Om rescues Shanti from an out-of-control fire scene and they become friends. His hopes seem to be coming true--until he finds out that she''s married to film producer Mukesh Mehra and expecting his child. He then watches in horror as Mukesh, after luring her into an abandoned studio, sets it afire to prevent a financial loss and protect his career. Om attempts--unsuccessfully--to rescue her and eventually dies himself. 30 years later, Om has been reincarnated as the only son of Bollywood actor Rajesh Kapoor, and is himself an actor. His memories start to return when he meets his widowed mother Bela, from his previous life. He also meets Mukesh and they decide to make a movie, ''Om Shanti Om''. Om hires a look-alike of Shantipriya and hopes to force a confession from Mukesh, but things go awry and Om finds his life endangered once again.','https://image.tmdb.org/t/p/original/ac2a7CJjxFwUULB8YGHdmDL5oSP.jpg','https://image.tmdb.org/t/p/original/k6CjO0JQhfm3M0paWvnqkpzB0pL.jpg','38 wins & 30 nominations total','$3,597,372','Not Rated')
,('17 Again','09 Apr 2009',6.4,'102 minutes','English','Movie','37 year old Mike O''Donnell is extremely disappointed with his life because of some of the choices he made when he was 17. His wife threw him out of the house his kids think that he''s a loser and want nothing to do with him, he lost his job. One small action gave him a another shot at his senior year in high school. For his kids he goes from a loser of a dad to an amazing friend that gives them great advice. He also realizes the things that he didn''t realize when he was actually 17. Seeing senior year from a different point of view makes him realize that doing your life over isn''t as fun as it seems.','https://image.tmdb.org/t/p/original/yEcfFXEWpuXcfsR9nKESVCFneqV.jpg','https://image.tmdb.org/t/p/original/8urrLPW6HFaIuRhJ1G3iQ7usEo7.jpg','3 wins & 5 nominations total','$64,167,069','PG-13')
,('Tenet','26 Aug 2020',7.3,'150 minutes','English','Movie','In a twilight world of international espionage, an unnamed CIA operative, known as The Protagonist, is recruited by a mysterious organization called Tenet to participate in a global assignment that unfolds beyond real time. The mission: prevent Andrei Sator, a renegade Russian oligarch with precognitive abilities, from starting World War III. The Protagonist will soon master the art of "time inversion" as a way of countering the threat that is to come.','https://image.tmdb.org/t/p/original/aCIFMriQh8rvhxpN1IWGgvH0Tlg.jpg','https://image.tmdb.org/t/p/original/yY76zq9XSuJ4nWyPDuwkdV7Wt0c.jpg','Won 1 Oscar. 49 wins & 139 nominations total','$58,504,105','PG-13')
,('Swiss Army Man','01 Jul 2016',6.9,'97 minutes','English','Movie','Hank, stranded on a deserted island and about to kill himself, notices a corpse washed up on the beach. He befriends it, naming it Manny, only to discover that his new friend can talk and has a myriad of supernatural abilities...which may help him get home.','https://image.tmdb.org/t/p/original/8pxn8CQ6SD6tly75lrKw08wfZKv.jpg','https://image.tmdb.org/t/p/original/dxa8tPKsGYH7KQJew6OlKaeFRLX.jpg','8 wins & 31 nominations total','$4,210,454','R')
,('Catch Me If You Can','25 Dec 2002',8.1,'141 minutes','English, French','Movie','A true story about Frank Abagnale Jr. who, before his 19th birthday, successfully conned millions of dollars worth of checks as a Pan Am pilot, doctor, and legal prosecutor. An FBI agent makes it his mission to put him behind bars. But Frank not only eludes capture, he revels in the pursuit.','https://image.tmdb.org/t/p/original/sdYgEkKCDPWNU6KnoL4qd8xZ4w7.jpg','https://image.tmdb.org/t/p/original/Ag6qhzsJd3k1NKuNrG9RmhZDMh7.jpg','Nominated for 2 Oscars. 16 wins & 46 nominations total','$164,615,351','PG-13')
,('Mrs. Doubtfire','24 Nov 1993',7.1,'125 minutes','English','Movie','Eccentric actor Daniel Hillard is an amusing and caring father. But after a disastrous birthday party for his son, Chris, his wife, Miranda, draws the line and files a divorce. He can see their three children only once a week which doesn''t sit well with him. He also holds a job at a TV studio as a shipping clerk under the recommendation of his liason. But when Miranda puts out an ad for a nanny, he takes it upon himself to make a disguise as a British lady named Mrs. Doubtfire. And he must also deal with Miranda''s new boyfriend, Stu Dunemyer.','https://image.tmdb.org/t/p/original/shHrSmXS5140o6sQzgzXxn3KqSm.jpg','https://image.tmdb.org/t/p/original/sTgavNm82pTaZR9U2NQZ1J2FrJz.jpg','Won 1 Oscar. 11 wins & 10 nominations total','$219,195,243','PG-13')
,('Split','27 Jan 2017',7.3,'117 minutes','English','Movie','Though Kevin (James McAvoy) has evidenced 23 personalities to his trusted psychiatrist, Dr. Fletcher (Betty Buckley), there remains one still submerged who is set to materialize and dominate all of the others. Compelled to abduct three teenage girls led by the willful, observant Casey, Kevin reaches a war for survival among all of those contained within him -- as well as everyone around him -- as the walls between his compartments shatter.','https://image.tmdb.org/t/p/original/lli31lYTFpvxVBeFHWoe5PMfW5s.jpg','https://image.tmdb.org/t/p/original/9pkZesKMnblFfKxEhQx45YQ2kIe.jpg','10 wins & 27 nominations total','$138,291,365','PG-13')
,('Signs','02 Aug 2002',6.8,'106 minutes','English, Portuguese','Movie','Preacher Graham Hess loses his faith in God after his wife dies in a brutal car accident. He lives with his children and brother in a farmhouse. Crop circles start to appear in their cornfields; Graham dismisses them as mischief by miscreants. After hearing strange noises and watching news coverage on crop circles appearing all over the world, the family grows suspicious of alien activities. Now they must stick together as a family and believe, to survive and escape the ordeal.','https://image.tmdb.org/t/p/original/sCFwJVsw7f3OlgttW6BMbLSYAt9.jpg','https://image.tmdb.org/t/p/original/rsPjEr7o02mo8ex6wD2PbRwasUe.jpg','3 wins & 34 nominations total','$227,966,634','PG-13')
,('The Gentlemen',NULL,8,'50 minutes','English','Series','The series follows Eddie Horniman, who has inherited his father''s sizeable estate only to discover that it''s sitting on top of a weed empire owned by the legendary Bobby Glass. Has this straight-up soldier got what it takes to master the dark arts of the British criminal underworld and take control of the entire operation?','https://image.tmdb.org/t/p/original/tw3tzfXaSpmUZIB8ZNqNEGzMBCy.jpg','https://image.tmdb.org/t/p/original/PqIW7PA74YBURz5slZkxc0K5Pl.jpg','1 win & 4 nominations total','$36,471,795','R')
,('Green Book','16 Nov 2018',8.2,'130 minutes','English, Italian, Russian, German','Movie','In 1962, tough bouncer Frank "Tony Lip" Vallelonga searches for work while his nightclub is closed for renovations. The most promising offer turns out to be the driver for African-American classical pianist Don Shirley for a concert tour into the Deep South states. Although hardly enthused at working for a Black man, Tony accepts the job and they begin their trek armed with "The Negro Motorist Green Book," a guide for safe travel through America''s racial segregation. The snobbishly erudite pianist and the crudely practical bouncer can barely get along with their clashing attitudes to life and ideals. However, as the disparate pair witness and endure America''s appalling injustices on the road, they find a newfound respect for each other''s talents and start to face them together. In doing so, they nurture an understanding and a friendship that would change both their lives.','https://image.tmdb.org/t/p/original/7BsvSuDQuoqhWmU2fL7W2GOcZHU.jpg','https://image.tmdb.org/t/p/original/5En0fmDagt3Pk8d7P3uTwfeQceg.jpg','Won 3 Oscars. 58 wins & 123 nominations total','$85,080,171','PG-13')
,('The Fundamentals of Caring','24 Jun 2016',7.3,'97 minutes','English','Movie','A writer (Paul Rudd) retires after a personal tragedy and becomes a disabled teen''s caregiver. When the two embark on an impromptu road trip, their ability to cope is tested as they start to understand the importance of hope and friendship.','https://image.tmdb.org/t/p/original/zZ0eda1GyHILNSoq9KF5u0hcq6O.jpg','https://image.tmdb.org/t/p/original/9kAKDdnHvhS93eMTqsXwiVaBtw7.jpg','4 nominations',NULL,'TV-MA')
,('The Peanut Butter Falcon','23 Aug 2019',7.6,'97 minutes','English','Movie','The Peanut Butter Falcon is an adventure story set in the world of a modern Mark Twain that begins when Zak (22), a young man with Down syndrome, runs away from the nursing home where he lives to chase his dream of becoming a professional wrestler by attending the wrestling school The Salt Water Redneck. Through circumstances beyond their control Tyler (32), a small-time outlaw on the run, becomes Zak''s unlikely coach and ally. Together they wind through deltas, elude capture, drink whisky, find God, catch fish, and convince Eleanor (28), a kind nursing home employee with a story of her own, to join them on their journey.','https://image.tmdb.org/t/p/original/qyQcRGvdW3VtxHR4fSDgPOePEip.jpg','https://image.tmdb.org/t/p/original/lewYqqt8epnjFhEOIIIINX9Z8EE.jpg','20 wins & 16 nominations total','$20,457,158','PG-13')
,('Chennai Express','09 Aug 2013',6.2,'141 minutes','Hindi, Tamil, English, Marathi','Movie','Rahul, a middle-aged Mumbaikar man, embarks on a cross-country journey to Tamil Nadu to disperse his late grandfather''s ashes in the Holy water of Rameshwaram. While travelling by train from Mumbai to Chennai, Rahul finds his life in grave danger when he encounters and falls for the cheerful daughter of a don mafia kingpin. After making a grave, costly mistake of helping four heavily armed to the teeth South Indian henchmen goons board the train, Rahul is left to fend for himself when the henchmen destroy his cell phone. As Rahul and Meena grow close whilst travelling across the spectacular South Indian lands of Chennai, an unanticipated and ominous looming danger awaits them.','https://image.tmdb.org/t/p/original/9LZgpUyFEvqHaDVuveE002mhgTi.jpg','https://image.tmdb.org/t/p/original/6JpbbREGqdEtePnCwxJRcTNX2jZ.jpg','33 wins & 55 nominations total','$5,307,960','Not Rated')
,('The Dark Knight Rises','20 Aug 2012',8.4,'164 minutes','English, Arabic','Movie','Despite his tarnished reputation after the events of The Dark Knight (2008), in which he took the rap for Dent''s crimes, Batman feels compelled to intervene to assist the city and its Police force, which is struggling to cope with Bane''s plans to destroy the city.','https://image.tmdb.org/t/p/original/hr0L2aueqlP2BYUblTTjmtn0hw4.jpg','https://image.tmdb.org/t/p/original/y2DB71C4nyIdMrANijz8mzvQtk6.jpg','Nominated for 1 BAFTA Award45 wins & 103 nominations total','$448,149,584','PG-13')
,('Rush Hour','18 Sep 1998',7,'98 minutes','English, Cantonese, Mandarin, Japanese, Chinese','Movie','Cultures clash and tempers flares as the two cops named Detective Inspector Lee a Hong Kong Detective and Detective James Carter LAPD, a big-mouthed work-alone Los Angeles cop who are from different worlds discovers one thing in common: they can''t stand each other. With time running out, they must join forces to catch the criminals and save the eleven-year-old Chinese girl of the Chinese consul named Soo Yung.','https://image.tmdb.org/t/p/original/we7wOLVFgxhzLzUt0qNe50xdIQZ.jpg','https://image.tmdb.org/t/p/original/9YRKhVQx174hQn35f8k1MWKLAFQ.jpg','6 wins & 9 nominations total','$141,186,864','PG-13')
,('Watchmen','06 Mar 2009',7.6,'162 minutes','English','Movie','It''s 1985 in an alternate reality. The Watchmen - comprised of the Comedian, Dr. Manhattan, Nite Owl II, Ozymandias, Rorschach and Silk Spectre II - are a disparate band of masked superheroes, modeled after the Minutemen, who were masked superheroes of a generation earlier, most of who are dead or afflicted by the ravages of life. The Comedian belongs to both groups. Despite the activities of the Watchmen leading to the west winning the Vietnam War which in turn has kept Richard Nixon in the White House, Nixon has now outlawed masks, resulting in the Watchmen disbanding and going into retirement, most hiding their Watchmen past under their human identities. However, the Comedian, in his human persona of Eddie Blake, and Dr. Manhattan - former physicist Jon Osterman who obtained his superhero powers through a scientific accident which almost killed him - now work for the government. Dr. Manhattan''s powers in particular have kept a watch over nuclear proliferation, as he is able to stop any nuclear attack. Regardless, the Cold War is at its height with recent Soviet posturing regarding nuclear bomb buildup. In her human persona of Laurie Jupiter, Silk Spectre II is Dr. Manhattan''s assistant and lover, as much as they can be in Dr. Manhattan''s now non-human state. Meanwhile, Ozymandias has come out to the world as wealthy genius Adrian Veidt, capitalizing on his Ozymandias identity to better the world, and Rorschach continues to work as a vigilante, although one wanted by the law despite he the reason that many criminals are behind bars. When Blake is murdered, Rorschach, as the only one still on the streets, believes the murderer is out to kill all the Watchmen, despite any number of people wanting to kill the Comedian for being a misogynist. Evidence points to it perhaps having something to do with an imminent attempt of nuclear annihilation. Rorschach has to convince his colleagues, who he has not seen since their superhero days, of the validity of his theory for them to come out of retirement, which is no easy task. If they do, which will require them to overcome external forces which seem to be conspiring against them, they will have to discover both who killed the Comedian and why before they befall the same fate as him and/or before the mastermind is able to exact his larger grand plan.','https://image.tmdb.org/t/p/original/aVURelN3pM56lFM7Dgfs5TixcIf.jpg','https://image.tmdb.org/t/p/original/dH7ia3vtkYCa3CBvDnvVjqm9uiQ.jpg','12 wins & 24 nominations total','$107,509,799','R')
,('Sucker Punch','24 Mar 2011',6.1,'110 minutes','English, German','Movie','A young girl, Babydoll, is locked away in a mental asylum by her abusive stepfather, where she will undergo a lobotomy in five days'' time. Faced with unimaginable odds, she retreats to a fantastical world in her imagination where she and four other female asylum inmates plot to escape the facility. The line between reality and fantasy blurs as Babydoll and the others, plus a mysterious guide, fight to retrieve the five items that will let them break free from their captors in time.','https://image.tmdb.org/t/p/original/jtaUDnvIiHUd2ranDcjB5AbPx6o.jpg','https://image.tmdb.org/t/p/original/20rvY1XBjP2j3kyRDB2vTI1i9uT.jpg','1 win & 11 nominations total','$36,392,502','PG-13')
,('The Theory of Everything','13 Mar 2015',7.7,'123 minutes','English, French, Ukrainian','Movie','The Theory of Everything is the story of the most brilliant and celebrated physicist of our time, Stephen Hawking, and Jane Wilde, the arts student he fell in love with while studying at Cambridge in the 1960s. Little was expected from Hawking, a bright but shiftless student of cosmology, after he was given just two years to live following the diagnosis of a fatal illness (ALS) at 21 years of age. He became galvanized, however, by the love Jane Wilde, and went on to be called the "successor to Einstein," as well as a husband and father to their three children. Over the course of their marriage, however, as Stephen''s body collapsed and his academic renown soared, fault lines were exposed that tested the resolve of their relationship and dramatically altered the course of both of their lives.','https://image.tmdb.org/t/p/original/kJuL37NTE51zVP3eG5aGMyKAIlh.jpg','https://image.tmdb.org/t/p/original/ke3lanTAgCqPMpOyutIfXzYih2s.jpg','Won 1 Oscar. 25 wins & 126 nominations total','$35,893,537','PG-13')
,('Hacksaw Ridge','03 Nov 2016',8.1,'139 minutes','English, Japanese','Movie','The true story of Desmond T. Doss, the conscientious objector who, after the Battle of Okinawa, was awarded the Medal of Honor for his incredible bravery and regard for his fellow soldiers. Following his upbringing and how this shaped his views (especially his religious view and anti-killing stance), Doss''s trials and tribulations after enlisting in the US Army (trying to become a medic) begin, preluding the hell on Earth that was Hacksaw Ridge.','https://image.tmdb.org/t/p/original/jhWbYeUNOA5zAb6ufK6pXQFXqTX.jpg','https://image.tmdb.org/t/p/original/rshlQ6LfPRSWFhpGL4s5ZkIPR51.jpg','Won 2 Oscars. 57 wins & 115 nominations total','$67,209,615','R')
,('Ali','20 Dec 2001',6.7,'157 minutes','English, French, Swahili','Movie','In 1964, a brash new pro boxer, Cassius Clay, explodes on to the scene. Bold and outspoken, he cuts an entirely new image for African Americans in sports with his proud, public self confidence and his unapologetic belief that he is the greatest boxer of all time. To his credit, he sets out to prove that with his highly agile and forceful style soon making him a formidable boxer who claims the heavyweight championship. His personal life is no less noteworthy with his allegiance to the Nation of Islam, his friendship with the controversial Malcolm X, and his abandonment of his slave name in favor of Muhammad Ali stirring up controversy. Yet, at the top of his game, both Ali''s personal and professional lives face the ultimate test when the military draft rules are changed, making him eligible for military induction during the Vietnam War. Ali refuses to submit on principle to cooperate in a war for a racist nation that treated his people so poorly. The cost of that stand is high as he finds himself unable to legally box in his own country while his case is contested in court. What follows is a battle for a man who would sacrifice so much for what he believes in and a comeback that cemented his legend as one of the great sports figures of all time.','https://image.tmdb.org/t/p/original/hBE9VTgwmHbIBkJ0uxrnmqJOpkm.jpg','https://image.tmdb.org/t/p/original/gVtm7G5NtQxjFNA5ydqxslxjCuk.jpg','Nominated for 2 Oscars. 10 wins & 27 nominations total','$58,203,105','R')
,('BlacKkKlansman','09 Aug 2018',7.5,'135 minutes','English','Movie','In the early 1970s, Ron Stallworth is hired as the first Black officer in the Colorado Springs, Colorado Police Department. Stallworth is initially assigned to work in the records room, where he faces racial slurs from his coworkers. Stallworth requests a transfer to go undercover, and is assigned to infiltrate a local rally at which national civil rights leader Kwame Ture (birth name Stokely Carmichael) is to give a speech. At the rally, Stallworth meets Patrice Dumas, the president of the black student union at Colorado College. While taking Ture to his hotel, Patrice is stopped by patrolman Andy Landers, a corrupt, racist officer in Stallworth''s precinct, who threatens Ture and sexually assaults Patrice.','https://image.tmdb.org/t/p/original/8jxqAvSDoneSKRczaK8v9X5gqBp.jpg','https://image.tmdb.org/t/p/original/gMVdhfQ7q9DFHhDkehrququjGPd.jpg','Won 1 Oscar. 46 wins & 215 nominations total','$49,275,340','R')
,('The Trial of the Chicago 7','01 Oct 2020',7.7,'129 minutes','English, Latin, French','Movie','In Chicago 1968, the Democratic Party Convention was met with protests from activists like the moderate Students for a Democratic Society led by Tom Hayden and the militant Yippies led by Abbie Hoffman and Jerry Rubin, which led to violent confrontations with the local authorities. As a result, seven of the accused ringleaders are arraigned on charges like Conspiracy by the hostile Nixon administration, including Bobby Seale of the Black Panthers who was not involved in the incident. What follows is an unfair trial presided by the belligerent Judge Hoffman (No relation) and prosecuted by a reluctant but duty-bound Richard Schultz. As their pro bono lawyers face such odds, Hayden and his fellows are frustrated by the Yippies'' outrageous antics undermining their defense in defiance of the system even while Seale is denied a chance to defend himself his way. Along the way, the Chicago 7 clash in their political philosophies even as they learn they need each other in this fight.','https://image.tmdb.org/t/p/original/ahf5cVdooMAlDRiJOZQNuLqa1Is.jpg','https://image.tmdb.org/t/p/original/v8Nf6Y1qL1Q3PWTBezXNPPaXqza.jpg','Nominated for 6 Oscars. 58 wins & 192 nominations total',NULL,'R')
,('Palm Springs','10 Jul 2020',7.4,'90 minutes','English','Movie','While stuck at a wedding in Palm Springs, Nyles (Andy Samberg) meets Sarah (Cristin Milioti), the maid of honor and family black sheep. After he rescues her from a disastrous toast, Sarah becomes drawn to Nyles and his offbeat nihilism. But when their impromptu tryst is thwarted by a surreal interruption, Sarah must join Nyles in embracing the idea that nothing really matters, and they begin wreaking spirited havoc on the wedding celebration.','https://image.tmdb.org/t/p/original/yf5IuMW6GHghu39kxA0oFx7Bxmj.jpg','https://image.tmdb.org/t/p/original/d7JUXVvjvVCXWs1mlpyO5ESdWdT.jpg','15 wins & 45 nominations total','$164,000','R')
,('Liar Liar','21 Mar 1997',6.9,'86 minutes','English','Movie','Fletcher Reede, a fast talking attorney, habitual liar, and divorced father is an incredibly successful lawyer who has built his career by lying. He has a habit of giving precedence to his job and always breaking promises to be with his young son Max, but Fletcher lets Max down once too often, for missing his own son''s birthday party. But until then at 8:15 Max has decided to make an honest man out of him as he wishes for one whole day his dad couldn''t tell a lie. When the wish comes true all Fletcher can do is tell the truth and cannot tell one lie. Uh-oh for Fletcher Reede.','https://image.tmdb.org/t/p/original/p1habYSdC7oD3WygQ5lynU5G5rV.jpg','https://image.tmdb.org/t/p/original/wUzCzeM7ZRG0kHHOU8wiTrXdocd.jpg','4 wins & 6 nominations total','$181,410,615','PG-13')
,('Solo Leveling',NULL,8.6,NULL,'Japanese, English','Series','In a world where hunters, humans who possess magical abilities, must battle deadly monsters to protect the human race from certain annihilation, a notoriously weak hunter named Sung Jinwoo finds himself in a seemingly endless struggle for survival. One day, after narrowly surviving an overwhelmingly powerful double dungeon that nearly wipes out his entire party, a mysterious program called the System chooses him as its sole player and in turn, gives him the extremely rare ability to level up in strength, possibly beyond any known limits. Jinwoo then sets out on a journey as he fights against all kinds of enemies, both man and monster, to discover the secrets of the dungeons and the true source of his powers.','https://image.tmdb.org/t/p/original/geCRueV3ElhRTr0xtJuEWJt6dJ1.jpg','https://image.tmdb.org/t/p/original/odVlTMqPPiMksmxpN9cCbPCjUPP.jpg','2 wins & 7 nominations total',NULL,'TV-MA')
,('Teen Titans GO! To the Movies','26 Jul 2018',6.7,'84 minutes','English','Movie','It seems to the Teens that all the major superheroes out there are starring in their own movies-everyone but the Teen Titans, that is. But de facto leader Robin is determined to remedy the situation, and be seen as a star instead of a sidekick. If only they could get the hottest Hollywood film director to notice them. With a few madcap ideas and a song in their heart, the Teen Titans head to Tinsel Town, certain to pull off their dream. But when the group is radically misdirected by a seriously super villain and his maniacal plan to take over the Earth, things really go awry. The team finds their friendship and their fighting spirit failing, putting the very fate of the Teen Titans themselves on the line.','https://image.tmdb.org/t/p/original/mFHihhE9hlvJEk2f1AqdLRaYHd6.jpg','https://image.tmdb.org/t/p/original/3iDTnTj5C1sHOteR3Txmp1WvqO4.jpg','9 nominations total','$29,790,236','PG')
,('Ford v Ferrari','13 Nov 2019',8.1,'152 minutes','English, Italian, French, Japanese','Movie','In the mid-1960s, Enzo Ferrari''s fast Rosso-Corsa racing cars were dominating the motorsport world. Meanwhile, Carroll Shelby, an American car designer, had retired after winning the demanding 1959 ''24 Hours of Le Mans'' endurance race. However, an unexpected proposition from Lee Iacocca, the Vice President of Henry Ford II''s motor company, presented an opportunity to beat the Italians at their own game. Under these pressing circumstances, Ken Miles, a British sports car driver and racing engineer, reluctantly agreed to help improve the Americans'' image. But Ford''s race team had less than ninety days to rewrite history. As a result, the non-conformist duo came up with the Ford GT40 Mk I, a powerful, high-performance racing car. Nevertheless, the question remained. Can Shelby and Miles break Ferrari''s long winning streak?','https://image.tmdb.org/t/p/original/dR1Ju50iudrOh3YgfwkAU1g2HZe.jpg','https://image.tmdb.org/t/p/original/2vq5GTJOahE03mNYZGxIynlHcWr.jpg','Won 2 Oscars. 26 wins & 88 nominations total','$117,624,357','PG-13')
,('Do Revenge','16 Sep 2022',6.3,'118 minutes','English','Movie','Drea is at the peak of her high-school powers when her entire life goes up in flames after her sex tape gets leaked to the whole school, seemingly by her boyfriend Max, king of the school. Eleanor is an awkward new transfer student who is angered to find out that she must now attend school with her old bully Carissa, who started a nasty rumor about her in summer camp when they were 13. After a clandestine run-in at tennis camp, Drea and Eleanor form an unlikely secret friendship to get revenge on each other''s tormentors.','https://image.tmdb.org/t/p/original/akIjKJDHcVN4bzifcEarKVPNpoa.jpg','https://image.tmdb.org/t/p/original/yWRvAfZmbzk61REYod4WQACDhRj.jpg','2 wins & 5 nominations',NULL,'TV-MA')
,('All the Bright Places','08 Feb 2020',6.6,'107 minutes','English','Movie','The story of Violet Markey and Theodore Finch, who meet and change each other''s lives forever. As they struggle with the emotional and physical scars of their past, they come together, discovering that even the smallest places and moments can mean something.','https://image.tmdb.org/t/p/original/4SafxuMKQiw4reBiWKVZJpJn80I.jpg','https://image.tmdb.org/t/p/original/tcrNJfyNEIqaBR8Ogkgnq5xQJnf.jpg','1 win total',NULL,'TV-MA')
,('Seeking a Friend for the End of the World','22 Jun 2012',6.7,'101 minutes','English','Movie','An asteroid named "Matilda" is on a collision course towards Earth and in three weeks the world will come to an absolute end. What would you do if your life and the world were doomed? One man decides to spend his time searching for his long lost love from high school during the coming catastrophe.','https://image.tmdb.org/t/p/original/rBbCwFLyt7Q25yaw2bEOQh7RMG1.jpg','https://image.tmdb.org/t/p/original/tEJ3nvnp520AvNPbhCegHMo1EfM.jpg','3 nominations','$7,078,738','R')
,('Bruce Almighty','23 May 2003',6.8,'101 minutes','English, Spanish','Movie','Bruce Nolan, a television reporter in Buffalo, NY, is discontented with almost everything in life despite his popularity and the love of his girlfriend Grace. At the end of the worst day of his life, Bruce angrily ridicules and rages against God and God responds. God appears in human form and, endowing Bruce with divine powers, challenges Bruce to take on the big job to see if he can do it any better.','https://image.tmdb.org/t/p/original/f0QqG14SZYYZcV4VWykVc5w13dz.jpg','https://image.tmdb.org/t/p/original/vZh2ZoBMyAiH8vYGqadyMBX50Gc.jpg','7 wins & 9 nominations total','$242,829,261','PG-13')
,('Central Intelligence','15 Jun 2016',6.3,'107 minutes','English','Movie','Calvin Joyner was voted in high school the guy most likely to succeed. 20 years later he''s an accountant. As his high school reunion approaches, he tries to make contact with his old schoolmates. And someone named Bob Stone contacts him. He says that he was known as Robbie Weirdicht in school. Calvin remembers that he was picked on, as a matter of fact after an extremely nasty prank he left school. They agree to meet and Calvin is surprised by how much he has changed. Bob asks Calvin to help him out. He says yes and the next thing he knows some men burst into his home. They''re CIA, the one in charge is looking for Stone, she says he''s a rogue agent. When they can''t find Bob they leave. Later he approaches Calvin telling him, he is not a rogue agent, he''s trying to find a person known as the Black Badger who is planning to sell some information that in the wrong hands can be disastrous. so he needs Calvin''s help to stop him. Calvin''s not sure whom he should believe.','https://image.tmdb.org/t/p/original/7Ou0TRJLi72AwLEUlo7Kym4XuNB.jpg','https://image.tmdb.org/t/p/original/72TTH0QCKGiObXE7DyBOQTMkdGl.jpg','2 wins & 8 nominations total','$127,440,871','PG-13')
,('The Lego Batman Movie','17 Feb 2017',7.3,'104 minutes','English','Movie','There are big changes brewing in Gotham City, and if he wants to save the city from The Joker''s hostile takeover, Batman may have to drop the lone vigilante thing, try to work with others and maybe, just maybe, learn to lighten up.','https://image.tmdb.org/t/p/original/snGwr2gag4Fcgx2OGmH9otl6ofW.jpg','https://image.tmdb.org/t/p/original/mo1eLCJTp5JGGz2tKlW98KXpRo0.jpg','13 wins & 69 nominations total','$175,936,671','PG')
,('Anand','15 Oct 2004',8,'180 minutes','Telugu','Movie',NULL,'https://image.tmdb.org/t/p/original/nEy1ue2wOGPfGsgVAhRzurRo6Xt.jpg','https://image.tmdb.org/t/p/original/uQz3LYfBCQm0cBCGJe5FlHTe6Cu.jpg','9 wins & 1 nomination',NULL,'Not Rated')
,('Zombieland','02 Oct 2009',7.5,'88 minutes','English, Spanish, French','Movie','Searching for family. In the early twenty-first century, zombies have taken over America. A shy and college student in Texas has survived by following his 30 rules: like "look in the back seat," "double-tap," "avoid public restrooms." He decides to travel to Ohio to see if his parents are alive. He gets a ride with a savage, brutal zombie-killer headed for Florida, and soon they confront a young woman whose sister has been bitten by a zombie and wants to be put out of her suffering. The sisters were headed to an LA park with attractions they''ve heard is without a zombie.','https://image.tmdb.org/t/p/original/dUkAmAyPVqubSBNRjRqCgHggZcK.jpg','https://image.tmdb.org/t/p/original/oihWVx3imvRKujnGmSDYhfG1gI5.jpg','10 wins & 29 nominations total','$75,590,286','R')
,('Piku','08 May 2015',7.6,'123 minutes','Hindi','Movie',NULL,'https://image.tmdb.org/t/p/original/yo7EZWiLpLGhqs3YnlDGDBPjfTb.jpg','https://image.tmdb.org/t/p/original/uTyXPP72WPqqYnA9PjxApmFM3ux.jpg','40 wins & 34 nominations','$1,801,807','Not Rated')
,('Man of Steel','21 Jun 2013',7.1,'143 minutes','English','Movie','A young boy learns that he has extraordinary powers and is not of this Earth. As a young man, he journeys to discover where he came from and what he was sent here to do. But the hero in him must now emerge if he is to save the world from annihilation and become the symbol of hope for all mankind.','https://image.tmdb.org/t/p/original/dksTL9NXc3GqPBRHYHcy1aIwjS.jpg','https://image.tmdb.org/t/p/original/69EFgWWPFWbRNHmQgYdSnyJ94Ge.jpg','Nominated for 1 BAFTA Award7 wins & 46 nominations total','$291,045,518','PG-13')
,('Batman v Superman: Dawn of Justice','25 Mar 2016',6.5,'151 minutes','English','Movie','The general public is concerned over having Superman on their planet and letting the "Dark Knight" - Batman - pursue the streets of Gotham. While this is happening, a power-phobic Batman tries to attack Superman. Meanwhile, Superman tries to settle on a decision, and Lex Luthor, the criminal mastermind and millionaire, tries to use his own advantages to fight the "Man of Steel".','https://image.tmdb.org/t/p/original/5UsK3grJvtQrtzEgqNlDljJW96w.jpg','https://image.tmdb.org/t/p/original/5fX1oSGuYdKgwWmUTAN5MNSQGzr.jpg',NULL,NULL,NULL)
,('Zack Snyder''s Justice League','18 Mar 2021',7.9,'242 minutes','English, Icelandic, French','Movie','Determined to ensure Superman''s ultimate sacrifice was not in vain, Bruce Wayne aligns forces with Diana Prince with plans to recruit a team of metahumans to protect the world from an approaching threat of catastrophic proportions. The task proves more difficult than Bruce imagined, as each of the recruits must face the demons of their own pasts to transcend that which has held them back, allowing them to come together, finally forming an unprecedented league of heroes. Now united, Batman, Wonder Woman, Aquaman, Cyborg and The Flash may be too late to save the planet from Steppenwolf, DeSaad and Darkseid and their dreadful intentions.','https://image.tmdb.org/t/p/original/tnAuB8q5vv7Ax9UAEje5Xi4BXik.jpg','https://image.tmdb.org/t/p/original/pcDc2WJAYGJTTvRSEIpRZwM3Ola.jpg','5 wins & 6 nominations total',NULL,'R')
,('Alita: Battle Angel','05 Feb 2019',7.3,'122 minutes','English, Spanish','Movie','Alita is a creation from an age of despair. Found by the mysterious Dr. Ido while trolling for cyborg parts, Alita becomes a lethal, dangerous being. She cannot remember who she is, or where she came from. But to Dr. Ido, the truth is all too clear. She is the one being who can break the cycle of death and destruction left behind from Tiphares. But to accomplish her true purpose, she must fight and kill. And that is where Alita''s true significance comes to bear. She is an angel from heaven. She is an angel of death.','https://image.tmdb.org/t/p/original/xRWht48C2V8XNfzvPehyClOvDni.jpg','https://image.tmdb.org/t/p/original/jXDselREPq8TOVGM4dzBBUM7xVk.jpg','10 wins & 26 nominations total','$85,838,210','PG-13')
,('The Martian','02 Oct 2015',8,'144 minutes','English, Mandarin','Movie','During a manned mission to Mars, Astronaut Mark Watney is presumed dead after a fierce storm and left behind by his crew. But Watney has survived and finds himself stranded and alone on the hostile planet. With only meager supplies, he must draw upon his ingenuity, wit and spirit to subsist and find a way to signal to Earth that he is alive. Millions of miles away, NASA and a team of international scientists work tirelessly to bring "the Martian" home, while his crewmates concurrently plot a daring, if not impossible, rescue mission. As these stories of incredible bravery unfold, the world comes together to root for Watney''s safe return.','https://image.tmdb.org/t/p/original/3ndAx3weG6KDkJIRMCi5vXX6Dyb.jpg','https://image.tmdb.org/t/p/original/9pubUbDX3eKB6ZuKxbFgv4cBZrz.jpg','Nominated for 7 Oscars. 40 wins & 199 nominations total','$228,433,663','PG-13')
,('Meet Joe Black','13 Nov 1998',7.2,'178 minutes','English, Dutch','Movie','William Parrish (Sir Anthony Hopkins), media tycoon, loving father, and still a human being, is about to celebrate his 65th birthday. One morning, he is contacted by the inevitable, by hallucination, as he thinks. Later, Death enters his home and his life, personified in a man''s body: Joe Black (Brad Pitt) has arrived. His intention was to take William with him, but accidentally, Joe''s former host and William''s beautiful daughter Susan (Claire Forlani) have already met. Joe begins to develop certain interest in life on Earth, as well as in Susan, who has no clue with whom she''s flirting.','https://image.tmdb.org/t/p/original/fDPAjvfPMomkKF7cMRmL5Anak61.jpg','https://image.tmdb.org/t/p/original/o67MmFburfckl6iPa4DVkranLi3.jpg','3 wins & 6 nominations total','$44,619,100','PG-13')
,('Forrest Gump','06 Jul 1994',8.8,'142 minutes','English','Movie','Forrest Gump is a simple man with a low I.Q. but good intentions. He is running through childhood with his best and only friend Jenny. His ''mama'' teaches him the ways of life and leaves him to choose his destiny. Forrest joins the army for service in Vietnam, finding new friends called Dan and Bubba, he wins medals, creates a famous shrimp fishing fleet, inspires people to jog, starts a ping-pong craze, creates the smiley, writes bumper stickers and songs, donates to people and meets the president several times. However, this is all irrelevant to Forrest who can only think of his childhood sweetheart Jenny Curran, who has messed up her life. Although in the end all he wants to prove is that anyone can love anyone.','https://image.tmdb.org/t/p/original/arw2vcBveWOVZr6pxd9XTd1TdQa.jpg','https://image.tmdb.org/t/p/original/mzfx54nfDPTUXZOG48u4LaEheDy.jpg','Won 6 Oscars. 51 wins & 74 nominations total','$330,455,270','PG-13')
,('Rockstar','11 Nov 2011',7.8,'159 minutes','Hindi','Movie','The film follows Janardhan Jhakar in a series of flashbacks and flash forwards, how the small collage boy became an international rock sensation "Jordan". To chase his dreams of a rockstar, the wanna-be singer his counseled that music and feelings only come with pain. In the process of which, he meets Heer, a tough on the outside and popular college girl, the both become friends, and as time passes by his dreams of music fade away as they spend time together. When heer moves away, Janardhan is thrown out of his house because of family misunderstandings. As he bides his time at a local mosque, his passion for music comes back to life. He is soon signed by a record label, where he makes more enemies than friends, his tour takes him to Prague, where he is reunited with a married Heer. Things go awry when the two share an intimate moment, and Jordan his deported to India on trespassing charges filed by Heer''s husband. Now an angry painful and lonely JORDAN embarks on his journey to become a ROCKSTAR','https://image.tmdb.org/t/p/original/2LR5ManbBWmotbM0lYCJ1TVko9P.jpg','https://image.tmdb.org/t/p/original/auWqW0BMEytyMpwWvLXqQYTz1wn.jpg','40 wins & 39 nominations total','$986,697','Not Rated')
,('Slumdog Millionaire','13 Mar 2009',8,'120 minutes','English, Hindi','Movie','The story of Jamal Malik, an 18 year-old orphan from the slums of Mumbai, who is about to experience the biggest day of his life. With the whole nation watching, he is just one question away from winning a staggering 20 million rupees on India''s Kaun Banega Crorepati? (2000) (Who Wants To Be A Millionaire?) But when the show breaks for the night, police arrest him on suspicion of cheating; how could a street kid know so much? Desperate to prove his innocence, Jamal tells the story of his life in the slum where he and his brother grew up, of their adventures together on the road, of vicious encounters with local gangs, and of Latika, the girl he loved and lost. Each chapter of his story reveals the key to the answer to one of the game show''s questions. Each chapter of Jamal''s increasingly layered story reveals where he learned the answers to the show''s seemingly impossible quizzes. But one question remains a mystery: what is this young man with no apparent desire for riches really doing on the game show? When the new day dawns and Jamal returns to answer the final question, the Inspector and sixty million viewers are about to find out. At the heart of its storytelling lies the question of how anyone comes to know the things they know about life and love.','https://image.tmdb.org/t/p/original/5leCCi7ZF0CawAfM5Qo2ECKPprc.jpg','https://image.tmdb.org/t/p/original/1wZoVT9RJsZmNjg8CecXqSgFUd9.jpg','Won 8 Oscars. 153 wins & 133 nominations total','$141,319,928','R')
,('Crazy, Stupid, Love.','28 Jul 2011',7.4,'118 minutes','English','Movie','Cal (Steve Carell) and Emily (Julianne Moore) have the perfect life together living the American dream... until Emily asks for a divorce. Now Cal, Mr Husband, has to navigate the single scene with a little help from his professional bachelor friend Jacob Palmer (Ryan Gosling). Make that a lot of help...','https://image.tmdb.org/t/p/original/p4RafgAPk558muOjnBMHhMArjS2.jpg','https://image.tmdb.org/t/p/original/vyrCniZsrXZAW08eECKIp1BMLPh.jpg','5 wins & 23 nominations total','$84,379,584','PG-13')
,('Silver Linings Playbook','21 Nov 2012',7.7,'122 minutes','English, Hindi','Movie','Against medical advice and without the knowledge of her husband Pat Solatano Sr., caring Dolores Solatano discharges her adult son, Pat Solatano Jr., from a Maryland mental health institution after his minimum eight-month court ordered stint. The condition of the release includes Pat Jr. moving back in with his parents in their Philadelphia home. Although Pat Jr.''s institutionalization was due to him beating up the lover of his wife Nikki, he was diagnosed with bipolar disorder. Nikki has since left him and has received a restraining order against him. Although he is on medication (which he doesn''t take because of the way it makes him feel) and has mandatory therapy sessions, Pat Jr. feels like he can manage on the outside solely by healthy living and looking for the "silver linings" in his life. His goals are to get his old job back as a substitute teacher, but more importantly reunite with Nikki. He finds there are certain instances where he doesn''t cope well; however, no less so than some others who have never been institutionalized, such as his Philadelphia Eagles obsessed father who has resorted to being a bookie to earn a living, his best friend Ronnie who quietly seethes over the control wielded by his wife Veronica, and Veronica''s widowed sister, Tiffany Maxwell, a girl with problems of her own. In their fragile mental states, Pat Jr. and Tiffany embark on a love/hate friendship based primarily on what help the other can provide in achieving their individual goals. But they may reevaluate their goals as their relationship progresses.','https://image.tmdb.org/t/p/original/y7iOVneBvITlBdhy6tVqXVOa1Js.jpg','https://image.tmdb.org/t/p/original/92Ppi99LkZFHUgpxwYRxcKZVZNH.jpg','Won 1 Oscar. 89 wins & 148 nominations total','$132,092,958','R')
,('Punch-Drunk Love','25 Oct 2002',7.3,'95 minutes','English','Movie','Barry Egan hates himself and hates his life. The only male among eight siblings, Barry is treated poorly by his overbearing sisters. Despite owning his own business, he has gotten nowhere in life largely because of his insecurities. He leads a solitary life, which allows him to hide his violent outbursts that occur when he''s frustrated. His solitude however allows him to think, he stumbling upon a scheme to travel the world on a pittance, travel which he has never done. Concurrently, he meets two people who pull him in two different directions. The first is Lena Leonard, a friend of his sister Elizabeth. Barry is slow to realize that Lena is attracted to him, he making her make all the first moves. Lena is eventually able to get Barry out of his shell, she who sticks around despite his obvious problems. His burgeoning relationship and thus new life with Lena is threatened by the second, "Georgia", who he contacted in an effort to alleviate his loneliness. Georgia and her "band of brothers" do whatever they can get get out of Barry what they want, no matter the price to Barry.','https://image.tmdb.org/t/p/original/htYp4yqFu4rzBEIa6j9jP8miDm3.jpg','https://image.tmdb.org/t/p/original/l9WzjwHwF7I2DwCtK8DXVQExGjH.jpg','14 wins & 37 nominations total','$17,844,216','R')
,('Dan in Real Life','26 Oct 2007',6.8,'98 minutes','English','Movie','Single father Dan Burns dedicates his life to his children, but one day he meets Marie at a bookstore. They get to know each other, but then Dan finds out that Marie is actually dating his brother, Mitch.','https://image.tmdb.org/t/p/original/wJkkkG4ditqNzlua0oJzoaICGiz.jpg','https://image.tmdb.org/t/p/original/uAa5bEEQvLxAqbKcOk9rGPLkZrJ.jpg','4 nominations','$47,642,963','PG-13')
,('A Walk to Remember','25 Jan 2002',7.3,'101 minutes','English','Movie','In Beaufort, North Carolina, a prank on a student goes wrong and puts him in the hospital. Landon, a popular student with no plans for the future, is held responsible and forced to join after-school, community service activities, which include starring as the lead in the play. Participating in these activities is Jamie Sullivan, the reverend''s daughter who has great ambitions and nothing in common with Landon. When Landon decides he wants to take his activities seriously, he asks Jamie for help and begins to spend most of his time with her. He starts to like her, which he did not expect to happen. They develop a relationship, much to the chagrin of Landon''s old popular friends and Jamie''s strict, reverend father. But when a heart-breaking secret becomes known that puts their relationship to the test, it is then that Landon and Jamie realize the true meaning of love and fate.','https://image.tmdb.org/t/p/original/8lUYMvWdHA0Q0k5F76RQCeCBUkA.jpg','https://image.tmdb.org/t/p/original/1FWSGQZo6HAzqO52VHL405VxJ07.jpg','4 wins & 2 nominations','$41,281,092','PG')
,('Barbie','19 Jul 2023',6.8,'114 minutes','English, Spanish','Movie','Barbie the Doll lives in bliss in the matriarchal society of Barbieland feeling good about her role in the world in the various iterations of Barbies over the years showing girls that play with her that they can be whatever and whoever they want. On the flip side, Ken, who also lives in Barbieland, is unnoticed except in relation to Barbie, which is however one step above any other doll in Barbieland, such as Allan. One day, Stereotypical Barbie begins to have feelings which she''s never experienced which leads to her world seemingly falling apart. Weird Barbie determines that there is something happening in the real world with someone playing with her being unhappy leading to Stereotypical Barbie reluctantly heading to the real world to rectify what is happening with that person, she first needing to find this person. Much to Barbie''s chagrin, the original Ken, Beach Ken, tags along with her to the real world in he needing to survive in her presence. Beyond their mission to find this person, Barbie and Ken will find the real world unlike anything they know in Barbieland, especially in it being a male dominated society. While Barbie still has to find out what''s going on that made her come to the real world, Ken is finding a newfound control which he wants to bring back to Barbieland. If he is able to do so, the role of Barbie in the real world may be forever changed. On top of everything, executives at Mattel, primarily white men, discover that a "real life" Barbie and Ken doll have infiltrated the real world, their mission to capture the pair, but especially Barbie, to put them/her back in their/her place, namely in a manufacturer''s sealed box.','https://image.tmdb.org/t/p/original/iuFNMS8U5cb6xfzi51Dbkovj7vM.jpg','https://image.tmdb.org/t/p/original/mbYTRO33LJAgpCMrIn9ibiWHbMH.jpg','Won 1 Oscar. 208 wins & 437 nominations total','$636,238,421','PG-13')
,('Barfi!','13 Sep 2012',8.1,'151 minutes','Hindi','Movie','Set in the 1970s in a pretty corner of India, Barfi. is the story of three young people who learn that love can neither be defined nor contained by society''s norms of normal and abnormal. Barfi, a hearing and speech impaired boy falls in love with Shruti. In spite of her deep affection for Barfii, Shruti gives into societal and parental pressure to marry a ''normal'' man and lead a ''normal'' life. Many years later their paths cross once again when Barfi, now in love with Jhilmil, is on the run from the police. Barfi is desperately seeking Jhilmil, who has gone missing. Shruti''s realization that Jhilmil is autistic makes her recognize that true love is really blind. Caught in a cat and mouse game, in the search for the girl Barfi loves, Shruti realizes that she is still in love with him.','https://image.tmdb.org/t/p/original/3dMcxaL0oD79nc31FQK5D7YZ3Kv.jpg','https://image.tmdb.org/t/p/original/dVUBKQMehxVnEQMpcOPw3OQqNMF.jpg','68 wins & 40 nominations total','$2,804,874','Not Rated')
,('Les Misérables','22 Feb 2013',7.5,'158 minutes','English','Movie','Jean Valjean, known as Prisoner 24601, is released from prison and breaks parole to create a new life for himself while evading the grip of the persistent Inspector Javert. Set in post-revolutionary France, the story reaches resolution against the background of the June Rebellion.','https://image.tmdb.org/t/p/original/6CuzBs2Lb8At7qQr64mLXg2RYRb.jpg','https://image.tmdb.org/t/p/original/jd3Z2sAPDavjRxFhfOak6kCrUIG.jpg','Won 3 Oscars. 85 wins & 177 nominations total','$149,260,140','PG-13')
,('21 Jump Street','14 Mar 2012',7.2,'109 minutes','English','Movie','In 2005, Schmidt and Jenko are high school students, one an honor roll geek, the other a cool, athletic underachiever. By 2012, they are rookie cops, paired together, on bike patrol yearning to make arrests. After a screw up, they''re sent undercover back to high school to find the source of a dangerous synthetic drug. They mix up their names, and Schmidt gets the no-brainer classes where he auditions for Peter Pan and falls in love with Wendy; Jenko gets AP classes where he falls in with high-achieving dweebs. This second chance at high school gives Schmidt delusions of grandeur, which threaten the operation. Can they sort out their relationship as they stumble onto the bad guys?','https://image.tmdb.org/t/p/original/8v3Sqv9UcIUC4ebmpKWROqPBINZ.jpg','https://image.tmdb.org/t/p/original/lxCUDgZ54myV7goBrkpFoHRt9Ms.jpg','11 wins & 21 nominations total','$138,447,667','R')
,('Superbad','17 Aug 2007',7.6,'113 minutes','English','Movie','Seth and Evan are best friends, inseparable, navigating the last weeks of high school. Usually shunned by the popular kids, Seth and Evan luck into an invitation to a party, and spend a long day, with the help of their nerdy friend Fogell, trying to score enough alcohol to lubricate the party and inebriate two girls, Jules and Becca, so they can kick-start their sex lives and go off to college with a summer full of experience and new skills. Their quest is complicated by Fogell''s falling in with two inept cops who both slow and assist the plan. If they do get the liquor to the party, what then? Is sex the only rite of passage at hand?','https://image.tmdb.org/t/p/original/ek8e8txUyUwd2BNqj6lFEerJfbq.jpg','https://image.tmdb.org/t/p/original/mFt3dvxKugYPgUQgV16M6K2nEtc.jpg','11 wins & 24 nominations','$121,463,226','R')
,('Easy A','16 Sep 2010',7,'92 minutes','English','Movie','After a little white lie about losing her virginity gets out, a clean cut high school girl sees her life paralleling Hester Prynne''s in "The Scarlet Letter," which she is currently studying in school - until she decides to use the rumor mill to advance her social and financial standing.','https://image.tmdb.org/t/p/original/v5f1qO6NJnxWgONgkYg21TW39DT.jpg','https://image.tmdb.org/t/p/original/30rvmoEBqovm723agDJ3QddWXcY.jpg','9 wins & 22 nominations total','$58,401,464','PG-13')
,('Uncut Gems','25 Dec 2019',7.4,'135 minutes','English, Hebrew','Movie','Howard Ratner is a charismatic New York City jeweler always on the lookout for the next big score. When he makes a series of high-stakes bets that could lead to the windfall of a lifetime, Howard must perform a precarious high-wire act, balancing business, family, and encroaching adversaries on all sides, in his relentless pursuit of the ultimate win.','https://image.tmdb.org/t/p/original/6XN1vxHc7kUSqNWtaQKN45J5x2v.jpg','https://image.tmdb.org/t/p/original/5qTZGBHJNq6riBliYtOnH4yUN6x.jpg','28 wins & 96 nominations total','$50,023,780','R')
,('Begin Again','03 Jul 2014',7.4,'104 minutes','English','Movie','Gretta (Keira Knightley) and her long-time boyfriend Dave (Adam Levine) are college sweethearts and songwriting partners who decamp for New York when he lands a deal with a major label. But the trappings of his new-found fame soon tempt Dave to stray, and a reeling, lovelorn Gretta is left on her own. Her world takes a turn for the better when Dan (Mark Ruffalo), a disgraced record-label exec, stumbles upon her performing on an East Village stage and is immediately captivated by her raw talent. From this chance encounter emerges an enchanting portrait of a mutually transformative collaboration, set to the soundtrack of a summer in New York City.','https://image.tmdb.org/t/p/original/qx4HXHXt528hS4rwePZbZo20xqZ.jpg','https://image.tmdb.org/t/p/original/Z3ocAumcK9Iooc9BMlu7wE7XX9.jpg','Nominated for 1 Oscar. 5 wins & 18 nominations total','$16,170,632','R')
,('Zodiac','02 Mar 2007',7.7,'157 minutes','English','Movie','A serial killer in the San Francisco Bay Area taunts police with his letters and cryptic messages. We follow the investigators and reporters in this lightly fictionalized account of the true 1970s'' case as they search for the murderer, becoming obsessed with the case. Based on Robert Graysmith''s book, the movie''s focus is the lives and careers of the detectives and newspaper people.','https://image.tmdb.org/t/p/original/6YmeO4pB7XTh8P8F960O1uA14JO.jpg','https://image.tmdb.org/t/p/original/elzsm8vIpYVh0s6ztFEKElqgXqe.jpg','3 wins & 71 nominations total','$33,080,084','R')
,('Free Guy','11 Aug 2021',7.1,'115 minutes','English, Japanese, German','Movie','In the extremely popular video game, Free City, a NPC named Guy learns the true nature of his existence when he meets the girl of his dreams, a human player. This player''s interactions with Guy has massive affects on him, the game, and real world as they play it.','https://image.tmdb.org/t/p/original/6PFJrMvoQwBxQITLYHj09VeJ37q.jpg','https://image.tmdb.org/t/p/original/rOJb0yQOCny0bPjg8bCLw8DyAD7.jpg','Nominated for 1 Oscar. 5 wins & 29 nominations total','$121,626,598','PG-13')
,('Guardians of the Galaxy Vol. 3','03 May 2023',7.9,'150 minutes','English, Russian','Movie','In Marvel Studios "Guardians of the Galaxy Vol. 3" our beloved band of misfits are looking a bit different these days. Peter Quill, still reeling from the loss of Gamora, must rally his team around him to defend the universe along with protecting one of their own. A mission that, if not completed successfully, could quite possibly lead to the end of the Guardians as we know them.','https://image.tmdb.org/t/p/original/r2J02Z2OpNTctfOSN1Ydgii51I3.jpg','https://image.tmdb.org/t/p/original/5YZbUmjbMa3ClvSW1Wj3D6XGolb.jpg','Nominated for 1 Oscar. 11 wins & 88 nominations total','$358,995,815','PG-13')
,('Date Night','07 Apr 2010',6.3,'88 minutes','English, Hebrew','Movie','Phil and Claire Foster are a couple who have been married for several years. Their days consists of them taking care of their children and going to work and coming home and going to bed. But they find time to have a date night wherein they go out and spend some time together. When another couple they know announce that they''re separating because they''re in a rut, Phil feels that he and Claire could be too. So when date night comes Phil decides to do something different. So they go into the city and try to get into a new popular restaurant. But when it''s full and still wanting to do this, Phil decides to take the reservation of a couple who doesn''t show up. While they''re having dinner two men approach them and instructs them to stand up and go with them. They think the men are with the restaurant and want to talk to them about taking someone else''s reservation. But it appears the couple whose reservation they took crossed someone and the two men work for this person. The men are after something, but whatever it is they don''t have it.','https://image.tmdb.org/t/p/original/ucEWhj32KEDcFKHMWVeu8r1Q4ld.jpg','https://image.tmdb.org/t/p/original/hZm2bAT9fB4EL93flj1fnrYXHdp.jpg','4 wins & 8 nominations total','$98,711,404','PG-13')
,('Tag','14 Jun 2018',6.5,'100 minutes','English, Spanish','Movie','Childhood friends Jerry (Jeremy Renner), Callahan (Jon Hamm), Randy (Jake Johnson), Sable (Hannibal Buress) and Hoagie (Ed Helms) have been competing in the same game of tag for 30 years. When Jerry gets married, he attempts to retire from the intense annual game without ever being "it," causing the other four to band together and go to extreme lengths to finally tag him. Directed by Jeff Tomsic. Inspired by the Wall Street Journal article "It Takes Planning, Caution to Avoid Being It."','https://image.tmdb.org/t/p/original/eXXpuW2xaq5Aen9N5prFlARVIvr.jpg','https://image.tmdb.org/t/p/original/n8UzZ7gd3lmsBeYAH539pfnwGwu.jpg','3 nominations total','$54,730,625','R')
,('The Nice Guys','03 Jun 2016',7.4,'116 minutes','English, German','Movie','In 1977 Los Angeles, single father and licensed PI Holland March (Gosling) is hired to investigate the apparent suicide of famous porn star Misty Mountains. As the trail leads him to track down a girl named Amelia (Qualley), he encounters less-licensed and less-hands-off private eye Jackson Healey (Russell Crowe) and his brass knuckles, both hired by the young hippie. However, the situation takes a turn for the worse when Amelia vanishes and it becomes apparent that March wasn''t the only interested party. As both men are forced to team up, they need to take on a world filled with eccentric goons, strippers dressed as mermaids, and even a possible government conspiracy.','https://image.tmdb.org/t/p/original/clq4So9spa9cXk3MZy2iMdqkxP2.jpg','https://image.tmdb.org/t/p/original/oLp6ueqQXNWvWCFwrb6tXDnH0Ye.jpg','9 wins & 34 nominations total','$36,261,763','R')
,('The Big Sick','13 Jul 2017',7.5,'120 minutes','English, Urdu','Movie','Kumail (Kumail Nanjiani), in the middle of becoming a budding stand-up comedian, meets Emily (Zoe Kazan). Meanwhile, a sudden illness sets in forcing Emily to be put into a medically-induced coma. Kumail must navigate being a comedian, dealing with tragic illness, and placating his family''s desire to let them fix him up with a spouse, while contemplating and figuring out who he really is and what he truly believes.','https://image.tmdb.org/t/p/original/9fJTT8pBxxQsFILJHTtHhdYFr77.jpg','https://image.tmdb.org/t/p/original/fYI8WX2DquAHMqwh5mOMxc6RU5j.jpg','Nominated for 1 Oscar. 19 wins & 101 nominations total','$42,873,127','R')
,('Oppenheimer','21 Jul 2023',8.3,'180 minutes','English, German, Italian, Dutch','Movie','A dramatization of the life story of J. Robert Oppenheimer, the physicist who had a large hand in the development of the atomic bomb, thus helping end World War 2. We see his life from university days all the way to post-WW2, where his fame saw him embroiled in political machinations.','https://image.tmdb.org/t/p/original/8Gxv8gSFCU0XGDykEGv7zR1n2ua.jpg','https://image.tmdb.org/t/p/original/neeNHeXjMF5fXoCJRsOmkNGC7q.jpg','Won 7 Oscars. 361 wins & 371 nominations total','$330,050,270','R')
,('The Pianist','17 Sep 2002',8.5,'150 minutes','English, German, Russian','Movie','In this adaptation of the autobiography "The Pianist: The Extraordinary True Story of One Man''s Survival in Warsaw, 1939-1945," Wladyslaw Szpilman, a Polish Jewish radio station pianist, sees Warsaw change gradually as World War II begins. Szpilman is forced into the Warsaw Ghetto, but is later separated from his family during Operation Reinhard. From this time until the concentration camp prisoners are released, Szpilman hides in various locations among the ruins of Warsaw.','https://image.tmdb.org/t/p/original/2hFvxCCWrTmCYwfy7yum0GKRi3Y.jpg','https://image.tmdb.org/t/p/original/dVr11o9or7AS8AMPfwjSpEU83iU.jpg','Won 3 Oscars. 57 wins & 74 nominations total','$32,590,750','R')
,('Marriage Story','28 Nov 2019',7.9,'137 minutes','English, Spanish','Movie','After several unsuccessful marital mediation sessions and fruitless attempts to make it work, Charlie, a talented theatre director from New York City, and Nicole, a former movie actress from Los Angeles, want to call it quits. However, divorce is never easy, especially after ten years of marriage and an eight-year-old boy. As slick and absurdly costly lawyers step in, mutual accusations and bitter resentment threaten an amicable separation. And now, things have got even messier. But why do the painful wounds of passion run so deep? Is love always meant to last forever in the end?','https://image.tmdb.org/t/p/original/2JRyCKaRKyJAVpsIHeLvPw5nHmw.jpg','https://image.tmdb.org/t/p/original/wu7nX9BQwDAnDdQutINEP2LfTSR.jpg','Won 1 Oscar. 129 wins & 276 nominations total',NULL,'R')
,('Babylon','23 Dec 2022',7.1,'189 minutes','English, Spanish, Italian, Cantonese, French, Hungarian, German','Movie','An original epic set in 1920s Los Angeles led by Brad Pitt, Margot Robbie and Diego Calva, with an ensemble cast including Jovan Adepo, Li Jun Li and Jean Smart. A tale of outsized ambition and outrageous excess, it traces the rise and fall of multiple characters during an era of unbridled decadence and depravity in early Hollywood.','https://image.tmdb.org/t/p/original/wjOHjWCUE0YzDiEzKv8AfqHj3ir.jpg','https://image.tmdb.org/t/p/original/5fxTB08O7CW1hAcN2MWOKodp1h1.jpg','Nominated for 3 Oscars. 46 wins & 161 nominations total','$15,351,455','R')
,('Manchester by the Sea','17 Nov 2016',7.8,'137 minutes','English','Movie','Lee Chandler is a brooding, irritable loner who works as a handyman for a Boston apartment block. One damp winter day he gets a call summoning him to his hometown, north of the city. His brother''s heart has given out suddenly, and he''s been named guardian to his 16-year-old nephew. As if losing his only sibling and doubts about raising a teenager weren''t enough, his return to the past re-opens an unspeakable tragedy.','https://image.tmdb.org/t/p/original/o9VXYOuaJxCEKOxbA86xqtwmqYn.jpg','https://image.tmdb.org/t/p/original/wj2nLa0vfS0SLu2vJ6ABTRhMrok.jpg','Won 2 Oscars. 128 wins & 268 nominations total','$47,695,371','R')
,('Birdman or (The Unexpected Virtue of Ignorance)','13 Nov 2014',7.7,'119 minutes','English','Movie','Actor Riggan Thomson is most famous for his movie role from over twenty years ago of the comic book superhero Birdman in the blockbuster movie of the same name and its two equally popular sequels. His association with the role took over his life, where Birdman is more renowned than "Riggan Thomson" the actor. Now past middle age, Riggan is trying to establish himself as a true artist by writing, directing, starring in and co-producing with his best friend Jake what is his Broadway debut, an adaptation of Raymond Carver''s story, What We Talk About When We Talk About Love. He is staking his name, what little artistic reputation that comes with that name and his life savings on the project, and as such will do anything needed to make the play a success. As he and Jake go through the process of the previews toward opening night, Riggan runs into several issues: needing to find a replacement for the integral supporting male role the night before the first preview; hiring the talented Broadway name, Mike Shiner, for that role, Mike who ends up being difficult to work with and who may end up overshadowing Riggan in the play; having to deal potentially with a lawsuit based on one of his actions to ensure success; needing to be there for his daughter, Sam, who he has hired to be his production assistant and who has just come out of drug rehab; and pleasing the New York Times critic, Tabitha Dickinson, who wants to use any excuse to give the play a scathing review which in turn would close the show after the opening night performance. But Riggan''s biggest problem may be his own insecurities, which are manifested by him constantly hearing what he believes to be the truth from the voice of his Birdman character, who he often battles both internally and externally.','https://image.tmdb.org/t/p/original/rHUg2AuIuLSIYMYFgavVwqt1jtc.jpg','https://image.tmdb.org/t/p/original/s0OrExdg7i3RLR7oqzHRk4q2kL4.jpg',NULL,NULL,'TV-G')
,('500 Days of Summer','07 Aug 2009',7.7,'95 minutes','English, French, Swedish','Movie','After it looks as if she''s left his life for good this time, Tom Hansen reflects back on the just over one year that he knew Summer Finn. For Tom, it was love at first sight when she walked into the greeting card company where he worked, she the new administrative assistant. Soon, Tom knew that Summer was the woman with whom he wanted to spend the rest of his life. Although Summer did not believe in relationships or boyfriends - in her assertion, real life will always ultimately get in the way - Tom and Summer became more than just friends. Through the trials and tribulations of Tom and Summer''s so-called relationship, Tom could always count on the advice of his two best friends, McKenzie and Paul. However, it is Tom''s adolescent sister, Rachel, who is his voice of reason. After all is said and done, Tom is the one who ultimately has to make the choice to listen or not.','https://image.tmdb.org/t/p/original/qXAuQ9hF30sQRsXf40OfRVl0MJZ.jpg','https://image.tmdb.org/t/p/original/1M2i4Mxd03elGOTmEkIvqrHfmyS.jpg',NULL,NULL,'Not Rated')
,('The Prestige','19 Oct 2006',8.5,'130 minutes','English','Movie','Set in London in the 1800s, two rival magicians read each others diary containing the secrets of their magic tricks and personal life. As we go back in time when the diaries were written, both magicians become obsessed with their rival''s best trick. The tricks, as shown to the audience, look the same, but neither magician can figure out how his opponent does it.','https://image.tmdb.org/t/p/original/bdN3gXuIZYaJP7ftKK2sU0nPtEA.jpg','https://image.tmdb.org/t/p/original/yCnJT53HMXAK87xzPAdjdYhZ3JE.jpg','Nominated for 2 Oscars. 6 wins & 44 nominations total','$53,089,891','PG-13')
,('Jojo Rabbit','24 Oct 2019',7.9,'108 minutes','English, German','Movie','A World War II satire that follows a lonely German boy named Jojo (Roman Griffin Davis) whose world view is turned upside down when he discovers his single mother (Scarlett Johansson) is hiding a young Jewish girl (Thomasin McKenzie) in their attic. Aided only by his idiotic imaginary friend, Adolf Hitler (Taika Waititi), Jojo must confront his blind nationalism.','https://image.tmdb.org/t/p/original/7GsM4mtM0worCtIVeiQt28HieeN.jpg','https://image.tmdb.org/t/p/original/oT2DbUVEUc1AIgBBJwVl3hm0ID6.jpg','Won 1 Oscar. 52 wins & 192 nominations total','$33,370,906','PG-13')
,('Get Out','24 Feb 2017',7.8,'104 minutes','English, Swahili','Movie','Chris and his girlfriend Rose go upstate to visit her parents for the weekend. At first, Chris reads the family''s overly accommodating behavior as nervous attempts to deal with their daughter''s interracial relationship, but as the weekend progresses, a series of increasingly disturbing discoveries lead him to a truth that he never could have imagined.','https://image.tmdb.org/t/p/original/tFXcEccSQMf3lfhfXKSU9iRBpa3.jpg','https://image.tmdb.org/t/p/original/o8dPH0ZSIyyViP6rjRX1djwCUwI.jpg','Won 1 Oscar. 154 wins & 214 nominations total','$176,196,665','R')
,('Baby Driver','28 Jun 2017',7.5,'113 minutes','English, American Sign Language','Movie','Baby is a young and partially hearing impaired getaway driver who can make any wild move while in motion with the right track playing. It''s a critical talent he needs to survive his indentured servitude to the crime boss, Doc, who values his role in his meticulously planned robberies. However, just when Baby thinks he is finally free and clear to have his own life with his new girlfriend, Debora, Doc coerces him back for another job. Now saddled with a crew of thugs too violently unstable to keep to Doc''s plans, Baby finds himself and everything he cares for in terrible danger. To survive and escape the coming maelstrom, it will take all of Baby''s skill, wits and daring, but even on the best track, can he make it when life is forcing him to face the music?','https://image.tmdb.org/t/p/original/rmnQ9jKW72bHu8uKlMjPIb2VLMI.jpg','https://image.tmdb.org/t/p/original/oVD3ClJBoomSQHtnJPAlMfes8YD.jpg','Nominated for 3 Oscars. 43 wins & 66 nominations total','$107,825,862','R')
,('The Social Network','01 Oct 2010',7.8,'120 minutes','English, French','Movie','On a fall night in 2003, Harvard undergrad and computer programming genius Mark Zuckerberg sits down at his computer and heatedly begins working on a new idea. In a fury of blogging and programming, what begins in his dorm room soon becomes a global social network and a revolution in communication. A mere six years and 500 million friends later, Mark Zuckerberg is the youngest billionaire in history... but for this entrepreneur, success leads to both personal and legal complications.','https://image.tmdb.org/t/p/original/n0ybibhJtQ5icDqTp8eRytcIHJx.jpg','https://image.tmdb.org/t/p/original/cq9N64ucEtfIc3eMxNr1VzY9LH9.jpg','Won 3 Oscars. 174 wins & 188 nominations total','$96,962,694','PG-13')
,('Inglourious Basterds','19 Aug 2009',8.4,'153 minutes','English, German, French, Italian','Movie','In German-occupied France, young Jewish refugee Shosanna Dreyfus witnesses the slaughter of her family by Colonel Hans Landa. Narrowly escaping with her life, she plots her revenge several years later when German war hero Fredrick Zoller takes a rapid interest in her and arranges an illustrious movie premiere at the theater she now runs. With the promise of every major Nazi officer in attendance, the event catches the attention of the "Basterds", a group of Jewish-American guerrilla soldiers led by the ruthless Lt. Aldo Raine. As the relentless executioners advance and the conspiring young girl''s plans are set in motion, their paths will cross for a fateful evening that will shake the very annals of history.','https://image.tmdb.org/t/p/original/7sfbEnaARXDDhKm0CZ7D7uc2sbo.jpg','https://image.tmdb.org/t/p/original/wIqOKSfTi1LDWUjeEqe5UKXY1TD.jpg','Won 1 Oscar. 134 wins & 173 nominations total','$120,540,719','R')
,('Lady Bird','01 Dec 2017',7.4,'94 minutes','English, Spanish','Movie','Christine "Lady Bird" McPherson is a high-school senior from the "wrong side of the tracks". She longs for adventure, sophistication, and opportunity, but finds little of that in her Sacramento Catholic high school. Her senior year improves: she finds her first romance, participates in the school play, and--most importantly--applies for college.','https://image.tmdb.org/t/p/original/gl66K7zRdtNYGrxyS2YDUP5ASZd.jpg','https://image.tmdb.org/t/p/original/pcWxKfFNCznTKYy0E8M9nG1cwL4.jpg','Nominated for 5 Oscars. 124 wins & 228 nominations total','$48,958,273','R')
,('10 Things I Hate About You','31 Mar 1999',7.3,'97 minutes','English, French','Movie','Adapted from William Shakespeare''s play "The Taming of the Shrew," 10 Things I Hate About You starts off with Cameron, new student at Padua High, sitting in the office of the quirky guidance counselor Ms. Perky. He is then shown around the school by Michael, who will become his best friend. During his tour is when Cameron first sees Bianca Stratford, a beautiful sophomore with one problem: she isn''t allowed to date. And neither is her "shrew" sister, Katarina, a senior who loves indie rock and feminist prose and hates conformity. But Kat and Bianca''s father alters his house rule: now, Bianca can date... as long as Kat has a date, too. Now, in order for Cameron to date Bianca, he has to find someone to date Kat. So Michael helps him enlist the help of pretty-boy/jerk/model Joey Donner, tricking him into thinking that *he* will get to take Bianca out if he pays someone to take out Kat. His choice: Patrick Verona, a bad-boy with a mysterious reputation--some say he ate a live duck once, others that he lit a state trooper on fire, and even more claim that he had a brief porn career. Will Patrick win Kat''s heart? Will Cameron win Bianca''s? Or will everything hit the fan...?','https://image.tmdb.org/t/p/original/ujERk3aKABXU3NDXOAxEQYTHe9A.jpg','https://image.tmdb.org/t/p/original/yvPbncYhMu9FfTjDhq0N5lgnVkO.jpg','2 wins & 13 nominations total','$38,178,166','PG-13')
,('Scott Pilgrim vs. the World','12 Aug 2010',7.5,'112 minutes','English','Movie','Scott Pilgrim plays in a band which aspires to success. He dates Knives Chau, a high-school girl five years younger, and he hasn''t recovered from being dumped by his former girlfriend, now a success with her own band. When Scott falls for Ramona Flowers, he has trouble breaking up with Knives and tries to romance Ramona. As if juggling two women wasn''t enough, Ramona comes with baggage: seven ex-lovers, with each of whom Scott must do battle to the death in order to win Ramona.','https://image.tmdb.org/t/p/original/g5IoYeudx9XBEfwNL0fHvSckLBz.jpg','https://image.tmdb.org/t/p/original/7W9xm2YTq54rfLFimIniMrywShv.jpg','18 wins & 66 nominations total','$33,525,605','PG-13')
,('Inception','11 Sep 2010',8.8,'148 minutes','English, Japanese, French','Movie','Dom Cobb is a skilled thief, the absolute best in the dangerous art of extraction, stealing valuable secrets from deep within the subconscious during the dream state, when the mind is at its most vulnerable. Cobb''s rare ability has made him a coveted player in this treacherous new world of corporate espionage, but it has also made him an international fugitive and cost him everything he has ever loved. Now Cobb is being offered a chance at redemption. One last job could give him his life back but only if he can accomplish the impossible, inception. Instead of the perfect heist, Cobb and his team of specialists have to pull off the reverse: their task is not to steal an idea, but to plant one. If they succeed, it could be the perfect crime. But no amount of careful planning or expertise can prepare the team for the dangerous enemy that seems to predict their every move. An enemy that only Cobb could have seen coming.','https://image.tmdb.org/t/p/original/ljsZTbVsrQSqZgWeep2B1QiDKuh.jpg','https://image.tmdb.org/t/p/original/8ZTVqvKDQ8emSGUEMjsS4yHAwrp.jpg','Won 4 Oscars. 159 wins & 220 nominations total','$292,587,330','PG-13')
,('The Grand Budapest Hotel','26 Feb 2014',8.1,'99 minutes','English, French, German','Movie','This movie recounts the adventures of M. Gustave, a legendary concierge at a famous European hotel between the wars, and Zero Moustafa, the lobby boy who becomes his most trusted friend. The story involves the theft and recovery of a priceless Renaissance painting and the battle for an enormous family fortune - all against the backdrop of a suddenly and dramatically changing continent.','https://image.tmdb.org/t/p/original/eWdyYQreja6JGCzqHWXpWHDrrPo.jpg','https://image.tmdb.org/t/p/original/jK65srQczOKTpW62wPxwwKztGgE.jpg','Won 4 Oscars. 135 wins & 227 nominations total','$59,301,324','R')
,('The Dark Knight','16 Jul 2008',9,'152 minutes','English, Mandarin','Movie','Set within a year after the events of Batman Begins (2005), Batman, Lieutenant James Gordon, and new District Attorney Harvey Dent successfully begin to round up the criminals that plague Gotham City, until a mysterious and sadistic criminal mastermind known only as "The Joker" appears in Gotham, creating a new wave of chaos. Batman''s struggle against The Joker becomes deeply personal, forcing him to "confront everything he believes" and improve his technology to stop him. A love triangle develops between Bruce Wayne, Dent, and Rachel Dawes.','https://image.tmdb.org/t/p/original/qJ2tW6WMUDux911r6m7haRef0WH.jpg','https://image.tmdb.org/t/p/original/oOv2oUXcAaNXakRqUPxYq5lJURz.jpg','Won 2 Oscars. 164 wins & 165 nominations total','$534,987,076','PG-13')
,('Eternal Sunshine of the Spotless Mind','19 Mar 2004',8.3,'108 minutes','English','Movie','Much to his surprise, timid Joel Barish is shocked to discover that the love of his life, sparky Clementine, has had him erased from her memory. As a result, hurt and angry, Joel wants to pay her back in the same coin, going as far as to undergo a painless but intricate medical procedure to do the same. However, poor Joel is utterly unaware that darkness is an essential part of the light. And as the once-cherished recollections of Clementine gradually fade away, giving way to a soulless black void, something unexpected happens. Now Joel has second thoughts, toying with the idea of stopping the irreversible process. Who said ignorance is bliss?','https://image.tmdb.org/t/p/original/5MwkWH9tYHv3mV9OdYTMR5qreIz.jpg','https://image.tmdb.org/t/p/original/W1ffLQGHoxfAOq0ZYdPtJlvAdb.jpg','Won 1 Oscar. 73 wins & 111 nominations total','$34,400,301','R')
,('Spider-Man: Into the Spider-Verse','12 Dec 2018',8.4,'117 minutes','English, Spanish','Movie','Phil Lord and Christopher Miller, the creative minds behind The Lego Movie and 21 Jump Street, bring their unique talents to a fresh vision of a different Spider-Man Universe, with a groundbreaking visual style that''s the first of its kind. "Spider-Man(TM): Into the Spider-Verse" introduces Brooklyn teen Miles Morales (Shameik Moore), and the limitless possibilities of the Spider-Verse, where more than one can wear the mask.','https://image.tmdb.org/t/p/original/iiZZdoQBEYBv6id8su7ImL0oCbD.jpg','https://image.tmdb.org/t/p/original/8mnXR9rey5uQ08rZAvzojKWbDQS.jpg','Won 1 Oscar. 85 wins & 61 nominations total','$190,241,310','PG')
,('Interstellar','14 Nov 2014',8.7,'169 minutes','English','Movie','In the near future around the American Midwest, Cooper, an ex-science engineer and pilot, is tied to his farming land with his daughter Murph and son Tom. As devastating sandstorms ravage Earth''s crops, the people of Earth realize their life here is coming to an end as food begins to run out. Eventually stumbling upon a N.A.S.A. base 6 hours from Cooper''s home, he is asked to go on a daring mission with a few other scientists into a wormhole because of Cooper''s scientific intellect and ability to pilot aircraft unlike the other crew members. In order to find a new home while Earth decays, Cooper must decide to either stay, or risk never seeing his children again in order to save the human race by finding another habitable planet.','https://image.tmdb.org/t/p/original/gEU2QniE6E77NI6lCU6MxlNBvIx.jpg','https://image.tmdb.org/t/p/original/8sNiAPPYU14PUepFNeSNGUTiHW.jpg','Won 1 Oscar. 44 wins & 148 nominations total','$203,227,580','PG-13')
,('tick, tick... BOOM!','12 Nov 2021',7.5,'115 minutes','English','Movie','The film follows Jon (Andrew Garfield), a young theater composer who''s waiting tables at a New York City diner in 1990 while writing what he hopes will be the next great American musical. Days before he''s due to showcase his work in a make-or-break performance, Jon is feeling the pressure from everywhere: from his girlfriend Susan, who dreams of an artistic life beyond New York City; from his friend Michael, who has moved on from his dream to a life of financial security; amidst an artistic community being ravaged by the AIDS epidemic. With the clock ticking, Jon is at a crossroads and faces the question everyone must reckon with: What are we meant to do with the time we have?','https://image.tmdb.org/t/p/original/DPmfcuR8fh8ROYXgdjrAjSGA0o.jpg','https://image.tmdb.org/t/p/original/rKe3MR2u4ZZ0y9uKivzKJRrqBCe.jpg','Nominated for 2 Oscars. 38 wins & 116 nominations total',NULL,'PG-13')
,('La La Land','09 Dec 2016',8,'128 minutes','English, Cantonese','Movie','Aspiring actress serves lattes to movie stars in between auditions and jazz musician Sebastian scrapes by playing cocktail-party gigs in dingy bars. But as success mounts, they are faced with decisions that fray the fragile fabric of their love affair, and the dreams they worked so hard to maintain in each other threaten to rip them apart.','https://image.tmdb.org/t/p/original/uDO8zWDhfWwoFdKS4fzkUJt0Rf0.jpg','https://image.tmdb.org/t/p/original/nlPCdZlHtRNcF6C9hzUH4ebmV1w.jpg','Won 6 Oscars. 242 wins & 307 nominations total','$151,101,803','PG-13')
,('Nope','21 Jul 2022',6.8,'130 minutes','English, Spanish','Movie','After random objects falling from the sky result in the death of their father, ranch-owning siblings OJ and Emerald Haywood attempt to capture video evidence of an unidentified flying object with the help of tech salesman Angel Torres and documentarian Antlers Holst.','https://image.tmdb.org/t/p/original/AcKVlWaNVVVFQwro3nLXqPljcYA.jpg','https://image.tmdb.org/t/p/original/5N8LOeRzt7LcZIhPbNVaCsVOPdT.jpg','43 wins & 181 nominations total','$123,277,080','R')
,('Bullet Train','03 Aug 2022',7.3,'127 minutes','English, Japanese, Spanish, Russian','Movie','Unlucky assassin Ladybug (Brad Pitt) is determined to do his job peacefully after one too many gigs has gone off the rails. Fate has other plans, however: Ladybug''s latest mission puts him on a collision course with lethal adversaries from around the globe--all with connected, yet conflicting, objectives--on the world''s fastest train. The end of the line is just the beginning in this non-stop thrill-ride through modern-day Japan.','https://image.tmdb.org/t/p/original/j8szC8OgrejDQjjMKSVXyaAjw3V.jpg','https://image.tmdb.org/t/p/original/y2Ca1neKke2mGPMaHzlCNDVZqsK.jpg','2 wins & 20 nominations total','$103,368,602','R')
,('Everything Everywhere All at Once','24 Mar 2022',7.8,'139 minutes','English, Mandarin, Cantonese','Movie','With her laundromat teetering on the brink of failure and her marriage to wimpy husband Waymond on the rocks, overworked Evelyn Wang struggles to cope with everything, including a tattered relationship with her judgmental father and daughter. And as if facing a gloomy midlife crisis wasn''t enough, Evelyn must brace herself up for an unpleasant meeting with an impersonal bureaucrat: Deirdre, the shabbily dressed IRS auditor. However, as the stern agent loses patience, an inexplicable multiverse rift becomes an eye-opening exploration of parallel realities. Will Evelyn jump down the rabbit hole? But how many stars are in the universe? Can weary Evelyn fathom the irrepressible force of possibilities, tap into newfound powers, and prevent an evil entity from destroying the thin, countless layers of the unseen world?','https://image.tmdb.org/t/p/original/u68AjlvlutfEIcpmbYpKcdi09ut.jpg','https://image.tmdb.org/t/p/original/ss0Os3uWJfQAENILHZUdX8Tt1OC.jpg','Won 7 Oscars. 411 wins & 398 nominations total','$77,191,785','R')
,('The Banshees of Inisherin','20 Oct 2022',7.7,'114 minutes','English, Latin','Movie','Set on a remote island off the west coast of Ireland, THE BANSHEES OF INISHERIN follows lifelong friends Padraic (Colin Farrell) and Colm (Brendan Gleeson), who find themselves at an impasse when Colm unexpectedly puts an end to their friendship. A stunned Padraic, aided by his sister Siobhan (Kerry Condon) and troubled young islander Dominic (Barry Keoghan), endeavours to repair the relationship, refusing to take no for an answer. But Padraic''s repeated efforts only strengthen his former friend''s resolve and when Colm delivers a desperate ultimatum, events swiftly escalate, with shocking consequences.','https://image.tmdb.org/t/p/original/4yFG6cSPaCaPhyJ1vtGOtMD1lgh.jpg','https://image.tmdb.org/t/p/original/1vXD5HXqkhvsXFHE7KmCPZGPR1e.jpg','Nominated for 9 Oscars. 148 wins & 375 nominations total','$10,582,266','R')
,('Knives Out','29 Nov 2019',7.9,'130 minutes','English','Movie','When renowned crime novelist Harlan Thrombey (Christopher Plummer) is found dead at his estate just after his 85th birthday, the inquisitive and debonair Detective Benoit Blanc (Daniel Craig) is mysteriously enlisted to investigate. From Harlan''s disfunctional family to his devoted staff, Blanc sifts through a web of red herrings and self-serving lies to uncover the truth behind Harlan''s untimely death.','https://image.tmdb.org/t/p/original/pThyQovXQrw2m0s9x82twj48Jq4.jpg','https://image.tmdb.org/t/p/original/4HWAQu28e2yaWrtupFPGFkdNU7V.jpg','Nominated for 1 Oscar. 52 wins & 116 nominations total','$165,363,234','PG-13')
,('Chungking Express','14 Jul 1994',7.9,'102 minutes','Cantonese, Mandarin','Movie','Wong Kar-Wai''s movie about two love-struck cops is filmed in impressionistic splashes of motion and color. The first half deals with Cop 223, who has broken up with his girlfriend of five years. He purchases a tin of pineapples with an expiration date of May 1 each day for a month. By the end of that time, he feels that he will either be rejoined with his love or that it too will have expired forever. The second half shows Cop 663 dealing with his breakup with his flight attendant girlfriend. He talks to his apartment furnishings until he meets a new girl at a local lunch counter.','https://image.tmdb.org/t/p/original/43I9DcNoCzpyzK8JCkJYpHqHqGG.jpg','https://image.tmdb.org/t/p/original/vuglA60RqvpHK9rIcG8sXaiWw1L.jpg','8 wins & 19 nominations total','$600,200','PG-13')
,('The Pursuit of Happyness','15 Dec 2006',8,'117 minutes','English, Cantonese','Movie','Based on a true story about a man named Christopher Gardner. Gardner has invested heavily in a device known as a "bone density scanner". He feels like he has it made selling these devices. However, they do not sell well as they are marginally better than x-ray at a much higher price. As Gardner works to make ends meet, his wife leaves him and he loses his apartment. Forced to live out in the streets with his son, Gardner continues to sell bone density scanners while concurrently taking on an unpaid internship as a stockbroker, with slim chances for advancement to a paid position. Before he can receive pay, he needs to outshine the competition through 6 months of training, and to sell his devices to stay afloat.','https://image.tmdb.org/t/p/original/lBYOKAMcxIvuk9s9hMuecB9dPBV.jpg','https://image.tmdb.org/t/p/original/5jhG1lTgV0MS6tDkBMQSSitttTT.jpg','Nominated for 1 Oscar. 12 wins & 26 nominations total','$163,566,459','PG-13')
,('The Substance','18 Sep 2024',7.3,'141 minutes','English','Movie','Have you ever dreamed of a better version of yourself? You. Only better in every way. Seriously. You''ve got to try this new product. It''s called the Substance. It changed my life. It generates another you. A new, younger, more beautiful, more perfect you. And there''s only one rule: you share time. One week for you. One week for the new you. Seven days each. A perfect balance. Easy, right? If you respect the balance...what could possibly go wrong?','https://image.tmdb.org/t/p/original/cGm2qnmXx9tFabmzEIkJZjCJdQd.jpg','https://image.tmdb.org/t/p/original/t98L9uphqBSNn2Mkvdm3xSFCQyi.jpg','Won 1 Oscar. 133 wins & 278 nominations total','$17,539,788','R')
,('Joyland','18 Nov 2022',7.6,'126 minutes','Punjabi, Urdu','Movie','As the happily-patriarchal Rana family longs for the birth of a baby boy, the youngest of the Rana men secretly joins an erotic dance theatre and finds himself falling for a fiercely ambitious trans starlet. Their impossible love story slowly illuminates the entire Rana family''s desire for a sexual rebellion.','https://image.tmdb.org/t/p/original/7InKwVFgvIgfwuPKd0C3R9OeoN7.jpg','https://image.tmdb.org/t/p/original/aO4DsNW3YwldPl9CyChkWFLbFV8.jpg','18 wins & 19 nominations','$306,500',NULL)
,('Circus of Life','24 Jan 2020',7.6,'138 minutes','Urdu, Punjabi','Movie','A devout Muslim who writes composes, and even records hymns praising the Prophet, Muhammad Rahat Khawaja is a respected elderly man who works in real estate and takes care of his bedridden wife. One day, he attends the wedding of a friend''s son, where he inadvertently shows off a dance in front of his friends and family. His dance gets recorded and then uploaded to all social media platforms, which then also gets broadcasted on television. And the chaos begins to ensue in his quiet life. Other than his wife, no one else in the world understands Rahat''s circumstance. His daughters and neighbors criticize him, his friends turn their backs on him. Circus of Life provides a calm and detailed picture of challenging issues in a strict Muslim society and the search for the identity of an elderly man who gradually comes to realize his "minoritiness."','https://image.tmdb.org/t/p/original/in9zaAGE9aIw0DKtagJvsfqkknl.jpg','https://image.tmdb.org/t/p/original/r5oWoNpe4Ctd3MXXBVIQsmK0lP3.jpg',NULL,NULL,NULL)
,('The Godfather','24 Mar 1972',9.2,'175 minutes','English, Italian, Latin','Movie','The Godfather "Don" Vito Corleone is the head of the Corleone mafia family in New York. He is at the event of his daughter''s wedding. Michael, Vito''s youngest son and a decorated WWII Marine is also present at the wedding. Michael seems to be uninterested in being a part of the family business. Vito is a powerful man, and is kind to all those who give him respect but is ruthless against those who do not. But when a powerful and treacherous rival wants to sell drugs and needs the Don''s influence for the same, Vito refuses to do it. What follows is a clash between Vito''s fading old values and the new ways which may cause Michael to do the thing he was most reluctant in doing and wage a mob war against all the other mafia families which could tear the Corleone family apart.','https://image.tmdb.org/t/p/original/3bhkrj58Vtu7enYsRolD1fZdja1.jpg','https://image.tmdb.org/t/p/original/tmU7GeKVybMWFButWEGl2M4GeiP.jpg','Won 3 Oscars. 31 wins & 31 nominations total','$136,381,073','R')
,('Pulp Fiction','10 Sep 1994',8.9,'154 minutes','English, Spanish, French','Movie','Jules Winnfield (Samuel L. Jackson) and Vincent Vega (John Travolta) are two hitmen who are out to retrieve a suitcase stolen from their employer, mob boss Marsellus Wallace (Ving Rhames). Wallace has also asked Vincent to take his wife Mia (Uma Thurman) out a few days later when Wallace himself will be out of town. Butch Coolidge (Bruce Willis) is an aging boxer who is paid by Wallace to lose his fight. The lives of these seemingly unrelated people are woven together comprising of a series of funny, bizarre and uncalled-for incidents.','https://image.tmdb.org/t/p/original/vQWk5YBFWF4bZaofAbv0tShwBvQ.jpg','https://image.tmdb.org/t/p/original/suaEOtk1N1sgg2MTM7oZd2cfVp3.jpg','Won 1 Oscar. 69 wins & 72 nominations total','$107,928,762','R')
,('October','12 Apr 2018',7.6,'115 minutes','Hindi','Movie','Dan (Varun Dhawan) is living the life of any carefree 21 year old, revolving around a bunch of friends and fellow hotel interns who feed off each other''s everyday moments, their ups and downs. Shiuli (Banita Sandhu) is one such intern at the same hotel, who at times is at a receiving end of Dan''s audaciousness. Life goes on until a sudden turn of events smashes Dan and Shiuli''s lives together, into a bond that''s unlike any 21 year olds. The emotional connection between them goes through a metamorphoses that brings out a form of love that''s unlike any other eventually leading to an internal awakening. October is not a Love Story, but rather a story about love.','https://image.tmdb.org/t/p/original/nHUBPUwXkHinq2rIXnnCHsPylD1.jpg','https://image.tmdb.org/t/p/original/6Z3e850z4TNBUo4OviVRfwjK5O3.jpg',NULL,NULL,NULL)
,('Dune: Part One','22 Oct 2021',8,'155 minutes','English, Mandarin','Movie','A mythic and emotionally charged hero''s journey, "Dune" tells the story of Paul Atreides, a brilliant and gifted young man born into a great destiny beyond his understanding, who must travel to the most dangerous planet in the universe to ensure the future of his family and his people. As malevolent forces explode into conflict over the planet''s exclusive supply of the most precious resource in existence-a commodity capable of unlocking humanity''s greatest potential-only those who can conquer their fear will survive.','https://image.tmdb.org/t/p/original/d5NXSklXo0qyIYkgV94XAgMIckC.jpg','https://image.tmdb.org/t/p/original/jYEW5xZkZk2WTrdbMGAPFuBqbDc.jpg',NULL,NULL,'TV-14')
,('The Gentlemen','01 Jan 2020',7.8,'113 minutes','English, Russian, Spanish, Chinese','Movie','A talented American graduate of Oxford, using his unique skills, and audacity, creates a marijuana empire using the estates of impoverished British aristocrats. However, when he tries to sell his empire to a fellow American billionaire, a chain of events unfolds, involving blackmail, deception, mayhem and murder between street thugs, Russian oligarchs, Triad gangsters and gutter journalists.','https://image.tmdb.org/t/p/original/jtrhTYB7xSrJxR1vusu99nvnZ1g.jpg','https://image.tmdb.org/t/p/original/tintsaQ0WLzZsTMkTiqtMB3rfc8.jpg',NULL,NULL,NULL)
,('Up','28 May 2009',8.3,'96 minutes','English','Movie','As a boy, Carl Fredricksen wanted to explore South America and find the forbidden Paradise Falls. About 64 years later he gets to begin his journey along with Boy Scout Russell by lifting his house with thousands of balloons. On their journey, they make many new friends including a talking dog, and figure out that someone has evil plans. Carl soon realizes that this evildoer is his childhood idol.','https://image.tmdb.org/t/p/original/mFvoEwSfLqbcWwFsDjQebn9bzFe.jpg','https://image.tmdb.org/t/p/original/hGGC9gKo7CFE3fW07RA587e5kol.jpg',NULL,NULL,NULL)
,('Dragon Ball Daima',NULL,7.9,'25 minutes','Japanese','Series','Dragon Ball Daima revolves around Goku and his friends, who are turned into children due to a conspiracy. To make things right, they plan to head to a new world. The series is presented as a great Action adventure in an unknown and mysterious place.','https://image.tmdb.org/t/p/original/8tpLyWAmYhe1D0d62gV3CWFDu2f.jpg','https://image.tmdb.org/t/p/original/oUmWLyeko3kYdUr8DBLIsxwcugl.jpg',NULL,NULL,'TV-14')
,('Dragon Ball GT',NULL,6.8,'24 minutes','Japanese','Series',NULL,'https://image.tmdb.org/t/p/original/rLHhDpv6rrhuzBjNzaMRNv2fng.jpg','https://image.tmdb.org/t/p/original/vuaeYGDzKPATvJ1dP6AAziyriNl.jpg',NULL,NULL,'TV-PG')
,('My Hero Academia',NULL,8.2,'24 minutes','Japanese, English','Series','In a world populated with superhumans, the superhero-loving Izuku Midoriya is without power. However, after the Quirkless dreamer Izuku inherits the powers of the world''s best superhero, All Might, his hopes of becoming the top hero are now possible. Once enrolled in the high school for heroes, U.A., Izuku soon discovers being a hero is much more complicated than it appears.','https://image.tmdb.org/t/p/original/phuYuzqWW9ru8EA3HVjE9W2Rr3M.jpg','https://image.tmdb.org/t/p/original/6wSSyRNeF9vBJ1h29nuw3vG9hZI.jpg','29 wins & 44 nominations total',NULL,'TV-14')
,('Attack on Titan',NULL,9.1,'24 minutes','Japanese, English','Series','Humans are nearly exterminated by giant creatures called Titans. Titans are typically several stories tall, seem to have no intelligence, devour human beings and, worst of all, seem to do it for the pleasure rather than as a food source. A small percentage of humanity survived by walling themselves in a land protected by extremely high walls, even taller than the biggest of titans. Flash forward to the present, and mankind has not seen a titan in over 100 years. One day, 10 year old Eren and his childhood friend Mikasa witness something horrific as the city walls are destroyed by a colossal titan that appears out of thin air. As the smaller titans flood the city, the two kids watch in horror as Eren''s mother is eaten alive. Eren vows that he will murder every single titan and take revenge for all of mankind.','https://image.tmdb.org/t/p/original/hTP1DtLGFamjfu8WqjnuQdP1n4i.jpg','https://image.tmdb.org/t/p/original/rqbCbjB19amtOtFQbb3K2lgm2zv.jpg','40 wins & 88 nominations total',NULL,'TV-MA')
,('Naruto',NULL,8.4,'24 minutes','Japanese','Series','It is about a boy named Naruto Uzumaki, with a demon fox sealed within him. He is shunned and hated by both villagers and other ninja, and is labeled a freak and a danger to all around him. He overcomes these challenges through hard work and perseverance, and slowly earns the respect and appreciation of others. He finds friendship and love in those who believed in him when others would not, and together they work as a team to overcome the challenges they face and become true ninjas. It is a story of hope and love, of overcoming impossible odds, and of finding the value and beauty in even the darkest of times.','https://image.tmdb.org/t/p/original/xppeysfvDKVx775MFuH8Z9BlpMk.jpg','https://image.tmdb.org/t/p/original/xuJ0F9RfKvVSJNDg2usurQ9WvY5.jpg','1 win total',NULL,'TV-PG')
,('One Piece',NULL,9,'24 minutes','Japanese','Series','There once lived a pirate named Gol D. Roger. He obtained wealth, fame, and power to earn the title of Pirate King. When he was captured and about to be executed, he revealed that his treasure called One Piece was hidden somewhere at the Grand Line. This made all people set out to search and uncover the One Piece treasure, but no one ever found the location of Gol D. Roger''s treasure, and the Grand Line was too dangerous a place to overcome. Twenty-two years after Gol D. Roger''s death, a boy named Monkey D. Luffy decided to become a pirate and search for Gol D. Roger''s treasure to become the next Pirate King.','https://image.tmdb.org/t/p/original/cMD9Ygz11zjJzAovURpO75Qg7rT.jpg','https://image.tmdb.org/t/p/original/4Mt7WHox67uJ1yErwTBFcV8KWgG.jpg','6 wins & 13 nominations total',NULL,'TV-14')
,('Bleach',NULL,8.2,'24 minutes','Japanese','Series','High school student Kurosaki Ichigo is unlike any ordinary kid. Why? Because he can see ghosts. Ever since a young age, he''s been able to see spirits from the afterlife. Ichigo''s life completely changes one day when he and his two sisters are attacked by an evil, hungry and tormented spirit known as a Hollow. Right in the nick of time, Ichigo and his siblings are aided by a Shinigami (Death God) named Kuchiki Rukia, whose responsibility it is to send good spirits (Pluses) to the afterlife known as Soul Society, and to purify Hollows and send them up to Soul Society. But during the fight against the Hollow, Rukia is injured and must transfer her powers to Ichigo. With this newly acquired power, so begins Kurosaki Ichigo''s training and duty as a Shinigami to maintain the balance between the world of the living and the world of the dead...','https://image.tmdb.org/t/p/original/2EewmxXe72ogD0EaWM8gqa0ccIw.jpg','https://image.tmdb.org/t/p/original/o0NsbcIvsllg6CJX0FBFY8wWbsn.jpg','2 wins & 8 nominations total',NULL,'TV-14')
,('Breaking Bad',NULL,9.5,'45 minutes','English, Spanish','Series','Walter White is a chemistry genius but works as a chemistry teacher at a high school in Albuquerque, New Mexico. His life drastically changes when he''s diagnosed with stage III terminal lung cancer and given a prognosis of two years to live. To ensure that his pregnant wife and disabled teenage son have a financial future, he uses his chemistry background to create and sell the world''s finest crystal methamphetamine. To sell his signature "blue meth," he teams up with Jesse Pinkman, a former student of his. The meth makes them very rich very quickly, but it attracts the attention of his DEA brother-in-law, Hank. As Walter and Jesse''s status in the drug world escalates, Walter becomes a dangerous criminal, and Jesse becomes a hot-headed salesman. Hank is always hot on his tail, forcing Walter to devise new ways to cover his tracks.','https://image.tmdb.org/t/p/original/ineLOBPG8AZsluYwnkMpHRyu7L.jpg','https://image.tmdb.org/t/p/original/9faGSFi5jam6pDWGNd0p8JcJgXQ.jpg','Won 16 Primetime Emmys. 169 wins & 269 nominations total',NULL,'TV-MA')
,('Better Call Saul',NULL,9,'45 minutes','English, Spanish, Vietnamese','Series','Before Saul Goodman, he was Jimmy McGill. And if you''re calling Jimmy, you''re in real trouble. The prequel to "Breaking Bad" follows small-time attorney, Jimmy McGill, as he transforms into Walter White''s morally challenged lawyer, Saul Goodman.','https://image.tmdb.org/t/p/original/zjg4jpK1Wp2kiRvtt5ND0kznako.jpg','https://image.tmdb.org/t/p/original/hPea3Qy5Gd6z4kJLUruBbwAH8Rm.jpg','Nominated for 53 Primetime Emmys. 72 wins & 333 nominations total',NULL,'TV-MA')
,('After Life',NULL,8.4,'30 minutes','English','Series','Tony''s life is turned upside-down after his wife dies of breast cancer. He contemplates suicide, but instead decides to live long enough to punish the world for his wife''s death by saying and doing whatever he wants. Although he thinks of this as his "superpower," his plan is undermined when everyone around him tries to make him a better person.','https://image.tmdb.org/t/p/original/6eJf4h9XcvqK64vbx27EFlLVURm.jpg','https://image.tmdb.org/t/p/original/AeVleqwWBMkiliVw6lFZICTTMiO.jpg','5 wins & 8 nominations total',NULL,'TV-MA')
,('Ted Lasso',NULL,8.8,'30 minutes','English','Series','In a shock development struggling English Premier League team AFC Richmond hires American football coach Ted Lasso as its new manager. Lasso knows nothing about soccer/football. With unshakable enthusiasm and positivity he rises to the challenge but little known to him there are forces within the club that don''t want him to succeed.','https://image.tmdb.org/t/p/original/5fhZdwP1DVJ0FyVH6vrFdHwpXIn.jpg','https://image.tmdb.org/t/p/original/8rDij8tYynUfu2hMVXynAp2pSjY.jpg','Won 13 Primetime Emmys. 94 wins & 246 nominations total',NULL,'TV-MA')
,('Money Heist',NULL,8.2,'60 minutes','Spanish, Russian, Serbian, English','Series','To carry out the biggest heist in history, a mysterious man called The Professor recruits a band of eight robbers who have a single characteristic: none of them has anything to lose. Five months of seclusion memorizing every step, every detail, every probability culminate in eleven days locked up in the National Coinage and Stamp Factory of Spain, surrounded by police forces and with dozens of hostages in their power, to find out whether their suicide wager will lead to everything or nothing.','https://image.tmdb.org/t/p/original/reEMJA1uzscCbkpeRJeTT2bjqUp.jpg','https://image.tmdb.org/t/p/original/xGexTKCJDkl12dTW4YCBDXWb1AD.jpg','38 wins & 45 nominations total',NULL,'TV-MA')
,('Squid Game',NULL,8,'60 minutes','Korean, English, Urdu','Series','A story of people who fail at life for various reasons, but suddenly receive a mysterious invitation to participate in a survival game to win more than 38 million US dollars. The game takes place on an isolated island and the participants are locked up until there is a final winner. The story incorporates popular Korean children''s games from the 1970s and 1980s, such as squid game, the literal translation of its Korean name, which is a type of tag where offense and defense use a squid-shaped board drawn in the dirt.','https://image.tmdb.org/t/p/original/1QdXdRYfktUSONkl1oD5gc6Be0s.jpg','https://image.tmdb.org/t/p/original/2meX1nMdScFOoV4370rqHWKmXhY.jpg','Won 6 Primetime Emmys. 46 wins & 92 nominations total',NULL,'TV-MA')
,('The Office',NULL,9,'22 minutes','English, Spanish, German, French','Series','A mediocre paper company in the hands of Scranton, PA branch manager Michael Scott. This mockumentary follows the everyday lives of the manager and the employees he "manages." The crew follows the employees around 24/7 and captures their quite humorous and bizarre encounters as they will do what it takes to keep the company thriving.','https://image.tmdb.org/t/p/original/dg9e5fPRRId8PoBE0F6jl5y85Eu.jpg','https://image.tmdb.org/t/p/original/mLyW3UTgi2lsMdtueYODcfAB9Ku.jpg','Won 5 Primetime Emmys. 59 wins & 211 nominations total',NULL,'TV-14')
,('Friends',NULL,8.9,'22 minutes','English, Spanish, Italian, French, Dutch, Hebrew','Series','Ross Geller, Rachel Green, Monica Geller, Joey Tribbiani, Chandler Bing, and Phoebe Buffay are six twenty-somethings living in New York City. Over the course of 10 years and seasons, these friends go through life lessons, family, love, drama, friendship, and comedy.','https://image.tmdb.org/t/p/original/2koX1xLkpTQM4IZebYvKysFW1Nh.jpg','https://image.tmdb.org/t/p/original/l0qVZIpXtIo7km9u5Yqh0nKPOr5.jpg','Won 6 Primetime Emmys. 79 wins & 231 nominations total',NULL,'TV-14')
,('Stranger Things',NULL,8.6,'60 minutes','English','Series','In a small town where everyone knows everyone, a peculiar incident starts a chain of events that leads to a child''s disappearance, which begins to tear at the fabric of an otherwise-peaceful community. Dark government agencies and seemingly malevolent supernatural forces converge on the town, while a few of the locals begin to understand that more is going on than meets the eye.','https://image.tmdb.org/t/p/original/uOOtwVbSr4QDjAGIifLDwpb2Pdl.jpg','https://image.tmdb.org/t/p/original/2MaumbgBlW1NoPo3ZJO38A6v7OS.jpg','Won 12 Primetime Emmys. 114 wins & 323 nominations total',NULL,'TV-14')
,('Game of Thrones',NULL,9.2,'60 minutes','English','Series','In the mythical continent of Westeros, several powerful families fight for control of the Seven Kingdoms. As conflict erupts in the kingdoms of men, an ancient enemy rises once again to threaten them all. Meanwhile, the last heirs of a recently usurped dynasty plot to take back their homeland from across the Narrow Sea.','https://image.tmdb.org/t/p/original/1XS1oqL89opfnbLl8WnZY1O1uJx.jpg','https://image.tmdb.org/t/p/original/zZqpAXxVSBtxV9qPBcscfXBcL2w.jpg','Won 59 Primetime Emmys. 398 wins & 655 nominations total',NULL,'TV-MA')
,('House of the Dragon',NULL,8.3,'50 minutes','English','Series','The Targaryen dynasty is at the absolute apex of its power, with more than 10 dragons under their yoke. Most empires crumble from such heights. In the case of the Targaryens, their slow fall begins when King Viserys breaks with a century of tradition by naming his daughter Rhaenyra heir to the Iron Throne. But when Viserys later fathers a son, the court is shocked when Rhaenyra retains her status as his heir, and seeds of division sow friction across the realm.','https://image.tmdb.org/t/p/original/oxmdHR5Ka28HAJuMmS2hk5K6QQY.jpg','https://image.tmdb.org/t/p/original/etj8E2o0Bud0HkONVQPjyCkIvpv.jpg','Won 1 Primetime Emmy. 16 wins & 90 nominations total',NULL,'TV-MA')
,('Peaky Blinders',NULL,8.7,'60 minutes','English, Romanian, Irish, Italian, Yiddish, French','Series','Thomas Shelby and his brothers return to Birmingham after serving in the British Army during WWI. Shelby and his gang, the Peaky Blinders, control the city of Birmingham. However, Shelby''s ambitions extend beyond Birmingham, as he plans to build on the business empire he''s created, and dispatch anyone who gets in his way.','https://image.tmdb.org/t/p/original/vUUqzWa2LnHIVqkaKVlVGkVcZIW.jpg','https://image.tmdb.org/t/p/original/or7wKwv1IT6LEOktt395O5qi7e.jpg','Won 1 BAFTA Award25 wins & 56 nominations total',NULL,'TV-MA')
,('Black Mirror',NULL,8.7,'60 minutes','English','Series','Set in a world only minutes from our own, "Black Mirror", a UK and USA non-hosted anthology series; unveils how modern technologies can backfire and be used against their makers, every episode set in a slightly different reality with different characters combating different types of technologies.','https://image.tmdb.org/t/p/original/5UaYsGZOFhjFDwQh6GuLjjA1WlF.jpg','https://image.tmdb.org/t/p/original/38aCLy0BdFbOAIEfuDladoITHN0.jpg','Won 6 Primetime Emmys. 46 wins & 135 nominations total',NULL,'TV-MA')
,('The Crown',NULL,8.6,'60 minutes','English','Series','This show focuses on Queen Elizabeth II as a young newlywed faced with leading the world''s most famous monarchy while forging a relationship with legendary Prime Minister Sir Winston Churchill. The British Empire is in decline, the political world is in disarray, but a new era is dawning. Peter Morgan''s masterfully-researched scripts reveal the Queen''s private journey behind the public façade with daring frankness. Prepare to see into the coveted world of power and privilege behind the locked doors of Westminster and Buckingham Palace.','https://image.tmdb.org/t/p/original/1DDE0Z2Y805rqfkEjPbZsMLyPwa.jpg','https://image.tmdb.org/t/p/original/8VXhcrl5z2I1zEU9X3pkkNrZlD.jpg','Won 24 Primetime Emmys. 170 wins & 451 nominations total',NULL,'TV-MA')
,('Sherlock',NULL,9.1,'90 minutes','English','Series','In this modernized version of the Conan Doyle characters, using his detective plots, Sherlock Holmes lives in early-21st-century London and acts more cocky towards Scotland Yard''s detective inspector Lestrade because he''s actually less confident. Doctor Watson is now a fairly young veteran of the Afghan war, less adoring and more active.','https://image.tmdb.org/t/p/original/cIfGAkpvWD2zxHrXzhv3uptYbyV.jpg','https://image.tmdb.org/t/p/original/hmLTIRtVyTHShJl2Wb8LHmvUgJm.jpg','Won 9 Primetime Emmys. 95 wins & 185 nominations total',NULL,'TV-14')
,('Westworld',NULL,8.4,'60 minutes','English','Series','This science-fiction Western series from Jonathan Nolan and Lisa Joy was inspired by Michael Crichton''s Westworld (1973) and is set at a Wild-West theme park created by Dr. Robert Ford (Sir Anthony Hopkins) with human-like androids, where guests are encouraged to indulge their fantasies and desires.','https://image.tmdb.org/t/p/original/8MfgyFHf7XEboZJPZXCIDqqiz6e.jpg','https://image.tmdb.org/t/p/original/yGNnjoIGOdQy3douq60tULY8teK.jpg','Won 7 Primetime Emmys. 57 wins & 214 nominations total',NULL,'TV-MA')
,('True Detective',NULL,8.9,'60 minutes','English','Series','In 2012, Louisiana State Police Detectives Rust Cohle and Martin Hart are brought in to revisit a homicide case they worked in 1995. As the inquiry unfolds in present day through separate interrogations, the two former detectives narrate the story of their investigation, reopening unhealed wounds, and drawing into question their supposed solving of a bizarre ritualistic murder in 1995. The timelines braid and converge in 2012 as each man is pulled back into a world they believed they''d left behind. In learning about each other and their killer, it becomes clear that darkness lives on both sides of the law.','https://image.tmdb.org/t/p/original/cuV2O5ZyDLHSOWzg3nLVljp1ubw.jpg','https://image.tmdb.org/t/p/original/82qpvU7AzT9D8oC02fIceb5KAz8.jpg','Won 6 Primetime Emmys. 42 wins & 174 nominations total',NULL,'TV-MA')
,('The Boys',NULL,8.6,'60 minutes','English','Series','The world''s most powerful superheroes (''Supes'') are secretly bending society to its whims, until the underdog team ''The Boys'', victims of the ''Supes'', conjure up a plan to take down ''The Seven'' and ''Vought International'' once and for all. Fighting a never ending conspiracy of corporate espionage, deep-cutting secrets and nigh-Godly figures, ''The Boys'' will do whatever it takes to save the world from its corrupt ''superheroes'' before they become unstoppable--or die trying.','https://image.tmdb.org/t/p/original/2zmTngn1tYC1AvfnrFLhxeD82hz.jpg','https://image.tmdb.org/t/p/original/7cqKGQMnNabzOpi7qaIgZvQ7NGV.jpg','Won 1 Primetime Emmy. 23 wins & 90 nominations total',NULL,'TV-MA')
,('Fargo',NULL,8.8,'60 minutes','English, German, Korean, Spanish, American Sign Language, French, Ukrainian, Hebrew, Russian','Series','The all new "true crime" case of Fargo''s new chapter travels back to 1979 in Sioux Falls, South Dakota and Luverne, Minnesota, where a young State Police Officer Lou Solverson, recently back from Vietnam, investigates a case involving a local crime gang and a major Mob syndicate. Helping him piece things together is his father-in-law, Sheriff Hank Larsson. The investigation will lead them to a colorful cast of characters that includes Karl Weathers, the town lawyer of Luverne, Minnesota. A Korean War vet, Karl is a flowery drunk blessed with the gift of gab and the eloquence of a true con artist. Joe Bulo, the front man for the northern expansion of a Kansas City crime syndicate. The new face of corporate crime, Joe''s bringing a Walmart mentality to small town America. His number two is Mike Milligan. Part enforcer, part detective, Mike is always smiling - but the joke is usually on you. Bulo and his crew have their sights set on the Gerhardt crime family in Fargo, currently led by matriarch Floyd Gerhardt. With her husband at death''s door, Floyd takes over the family business, frustrating her eldest son, Dodd Gerhardt. An impatient hothead with a cruel streak to match his ambitions, Dodd can''t wait for both his parents to die so he can take over and expand their business from kingdom to empire. Bear Gerhardt is the middle son, an intimidatingly large man who, although inarticulate, is the most decent of his clan. Rye Gerhardt, the youngest of the Gerhardt clan, views himself as a big shot, but in reality he''s just a small dog who barks big.','https://image.tmdb.org/t/p/original/6U9CPeD8obHzweikFhiLhpc7YBT.jpg','https://image.tmdb.org/t/p/original/nDOIsgCYZqEMvomSR6t9QUIPZJS.jpg','Won 2 Oscars. 84 wins & 58 nominations total','$24,611,975','R')
,('Dark',NULL,8.7,'60 minutes','German','Series','The first German production from the world''s leading Internet TV Network is set in a present-day German town where the disappearance of two young children exposes the double lives and fractured relationships among four families. In 10 hour-long episodes, the story takes on a surprising twist that ties back to the same town in 1986.','https://image.tmdb.org/t/p/original/apbrbWs8M9lyOpJYU5WXrpFbk1Z.jpg','https://image.tmdb.org/t/p/original/3jDXL4Xvj3AzDOF6UH1xeyHW8MH.jpg','8 wins & 27 nominations total',NULL,'TV-MA')
,('Ozark',NULL,8.5,'60 minutes','English','Series','The Byrdes and their teenage kids Charlotte and Jonah look like, and mostly are, an ordinary family with ordinary lives. Except that husband/father Marty, a Chicago financial advisor, also serves as the top money-launderer for Mexico''s second-largest drug cartel. When things go awry, he must uproot his family from the skyscrapers of Chicago and relocate to the lazy lake region of the Missouri Ozarks.','https://image.tmdb.org/t/p/original/pCGyPVrI9Fzw6rE1Pvi4BIXF6ET.jpg','https://image.tmdb.org/t/p/original/gD830J0sf5gEeZvzkRVPdGxJmSR.jpg','Won 4 Primetime Emmys. 30 wins & 203 nominations total',NULL,'TV-MA')
,('Succession',NULL,8.8,'60 minutes','English','Series','The Roy family controls the biggest media and entertainment company in the world. As they fight for control of the company, and each other, their lack of morals is exposed at every turn. This family has no redeeming character values, and neither does any person attached to them. Watch them as they fight for the front seat on the bus to hell.','https://image.tmdb.org/t/p/original/z0XiwdrCQ9yVIr4O0pxzaAYRxdW.jpg','https://image.tmdb.org/t/p/original/bcdUYUFk8GdpZJPiSAas9UeocLH.jpg','Won 19 Primetime Emmys. 178 wins & 307 nominations total',NULL,'TV-MA')
,('Narcos',NULL,8.7,'50 minutes','English, Spanish','Series','Narcos tells the true-life story of the growth and spread of cocaine drug cartels across the globe and attendant efforts of law enforcement to meet them head on in brutal, bloody conflict. It centers around the notorious Colombian cocaine kingpin Pablo Escobar (Wagner Moura) and Steve Murphy (Holbrook), a DEA agent sent to Colombia on a U.S. mission to capture him and ultimately kill him.','https://image.tmdb.org/t/p/original/rTmal9fDbwh5F0waol2hq35U4ah.jpg','https://image.tmdb.org/t/p/original/bT7pArYmcE91iCTec5H7pjrVbSu.jpg','Nominated for 3 Primetime Emmys. 8 wins & 20 nominations total',NULL,'TV-MA')
,('Mindhunter',NULL,8.6,'60 minutes','English','Series','Two FBI agents, fighting the departmental stigma of backroom boys - those who try to complicate the status quo of simple Means, Motive, Opportunity (MMO) of crime-solving with academics - work to develop an innovative investigative field incorporating psychology, anthropology and sociology as a method to reveal the motive. They acknowledge classic crime-solving - MMO - as no longer sufficient because criminality is becoming more complicated as Motive graduates from need and greed to inexplicable and irrational reasons. They theorize applying deeper psychological evaluation will posit new questions. Simply, asking Why will lead to the Who. This series focuses on the development by two men, two agents, of a new criminal field and does so through story lines of visiting the sociopathic mind.','https://image.tmdb.org/t/p/original/fbKE87mojpIETWepSbD5Qt741fp.jpg','https://image.tmdb.org/t/p/original/a906PH7CDmSOdS7kmnAgdWk5mhv.jpg','Nominated for 2 Primetime Emmys. 5 wins & 37 nominations total',NULL,'TV-MA')
,('The Witcher',NULL,7.9,'60 minutes','English','Series','The Witcher is a fantasy drama web television series created by Lauren Schmidt Hissrich for Netflix. It is based on the book series of the same name by Polish writer Andrzej Sapkowski. The Witcher follows the story of Geralt of Rivia, a solitary monster hunter, who struggles to find his place in a world where people often prove more wicked than monsters and beasts. But when destiny hurtles him toward a powerful sorceress, and a young princess with a special gift, the three must learn to navigate independently the increasingly volatile Continent.','https://image.tmdb.org/t/p/original/cZ0d3rtvXPVvuiX22sP79K3Hmjz.jpg','https://image.tmdb.org/t/p/original/dQOphbONxlpPsKo30araFr0CYMO.jpg','Nominated for 4 Primetime Emmys. 9 wins & 37 nominations total',NULL,'TV-MA')
,('Mad Men',NULL,8.7,'45 minutes','English','Series','The professional and personal lives of those who work in advertising on Madison Avenue - self-coined "mad men" - in the 1960s are presented. The stories focus on those at one of the avenue''s smaller firms, Sterling Cooper, and its various incarnations over the decade. At the heart of these stories is Donald Draper, the creative genius of the company. That professional creative brilliance belies the fact of a troubled childhood, one that he would rather forget and not let anyone know about except for a select few, but one that shaped who he is as an adult and as an ad man in the need not only to sell products but sell himself to the outside world. His outward confidence also masks many insecurities as evidenced through his many vices, such as excessive smoking, drinking and womanizing - the latter despite being a family man - and how he deals with the aftermath of some of the negative aspects of his life.','https://image.tmdb.org/t/p/original/7v8iCNzKFpdlrCMcqCoJyn74Nsa.jpg','https://image.tmdb.org/t/p/original/ljOiRmGg96ltbNaCaxUkjdXyPjK.jpg','Won 16 Primetime Emmys. 166 wins & 450 nominations total',NULL,'TV-MA')
,('Lost',NULL,8.3,'45 minutes','English, Portuguese, Spanish, Arabic, French, Korean, German, Latin, Russian, Japanese','Series','The past, present, and future lives of surviving Oceanic Flight 815 passengers are dramatically intertwined as a fight for survival ensues in a quest for answers after crashlanding on a mysterious island. Each discovery prompts yet more secrets, as the hastily-formed colony search for a way off the island, or is this their home?','https://image.tmdb.org/t/p/original/og6S0aTZU6YUJAbqxeKjCa3kY1E.jpg','https://image.tmdb.org/t/p/original/yUOFocKDW7MCC5isx4FK8A68QFp.jpg','Won 10 Primetime Emmys. 118 wins & 418 nominations total',NULL,'TV-14')
,('Prison Break',NULL,8.3,'44 minutes','English, Spanish, Arabic','Series','An innocent man is framed for the homicide of the Vice President''s brother and scheduled to be executed at a super-max penitentiary, thus it''s up to his younger brother to save him with his genius scheme: install himself in the same prison by holding up a bank and, as the final month ticks away, launch the escape plan step-by-step to break the both of them out, with his full-body tattoo acting as his guide; a tattoo which hides the layout of the prison facility and necessary clues vital to the escape.','https://image.tmdb.org/t/p/original/5E1BhkCgjLBlqx557Z5yzcN0i88.jpg','https://image.tmdb.org/t/p/original/7w165QdHmJuTHSQwEyJDBDpuDT7.jpg','Nominated for 1 Primetime Emmy. 8 wins & 32 nominations total',NULL,'TV-14')
,('The Mandalorian',NULL,8.6,'40 minutes','English','Series','After the stories of Jango and Boba Fett, another warrior emerges in the Star Wars universe. The Mandalorian is set after the fall of the Empire and before the emergence of the First Order. We follow the travails of a lone gunfighter in the outer reaches of the galaxy far from the authority of the New Republic.','https://image.tmdb.org/t/p/original/eU1i6eHXlzMOlEq0ku1Rzq7Y4wA.jpg','https://image.tmdb.org/t/p/original/9zcbqSxdsRMZWHYtyCd1nXPr2xq.jpg','Won 15 Primetime Emmys. 62 wins & 162 nominations total',NULL,'TV-14')
,('Dexter',NULL,8.6,'60 minutes','English, Spanish','Series','He''s smart, he''s good looking, and he''s got a great sense of humor. He''s Dexter Morgan, everyone''s favorite serial killer. As a Miami forensics expert, he spends his days solving crimes, and nights committing them. But Dexter lives by a strict code of honor that is both his saving grace and lifelong burden. Torn between his deadly compulsion and his desire for true happiness, Dexter is a man in profound conflict with the world and himself. Golden Globe winner Michael C. Hall stars in the hit SHOWTIME Original Series.','https://image.tmdb.org/t/p/original/q8dWfc4JwQuv3HayIZeO84jAXED.jpg','https://image.tmdb.org/t/p/original/aSGSxGMTP893DPMCvMl9AdnEICE.jpg','Won 4 Primetime Emmys. 56 wins & 202 nominations total',NULL,'TV-MA')
,('How I Met Your Mother',NULL,8.3,'23 minutes','English, Persian, Chinese','Series','Ted Mosby sits down with his kids, to tell them the story of how he met their mother. The story is told through memories of his friends Marshall, Lily, Robin, and Barney Stinson. All legendary 9 seasons lead up to the moment of Ted''s final encounter with "the one."','https://image.tmdb.org/t/p/original/b34jPzmB0wZy7EjUZoleXOl2RRI.jpg','https://image.tmdb.org/t/p/original/9YteO4VWteiPmEbWYJRAeBTQZPD.jpg','Won 10 Primetime Emmys. 29 wins & 102 nominations total',NULL,'TV-14')
,('Brooklyn Nine-Nine',NULL,8.4,'22 minutes','English','Series','Captain Ray Holt takes over Brooklyn''s 99th precinct, which includes Detective Jake Peralta, a talented but carefree detective who''s used to doing whatever he wants. The other employees of the 99th precinct include Detective Amy Santiago, Jake''s over achieving and competitive partner; Detective Rosa Diaz, a tough and kept to herself coworker; Detective Charles Boyle, Jake''s best friend who also has crush on Rosa; Detective Sergeant Terry Jeffords, who was recently taken off the field after the birth of his twin girls; and Gina Linetti, the precinct''s sarcastic administrator.','https://image.tmdb.org/t/p/original/hgRMSOt7a1b8qyQR68vUixJPang.jpg','https://image.tmdb.org/t/p/original/9AeiA1XtP5sel2tAf9LaGeUjhDb.jpg','Won 2 Primetime Emmys. 21 wins & 138 nominations total',NULL,'TV-14')
,('The Big Bang Theory',NULL,8.1,'22 minutes','English, Hindi, Italian, Russian, Mandarin, Klingon','Series','Leonard Hofstadter and Sheldon Cooper are both brilliant physicists working at Cal Tech in Pasadena, California. They are colleagues, best friends, and roommates, although in all capacities their relationship is always tested primarily by Sheldon''s regimented, deeply eccentric, and non-conventional ways. They are also friends with their Cal Tech colleagues mechanical engineer Howard Wolowitz and astrophysicist Rajesh Koothrappali. The foursome spend their time working on their individual work projects, playing video games, watching science-fiction movies, or reading comic books. As they are self-professed nerds, all have little or no luck with women. When Penny, a pretty woman and an aspiring actress from Omaha, moves into the apartment across the hall from Leonard and Sheldon''s, Leonard has another aspiration in life, namely to get Penny to be his girlfriend.','https://image.tmdb.org/t/p/original/ooBGRQBdbGzBxAVfExiO8r7kloA.jpg','https://image.tmdb.org/t/p/original/sccDflItNho4OiHkzpiDxB2fUFw.jpg','Won 10 Primetime Emmys. 79 wins & 257 nominations total',NULL,'TV-PG')
,('Parks and Recreation',NULL,8.6,'22 minutes','English','Series','Leslie Knope, a mid-level bureaucrat in an Indiana Parks and Recreation Department, hopes to beautify her town (and boost her own career) by helping local nurse Ann Perkins turn an abandoned construction site into a community park. However, what should be a fairly simple project is stymied at every turn by oafish bureaucrats, selfish neighbors, governmental red tape, and a myriad of other challenges. Leslie''s colleague Tom Haverford, who delights in exploiting his position for personal gain, is as likely to undermine her efforts as to help her, while her boss, Ron Swanson, is adamantly opposed to government in any form, even though he''s a bureaucrat.','https://image.tmdb.org/t/p/original/dDuzrl9rUIBYieZjqmtNCdncrmZ.jpg','https://image.tmdb.org/t/p/original/v7FPlZuuwJZ6YwJggf3Jx5pZNAz.jpg','Nominated for 14 Primetime Emmys. 36 wins & 182 nominations total',NULL,'TV-14')
,('Community',NULL,8.5,'22 minutes','English','Series','A former lawyer attends a community college when it is discovered he faked his Bachelor''s degree. In an attempt to get with a student in his Spanish class, he forms a Spanish study group. To his surprise, more people attend the study group and the group of misfits form an unlikely community.','https://image.tmdb.org/t/p/original/3KUjDt8XY7w2Ku70UE0SECmv1zP.jpg','https://image.tmdb.org/t/p/original/OylSdzVezjwGLYM0w73mUPNHM4.jpg','Won 1 Primetime Emmy. 24 wins & 90 nominations total',NULL,'TV-14')
,('Mr. Robot',NULL,8.5,'45 minutes','English, Swedish, Danish, Chinese, Persian, Spanish, Samoan, Arabic, German','Series','Elliot is a brilliant introverted young programmer who works as a cyber-security engineer by day and vigilante hacker by night. He also happens to be suffering from a strange condition similar to schizophrenia which he futilely tries to keep under control by regularly taking both legal and illegal drugs and visiting his therapist. When a strange feisty young woman named Darlene and a secretive middle-aged man calling himself Mr. Robot, who claims to be the mysterious leader of an underground hacking group known as F-Society, offer Elliot a chance to take his vigilantism to the next level and help them take down E-Corp, the corrupt multi-national financial company that Elliot works for and likes to call Evil Corp, Elliot finds himself at the crossroads. Mr. Robot, who has personal reasons for wanting to take down E-Corp, also reveals that he already has one ally, an even more mysterious, secretive and highly dangerous shadowy hacking group known only as Dark Army. Meanwhile, Elliot''s childhood and only friend, Angela, who blames E-Corp for the death of their parents, tries to take down E-Corp legally by joining their ranks and trying to dig up evidence of their corruption from the inside. A wild card in this scheme becomes Tyrell Wellick, an unhinged psychopathic E-Corp yuppie, originally from Scandinavia, who has a very unusual relationship with his dominant and ambitious wife Joanna. After many twists and turns, Mr. Robot''s plan is finally put in motion - with catastrophic (un)intended results. But that''s just the end of the beginning of the real story.','https://image.tmdb.org/t/p/original/kv1nRqgebSsREnd7vdC2pSGjpLo.jpg','https://image.tmdb.org/t/p/original/uJUe985oIuRiD3hmHQYskIMc2WU.jpg','Won 3 Primetime Emmys. 23 wins & 89 nominations total',NULL,'TV-MA')
,('Hannibal',NULL,8.5,'45 minutes','English','Series','A talented but unstable FBI profiler named Will Graham is brought in to find serial murderers. Jack Crawford pairs him with the astute psychiatrist Dr. Hannibal Lecter because his unique capacity for empathy with them compromises his sanity. Will has no idea that Lecter is a crafty cannibalistic killer who plays tricks on him and the FBI. As their twisted relationship develops, Lecter drives Will''s sanity to the breaking point, erasing the distinction between hunter and hunted and ultimately compelling Will to face the darkness within him and the true nature of the man he believed to be his confidant.','https://image.tmdb.org/t/p/original/pbV2eLnKSIm1epSZt473UYfqaeZ.jpg','https://image.tmdb.org/t/p/original/vlG182ZY2WMzD5bjFZNnhyvv5V4.jpg','9 wins & 25 nominations total','$165,092,268','R')
,('The Umbrella Academy',NULL,7.8,'60 minutes','English','Series','On the same day in October 1989, forty-three infants are inexplicably born to random, unconnected women who showed no signs of pregnancy the day before. Seven are adopted by Sir Reginald Hargreeves, a billionaire Wessk r industrialist, who creates The Umbrella Academy and prepares his "children" to save the world. But not everything went according to plan. In their teenage years, the family fractured and the team disbanded. Now almost thirty years old, the six surviving members reunite upon the news of Hargreeves'' passing. Luther, Diego, Allison, Klaus, Vanya and Number Five work together to solve a mystery surrounding their father''s death. But the estranged family once again begins to come apart due to their divergent personalities and abilities, not to mention the imminent threat of a global apocalypse.','https://image.tmdb.org/t/p/original/qhcwrnnCnN8NE1N6XXKHFmveJR9.jpg','https://image.tmdb.org/t/p/original/7sqFEDDmK1hG5m92upolcfQxy7R.jpg','Nominated for 7 Primetime Emmys. 13 wins & 62 nominations total',NULL,'TV-14')
,('The Last of Us',NULL,8.7,'50 minutes','English, Indonesian','Series','20 years after modern civilization has been destroyed, Joel, a hardened survivor, is hired to smuggle Ellie, a 14-year-old girl, out of an oppressive quarantine zone. What starts as a small job soon becomes a brutal heartbreaking journey as they both must traverse the U.S. and depend on each other for survival.','https://image.tmdb.org/t/p/original/dmo6TYuuJgaYinXBPjrgG9mB5od.jpg','https://image.tmdb.org/t/p/original/lY2DhbA7Hy44fAKddr06UrXWWaQ.jpg','Won 8 Primetime Emmys. 92 wins & 132 nominations total',NULL,'TV-MA')
,('Arrow',NULL,7.5,'42 minutes','English, Greek, Arabic, Russian, Chinese, Spanish, Japanese','Series','After many years in a sheltered rich-boy life, Oliver Queen is stranded on an island after his father''s yacht crashes and must learn to survive on his own. Five years later he is found alive and well after he was presumed to be dead. After he returns to his hometown of Starling City, he begins his crusade to rid it of nasty villains, drug dealers, mob bosses, and criminals by becoming an arrow-shooting vigilante.','https://image.tmdb.org/t/p/original/u8ZHFj1jC384JEkTt3vNg1DfWEb.jpg','https://image.tmdb.org/t/p/original/vNnLAKmoczRlNarxyGrrw0KSOeX.jpg','22 wins & 89 nominations total',NULL,'TV-14')
,('The Flash',NULL,7.5,'43 minutes','English','Series','Barry Allen was struck by lightning and fell into a coma. When he awakens from it 9 months later, he meets Cisco Ramon, Harrison Wells, and Caitlin Snow, and later he realizes that he that he has powers and how it had been caused by the explosion of the particle accelerator.','https://image.tmdb.org/t/p/original/yZevl2vHQgmosfwUdVNzviIfaWS.jpg','https://image.tmdb.org/t/p/original/gFkHcIh7iE5G0oVOgpmY8ONQjhl.jpg','Nominated for 1 Primetime Emmy. 31 wins & 100 nominations total',NULL,'TV-PG')
,('Smallville',NULL,7.5,'60 minutes','English','Series','After a meteor shower bursts from the heavens, raining destruction on the unsuspecting citizens of Smallville, years pass, and the healing process leaves the town''s inhabitants with scars and secrets. From the ashes of tragedy, a popular yet awkward teen attempts to decipher the meaning of his life and his clouded past. As he struggles with the transition from boyhood to adulthood, Clark finds that his strength and strange abilities set him uncomfortably apart from his peers.','https://image.tmdb.org/t/p/original/dc9a9n4g9Ibs485t5eBtyNG0mcr.jpg','https://image.tmdb.org/t/p/original/4wVq9ICc4MI2XcssrumpCOhKLpI.jpg','Won 3 Primetime Emmys. 35 wins & 155 nominations total',NULL,'TV-PG')
,('Heroes',NULL,7.5,'45 minutes','English, Japanese, Spanish','Series','People all over the U.S and the world start to realize they have special abilities, like telekinesis, healing abilities, flying powers, time travel, invisibility, and the ability to absorb other''s abilities. One man, known as Sylar, wants to gain all the power of these "heroes" so he can be the most powerful and evolved human of all, and stops at nothing to gruesomely kill these people. In order to protect themselves from him, these people must help one another before Sylar can destroy them all, while they each deal with problems of their own.','https://image.tmdb.org/t/p/original/lf0TcOkheYUZKpeh7c8lqJHNk5O.jpg','https://image.tmdb.org/t/p/original/zoetbPF7jYY0jjY5js3x6r1QjSW.jpg','Won 1 Primetime Emmy. 31 wins & 108 nominations total',NULL,'TV-14')
,('Daredevil: Born Again',NULL,8.6,'60 minutes','English','Series','Matt Murdock, a blind lawyer with heightened abilities is fighting for justice through his bustling law firm, while former mob boss Wilson Fisk pursues his own political endeavors in New York. When their past identities begin to emerge, both men find themselves on an inevitable collision course.','https://image.tmdb.org/t/p/original/9lLuhV703HGCbnz6FxnqCwIwzAZ.jpg','https://image.tmdb.org/t/p/original/hrsRczdsAHBLTDzlIqt82bxY0Tt.jpg','Nominated for 5 Primetime Emmys. 10 wins & 43 nominations total',NULL,'TV-MA')
,('Jessica Jones',NULL,7.8,'56 minutes','English','Series','Ever since her short-lived stint as a superhero ended in tragedy, Jessica Jones has been rebuilding her personal life and career as a hot-tempered, sardonic private detective in Hell''s Kitchen, New York City. Plagued by self-loathing and a wicked case of PTSD, Jessica battles demons from within and without, using her extraordinary abilities as an unlikely champion for those in need. Especially if they''re willing to cut her a check.','https://image.tmdb.org/t/p/original/paf9wL3mOW9LT3ZjRxXqJcjeMEv.jpg','https://image.tmdb.org/t/p/original/g9ju2o4LioYYOyihBvf9lVX8XL.jpg','Won 1 Primetime Emmy. 12 wins & 27 nominations total',NULL,'TV-MA')
,('Luke Cage',NULL,7.2,'55 minutes','English, Spanish, Polish','Series','After a sabotaged experiment leaves him with super strength and unbreakable skin, Luke Cage becomes a fugitive trying to rebuild his life in modern-day Harlem, New York City. But he is soon pulled out of the shadows and must fight a battle for the heart of his city--forcing him to confront a past he had tried to bury.','https://image.tmdb.org/t/p/original/6R62oGGufhsf6DiMknCi047N0b7.jpg','https://image.tmdb.org/t/p/original/9VNvlBE0IVFBuybIAA6BlOVMtCv.jpg','Won 1 Primetime Emmy. 6 wins & 26 nominations total',NULL,'TV-MA')
,('Iron Fist',NULL,6.4,'55 minutes','English, Mandarin, Japanese, Russian, Korean','Series','Danny Rand returns to New York City after being missing for years, trying to reconnect with his past and his family legacy. He fights against the criminal element corrupting his world around him with his incredible kung-fu mastery and ability to summon the awesome power of the fiery Iron Fist.','https://image.tmdb.org/t/p/original/4l6KD9HhtD6nCDEfg10Lp6C6zah.jpg','https://image.tmdb.org/t/p/original/xHCfWGlxwbtMeeOnTvxUCZRGnkk.jpg','2 nominations',NULL,'TV-MA')
,('The Defenders',NULL,7.2,'50 minutes','English, Japanese, Mandarin','Series','Marvel''s "The Defenders," follows Daredevil, Jessica Jones, Luke Cage and Iron Fist; a quartet of singular heroes with one common goal--to save New York City. This is the story of four solitary figures, burdened with their own personal challenges, who realize they just might be stronger when teamed together.','https://image.tmdb.org/t/p/original/49XzINhH4LFsgz7cx6TOPcHUJUL.jpg','https://image.tmdb.org/t/p/original/72jj9y2Ejeub0mycZvkrPfT59sW.jpg','Nominated for 1 Primetime Emmy. 11 nominations total',NULL,'TV-MA')
,('Titans',NULL,7.5,'45 minutes','English','Series','Titans follows young heroes from across the DC Universe as they come of age and find belonging in a gritty take on the classic Teen Titans franchise. Dick Grayson and Rachel Roth, a special young girl possessed by a strange darkness, get embroiled in a conspiracy that could bring Hell on Earth. Joining them along the way are the hot-headed Starfire and lovable Beast Boy. Together they become a surrogate family and team of heroes.','https://image.tmdb.org/t/p/original/8e6QiSexmYKaiHGPvbhaFMmQEhc.jpg','https://image.tmdb.org/t/p/original/remQq0nfQoxY9fVglGGegHZjFxx.jpg','5 wins & 16 nominations total',NULL,'TV-MA')
,('Gotham',NULL,7.8,'42 minutes','English, Russian, Italian, French, Spanish, Arabic','Series','In crime ridden Gotham City, Thomas and Martha Wayne are murdered before young Bruce Wayne''s eyes. Although Gotham City Police Department detectives, James Gordon, and his cynical partner, Harvey Bullock, seem to solace''s the case quickly, things are not so simple. Inspired by Bruce''s traumatized desire for justice, Gordon vows to find it amid Gotham''s corruption. Thus begins Gordon''s lonely quest that would set him against his own comrades and the underworld with their own deadly rivalries and mysteries. In the coming wars, innocence will be lost and compromises will be made as some criminals will fall as casualties while others will rise as super villains. All the while, young Bruce observes this war with a growing obsession that would one day drive him to seek his own justice against the evil of Gotham as The Batman.','https://image.tmdb.org/t/p/original/wt3uwxSKbMg5ZNJBUOrsJoDnNWX.jpg','https://image.tmdb.org/t/p/original/825wlJ7RN0S9QWyPuGVVc8eeTa2.jpg','Won 1 Primetime Emmy. 7 wins & 62 nominations total',NULL,'TV-14')
,('Supernatural',NULL,8.4,'44 minutes','English','Series','John Winchester raised his two sons Sam and Dean to hunt and kill all things that go "bump in the night" after his wife Mary was murdered by an evil supernatural being when the boys were little. 22 years later the brothers set out on a journey, fighting evil along the way, to find their recently-missing father; when they finally do he reveals he knows what demon killed their mother and has found a way to track and kill it. Meanwhile, Sam develops frightening abilities such as seeing visions of people dying before it actually happens. These visions are somehow connected to the demon that murdered his mother and its mysterious plans that seem to be all about Sam. When their father dies striking a deal with that very same demon, the brothers determine to finish his crusade. But disturbing revelations about Sam''s part in the demon''s apocalyptic plan are presented when John''s dying last words to Dean are revealed.','https://image.tmdb.org/t/p/original/KoYWXbnYuS3b0GyQPkbuexlVK9.jpg','https://image.tmdb.org/t/p/original/lirPqYLTtd6XZqGn4cS1wiesTq0.jpg','Nominated for 3 Primetime Emmys. 37 wins & 126 nominations total',NULL,'TV-14')
,('Lucifer',NULL,8,'45 minutes','English','Series','Lucifer Morningstar, bored from his sulking life in hell, comes to live in Los Angeles. While there, he helps humanity with its miseries through his experience and telepathic abilities to bring people''s deepest desires and thoughts out of them. While meeting with a Detective in his nightclub (Lux), a shootout involving him and the Detective leads him to become an LAPD consultant who tries to punish people for their crimes through law and justice.','https://image.tmdb.org/t/p/original/ekZobS8isE6mA53RAiGDG93hBxL.jpg','https://image.tmdb.org/t/p/original/wbiPjTWpZMIB8ffBq7HvzAph4Ft.jpg','Nominated for 1 Primetime Emmy. 2 wins & 20 nominations total',NULL,'TV-14')
,('American Horror Story',NULL,7.9,'60 minutes','English','Series','Physical and psychological horrors affect a decomposing family, workers and residents of an insane asylum, a coven of witches, a cast of circus freaks, the employees and guests at a struggling hotel, a family who moved into a mysterious farmhouse, the members of a small suburb in Michigan, the surviving members of the Apocalypse and the counselors of a creepy summer camp in this haunting anthology series, focusing on the themes of infidelity, sanity, oppression, discrimination, addiction and exploitation.','https://image.tmdb.org/t/p/original/5LLG9bjq0i7V5N4UfRhnab8zHK4.jpg','https://image.tmdb.org/t/p/original/a4doyPOabvQor0RGkWdhVENAR3G.jpg','Won 17 Primetime Emmys. 132 wins & 413 nominations total',NULL,'TV-MA')
,('The Penguin',NULL,8.6,'58 minutes','English','Series',NULL,'https://image.tmdb.org/t/p/original/vOWcqC4oDQws1doDWLO7d3dh5qc.jpg','https://image.tmdb.org/t/p/original/qq36sU5xH581RiNEkookMQ9D7yp.jpg','14 wins & 34 nominations total',NULL,'TV-MA')
,('The Sopranos',NULL,9.2,'60 minutes','English, Italian, Russian','Series','An innovative look at the life of fictional Mafia Capo Tony Soprano, this serial is presented largely first person, but additional perspective is conveyed by the intimate conversations Tony has with his psychotherapist. We see Tony at work, at home, and in therapy. Moments of black comedy intersperse this aggressive, adult drama, with adult language, and extreme violence.','https://image.tmdb.org/t/p/original/rTc7ZXdroqjkKivFPvCPX0Ru7uw.jpg','https://image.tmdb.org/t/p/original/4QxoeC76pGZYlNmMXCRWb2GtWyd.jpg','Won 21 Primetime Emmys. 126 wins & 312 nominations total',NULL,'TV-MA');


SELECT * from movies ;
GO
