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


GO 

-- Actors 

INSERT INTO Actors (ActorName) VALUES
('Aakriti Dobhal'),
('Aamir Bashir'),
('Aariyan Gupta'),
('Aarnaa Sharma'),
('Aaron Abrams'),
('Aaron Dismuke'),
('Aaron Eckhart'),
('Aaron Marshall'),
('Aaron Paul'),
('Aaron Staton'),
('Aaron Taylor-Johnson'),
('Aaron Tveit'),
('Aaron W Reed'),
('Abbey Lee'),
('Abbie Cornish'),
('Abigail Breslin'),
('Abrar Qazi'),
('Adah Sharma'),
('Adam Brody'),
('Adam Devine'),
('Adam Driver'),
('Adam Dunn'),
('Adam Gregory'),
('Adam Sandler'),
('Adam Scott'),
('Adeel Afzal'),
('Adeel Akhtar'),
('Adithi Kalkunte'),
('Aditi Rao Hydari'),
('Adrian Pasdar'),
('Adrien Brody'),
('Agha Haider'),
('Ai Fairouz'),
('Aida Turturro'),
('Aidan Gallagher'),
('Aidy Bryant'),
('Aimee Garcia'),
('Akemi Okamura'),
('Aksel Hennie'),
('Akshay Kumar'),
('Al Lettieri'),
('Al Madrigal'),
('Al Pacino'),
('Al Thompson'),
('Alan Boell'),
('Alan Ritchson'),
('Alan Ruck'),
('Albert Jones'),
('Alberto Ammann'),
('Alden Ehrenreich'),
('Alec Baldwin'),
('Alecia Svensen'),
('Alex Huff'),
('Alex Sharp'),
('Alexander Biglane'),
('Alexander Calvert'),
('Alexandra Daddario'),
('Alexandra Shipp'),
('Alfie Allen'),
('Alfre Woodard'),
('Ali Hasnain'),
('Ali Junejo'),
('Ali Kureshi'),
('Ali Larter'),
('Ali Wong'),
('Ali-Asghar Shahbazi'),
('Alia Bhatt'),
('Alice Eve'),
('Alice Orr-Ewing'),
('Alina Khan'),
('Alisha Boe'),
('Alison Brie'),
('Alison Pill'),
('Allison Mack'),
('Allison Miller'),
('Allison Tolman'),
('Allison Williams'),
('Alon Aboutboul'),
('Aly Michalka'),
('Alyson Hannigan'),
('Amanda Abbington'),
('Amanda Bynes'),
('Amanda Donohoe'),
('Amanda Farinos'),
('Amanda Plummer'),
('Amanda Seyfried'),
('Amar Gupta'),
('Amaury Nolasco'),
('Amber Heard'),
('Amiee Conn'),
('Amita Udgata'),
('Amitabh Bachchan'),
('Amrita Bagchi'),
('Amy Adams'),
('Amy Poehler'),
('Amy Ryan'),
('Ana Cruz Kayne'),
('Ana de Armas'),
('Anahita Oberoi'),
('Andre Braugher'),
('Andrea Riseborough'),
('Andreas Pietschmann'),
('Andrew Bachelor'),
('Andrew Chandler'),
('Andrew Garfield'),
('Andrew Howard'),
('Andrew Keegan'),
('Andrew Kevin Walker'),
('Andrew Koji'),
('Andrew Scott'),
('Andrew Sellon'),
('Andy Hull'),
('Andy Samberg'),
('Andy Serkis'),
('Angela Kinsey'),
('Angela Sarafyan'),
('Angourie Rice'),
('Anil Dhawan'),
('Anil Kapoor'),
('Ann Pierce'),
('Anna Diop'),
('Anna Gunn'),
('Anna Kendrick'),
('Anna Shaffer'),
('Anna Torv'),
('Annabelle Wallis'),
('Anne Haney'),
('Anne Hathaway'),
('Anne Winters'),
('Annette O''Toole'),
('Ansel Elgort'),
('Anshikaa Shrivastava'),
('Anthony Daniels'),
('Anthony Edwards'),
('Anthony Hopkins'),
('Anti'),
('Antje Traue'),
('Antonia Ribero'),
('Antony Starr'),
('Anuj Gurwara'),
('Anupam Kher'),
('Anuradha Chandan'),
('Anya Chalotra'),
('Anya Taylor-Joy'),
('Aparajita Adhya'),
('Archie Yates'),
('Arif Hassan'),
('Arjun Mathur'),
('Arjun Rampal'),
('Arthur J. Nascarella'),
('Arty Froushan'),
('Ashish Ghosh'),
('Ashish Vidyarthi'),
('Ashley Jensen'),
('Ashley Park'),
('Ashley Rae Spillers'),
('Ashley White'),
('Ashwini Kalsekar'),
('Aubrey Plaza'),
('Austin Abrams'),
('Austin Butler'),
('Austin Freeman'),
('Austyn Johnson'),
('Ava Capri'),
('Avinash Tiwary'),
('Aviva Baumann'),
('Awkwafina'),
('Ayane Sakura'),
('Ayelet Zurer'),
('Ayush Mahesh Khedekar'),
('Ayushmann Khurrana'),
('Azharuddin Mohammed Ismail'),
('Azhy Robertson'),
('Aziz Ansari'),
('BD Wong'),
('Babak Karimi'),
('Baby Bakita'),
('Bad Bunny'),
('Balendar Singh'),
('Banita Sandhu'),
('Banjô Ginga'),
('Bankim Ghosh'),
('Barbie Ferreira'),
('Barry Keoghan'),
('Beanie Feldstein'),
('Beau Knapp'),
('Becca Khalil'),
('Bella Ramsey'),
('Ben Affleck'),
('Ben Hanson'),
('Ben Knight'),
('Ben Levi Ross'),
('Ben McKenzie'),
('Ben Shenkman'),
('Ben Stiller'),
('Benedict Cumberbatch'),
('Benjamin Gilani'),
('Benjamin Walker'),
('Benny Nieves'),
('Bertie Caplan'),
('Beth Littleford'),
('Betsy Brandt'),
('Betty Buckley'),
('Betty Gabriel'),
('Bholanath Koyal'),
('Bholaraj Sapkota'),
('Biff Wiff'),
('Bill Camp'),
('Bill Hader'),
('Bill Irwin'),
('Bill Murray'),
('Bill Nighy'),
('Bill Nunn'),
('Billie Lourd'),
('Billie Whitelaw'),
('Billy Bob Thornton'),
('Billy Crudup'),
('Billy Magnussen'),
('Bindu Desai'),
('Blaine Kern III'),
('Blair Slater'),
('Bo Burnham'),
('Bob Barna'),
('Bob Mack'),
('Bob Odenkirk'),
('Bob Penny'),
('Bob Peterson'),
('Bob Stephenson'),
('Bokeem Woodbine'),
('Boyd Holbrook'),
('Brad Mann'),
('Brad Pitt'),
('Brad William Henke'),
('Bradley Cooper'),
('Bradley Whitford'),
('Brandon McKnight'),
('Brandon Perea'),
('Brendan Fraser'),
('Brendan Gleeson'),
('Brendan Hunt'),
('Brendan Rozario'),
('Brendan Wayne'),
('Brenton Thwaites'),
('Brett Cullen'),
('Brett Goldstein'),
('Brian Baumgartner'),
('Brian Cox'),
('Brian Delate'),
('Brian Howe'),
('Brian Tarantina'),
('Brian Tyree Henry'),
('Brie Larson'),
('Brigitte Lin'),
('Britne Oldford'),
('Britt Robertson'),
('Bruce Dern'),
('Bruce Norris'),
('Bruce Willis'),
('Bryan Barter'),
('Bryan Cranston'),
('Bryce Papenbrook'),
('Burr Steers'),
('Busy Philipps'),
('C.S. Lee'),
('CJ Jones'),
('Caitlynne Medrek'),
('Caitríona Balfe'),
('Caleb Landry Jones'),
('Caleb McLaughlin'),
('Callie Hernandez'),
('Cam Gigandet'),
('Cameron Diaz'),
('Cameron Seely'),
('Camila Mendes'),
('Camille Kostek'),
('Camren Bicondova'),
('Candice Patton'),
('Cara Jade Myers'),
('Carey Mulligan'),
('Carl Weathers'),
('Carla Gugino'),
('Carlos Valdes'),
('Carly Chaikin'),
('Carmen Ejogo'),
('Carol Ann Susi'),
('Caroline Dhavernas'),
('Carrie Coon'),
('Carrie Lazar'),
('Carrie-Anne Moss'),
('Carson Holmes'),
('Cary Elwes'),
('Casey Affleck'),
('Cate Blanchett'),
('Catherine Bell'),
('Catherine Keener'),
('Catherine O''Hara'),
('Cesar Aguirre'),
('Chace Crawford'),
('Chanel Cresswell'),
('Chang Chen'),
('Channing Tatum'),
('Charles Edwards'),
('Charles Walker'),
('Charlie Cox'),
('Charlie Day'),
('Charlie Heaton'),
('Charlie Hunnam'),
('Charlie Tahan'),
('Charlize Theron'),
('Charlyne Yi'),
('Chelsea Peretti'),
('Cherry Jones'),
('Chevy Chase'),
('Chhaya Kadam'),
('Chidi Ajufo'),
('Chie Nakamura'),
('Chiwetel Ejiofor'),
('Chloë Grace Moretz'),
('Chloë Sevigny'),
('Chris Bartlett'),
('Chris Chalk'),
('Chris Elliott'),
('Chris Evans'),
('Chris Hemsworth'),
('Chris Pang'),
('Chris Parnell'),
('Chris Penn'),
('Chris Pratt'),
('Chris Tucker'),
('Chris Waitt'),
('Chris Wylde'),
('Christian Bale'),
('Christian Brunetti'),
('Christian Erickson'),
('Christian Slater'),
('Christian Stolte'),
('Christina Hendricks'),
('Christina Pickles'),
('Christina Robinson'),
('Christine Toy Johnson'),
('Christoph Waltz'),
('Christopher B. Duncan'),
('Christopher Meloni'),
('Christopher Mintz-Plasse'),
('Christopher Plummer'),
('Christopher Walken'),
('Chukwudi Iwuji'),
('Cillian Murphy'),
('Cinda Adams'),
('Claire Forlani'),
('Claire Foy'),
('Clancy Brown'),
('Clark Gregg'),
('Clayne Crawford'),
('Clifford Chapin'),
('Cobie Smulders'),
('Colin Farrell'),
('Colin Hanks'),
('Colleen Clinkenbeard'),
('Colleen O''Shaughnessey'),
('Collette Wolfe'),
('Colm Feore'),
('Colton Haynes'),
('Common'),
('Conan O''Brien'),
('Connie Britton'),
('Conor Leslie'),
('Cory Michael Smith'),
('Cotter Smith'),
('Courteney Cox'),
('Craig Berry'),
('Craig Roberts'),
('Creed Bratton'),
('Cristin Milioti'),
('Curran Walters'),
('Cyd Charisse'),
('D.B. Woodside'),
('Daiki Yamashita'),
('Daisuke Hirakawa'),
('Dakota Johnson'),
('Damian Young'),
('Damián Alcázar'),
('Dan Byrd'),
('Dan Castellaneta'),
('Dane Cook'),
('Daniel Brühl'),
('Daniel Craig'),
('Daniel Dae Kim'),
('Daniel Davis'),
('Daniel Huttlestone'),
('Daniel Ings'),
('Daniel J. Watts'),
('Daniel Kaluuya'),
('Daniel Lapaine'),
('Daniel Radcliffe'),
('Daniel Zacapa'),
('Danielle Nicolet'),
('Danielle Panabaker'),
('Danny Aiello'),
('Danny McBride'),
('Danny Pudi'),
('Darcy Bryce'),
('Darko Peric'),
('Daryl Hannah'),
('Daryl Mitchell'),
('Daryn Kahn'),
('Dave Bautista'),
('Dave Franco'),
('Dave Wittenberg'),
('David Bowie'),
('David Burrows'),
('David Castañeda'),
('David Choe'),
('David Clennon'),
('David Cross'),
('David H. Holmes'),
('David Harbour'),
('David Henrie'),
('David Kaye'),
('David Krumholtz'),
('David Mazouz'),
('David Oyelowo'),
('David Ramsey'),
('David S. Howard'),
('David Schrempf'),
('David Schwimmer'),
('David Tennant'),
('David Thewlis'),
('David Turner'),
('David Wenham'),
('David Zayas'),
('Dawn Addams'),
('Dax Flame'),
('DeRay Davis'),
('Dean Feldman'),
('Dean J. West'),
('Dean Norris'),
('Debbie Reynolds'),
('Deborah Ann Woll'),
('Deepika Padukone'),
('Deirdre O''Connell'),
('Delfeayo Marsalis'),
('Delroy Lindo'),
('Demi Moore'),
('Deneke Muhugeta'),
('Denis O''Hare'),
('Denise Hughes'),
('Dennis Quaid'),
('Derek Graf'),
('Desmond Harrington'),
('Dev Patel'),
('Devon Graye'),
('Diana Lin'),
('Diane Keaton'),
('Diane Kruger'),
('Diane Lane'),
('Diane Morgan'),
('Dianne Wiest'),
('Diego Calva'),
('Dileep Rao'),
('Dilip Bose'),
('Dimiter D. Marinov'),
('Dirk Blocker'),
('Dominic Chianese'),
('Dominic Purcell'),
('Dominic West'),
('Don Johnson'),
('Don McManus'),
('Donal Logue'),
('Donald Glover'),
('Donald O''Connor'),
('Donna Biscoe'),
('Donnie Wahlberg'),
('Doug Benson'),
('Douglas Fowley'),
('Drew Ater'),
('Dua Lipa'),
('Dustin Fitzsimons'),
('Dwayne Johnson'),
('Dylan Minnette'),
('Dylan Moran'),
('Eamon Farren'),
('Echo Kellum'),
('Ed Harris'),
('Ed Helms'),
('Ed Renninger'),
('Ed Skrein'),
('Ed Stoppard'),
('Eddie Jemison'),
('Eddie Redmayne'),
('Edi Patterson'),
('Edie Falco'),
('Edward Asner'),
('Edward Hamilton-Clark'),
('Edward Norton'),
('Ehteram Boroumand'),
('Eiza González'),
('Eka Darville'),
('Eli Roth'),
('Elie Docter'),
('Elijah Wood'),
('Elisabeth Moss'),
('Elise Baughman'),
('Elizabeth Banks'),
('Elle Fanning'),
('Ellen Burstyn'),
('Ellen Wong'),
('Ellie Kemper'),
('Elliot Page'),
('Elliott Gould'),
('Elodie Yung'),
('Eman Suleman'),
('Emilia Clarke'),
('Emilia Fox'),
('Emilie de Ravin'),
('Emily Bett Rickards'),
('Emily Blunt'),
('Emily Browning'),
('Emily Swallow'),
('Emily Watson'),
('Emma D''Arcy'),
('Emma Mackey'),
('Emma Roberts'),
('Emma Stone'),
('Emmy Raver-Lampman'),
('Enrique Arce'),
('Eric Bauza'),
('Eric Berryman'),
('Eric Mason'),
('Eric Vale'),
('Erica Durance'),
('Erin Gerasimovich'),
('Erin Moriarty'),
('Erin Richards'),
('Esther Acebo'),
('Ethan Phillips'),
('Evan Peters'),
('Evan Rachel Wood'),
('Evangeline Lilly'),
('Ewan McGregor'),
('Ezra Miller'),
('F. Murray Abraham'),
('Fabien Frankel'),
('Farhana Bhat'),
('Farid Sajjadi Hosseini'),
('Fawad Khan'),
('Faye Wong'),
('Felicity Jones'),
('Felix Mallard'),
('Finlay Wright-Stephens'),
('Finn Cole'),
('Finn Jones'),
('Finn Wolfhard'),
('Flora Slorach'),
('Florence Pugh'),
('Frances Conroy'),
('Francis X. McCarthy'),
('Francisco Denis'),
('Frank Finlay'),
('Frank John Hughes'),
('Frank Whaley'),
('Frankie Faison'),
('Frederick Weller'),
('Freida Pinto'),
('Freya Allan'),
('Gabriel Luna'),
('Gabrielle Union'),
('Gal Gadot'),
('Gary Lydon'),
('Gary Oldman'),
('Gaten Matarazzo'),
('Gavin Ferguson'),
('Gedeon Burkhard'),
('Gene Kelly'),
('Genneya Walton'),
('Genta Nakamura'),
('Geoff Pierson'),
('Geoffrey Arend'),
('George Cheung'),
('George Kelly'),
('Georgia King'),
('Gerry Robert Byrne'),
('Giancarlo Esposito'),
('Gideon Glick'),
('Gillian Anderson'),
('Gillian Jacobs'),
('Gitali Roy'),
('Gitanjali Rao'),
('Giullian Yao Gioiello'),
('Glenn Fitzgerald'),
('Glenn Fleshler'),
('Gopichand Lagadapati'),
('Gore Abrams'),
('Govardhan Asrani'),
('Grace Gummer'),
('Grant Gustin'),
('Greg Chun'),
('Greg Cipes'),
('Greg Grunberg'),
('Gulshan Grover'),
('Gururaj Manepalli'),
('Gustave Die'),
('Guy Massey'),
('Gwyneth Paltrow'),
('Habtunu Africho'),
('Hailee Steinfeld'),
('Haley Joel Osment'),
('Haley Lu Richardson'),
('Hammad Haider Butt'),
('Hannah Gross'),
('Hannah John-Kamen'),
('Hannah Waddingham'),
('Hannibal Buress'),
('Hansford Prince'),
('Haradhan Bannerjee'),
('Hari Nef'),
('Harold G. Herthum'),
('Harry Goodwins'),
('Harry Kirton'),
('Harry Lennix'),
('Harry Lloyd'),
('Harry Shum Jr.'),
('Hartley Sawyer'),
('Haruna Mikawa'),
('Harvey Fierstein'),
('Harvey Keitel'),
('Hayden Panettiere'),
('Hazel Mailloux'),
('Heath Ledger'),
('Heidi Schanz'),
('Helen McCrory'),
('Helena Bonham Carter'),
('Henry Cavill'),
('Henry Golding'),
('Hettienne Park'),
('Hiro Shimono'),
('Hiroaki Hirata'),
('Hiroyuki Sanada'),
('Holland Taylor'),
('Holly Hunter'),
('Holt McCallany'),
('Honey Albela'),
('Hong Lin'),
('Hong Lu'),
('Hoyeon'),
('Hugh Dancy'),
('Hugh Grant'),
('Hugh Jackman'),
('Hugh Keays-Byrne'),
('Hugo Diego Garcia'),
('Hugo Weaving'),
('Hunter Aldridge'),
('Hunter Parrish'),
('Hynden Walch'),
('Iain Glen'),
('Ian Peck'),
('Ice Cube'),
('Idara Victor'),
('Idris Elba'),
('Ikue Ôtani'),
('Ikuto Kanemasa'),
('Ileana D''Cruz'),
('Imelda Staunton'),
('Irrfan Khan'),
('Isabelle Almoyan'),
('Isha Chaturvedi'),
('Isiah Whitlock Jr.'),
('Isla Fisher'),
('Issa Rae'),
('Isy Suttie'),
('Iteeva Pande'),
('Itziar Ituño'),
('Ivo Uukkivi'),
('Ivy O''Brien'),
('Izzie Coffey'),
('J. Smith-Cameron'),
('J.B. Smoove'),
('J.C. Currais'),
('J.C. MacKenzie'),
('J.D.'),
('J.K. Simmons'),
('J.R. Ramirez'),
('JJ Feild'),
('Jack Coleman'),
('Jack Quaid'),
('Jacki Weaver'),
('Jackie Chan'),
('Jackie Earle Haley'),
('Jacky Ido'),
('Jacob G. Akins'),
('Jacob Warner'),
('Jacqueline Obradors'),
('Jada Pinkett Smith'),
('Jaden Smith'),
('Jahnni St. John'),
('Jaideep Ahlawat'),
('Jaime Lorente'),
('Jake Gyllenhaal'),
('Jake Johnson'),
('Jake Weber'),
('Jamahl Garrison-Lowe'),
('James Brolin'),
('James Caan'),
('James Corden'),
('James Gandolfini'),
('James Hong'),
('James Karen'),
('James Kyson'),
('James Lugton'),
('James M. Connor'),
('James Marsden'),
('James McAvoy'),
('James Michael Tyler'),
('James Remar'),
('James Saito'),
('James Tarpey'),
('Jami Owen'),
('Jamie Chung'),
('Jamie Foxx'),
('Jamie Lee Curtis'),
('Jamie-Lynn Sigler'),
('Jamieson Price'),
('Janae Collins'),
('Jane Adams'),
('Janet McTeer'),
('January Jones'),
('Jared Padalecki'),
('Jason Andrews'),
('Jason Bateman'),
('Jason Bernard'),
('Jason Clarke'),
('Jason Mantzoukas'),
('Jason Momoa'),
('Jason Schwartzman'),
('Jason Segel'),
('Jason Sudeikis'),
('Jasper Levine'),
('Jatin Malik'),
('Javier Bardem'),
('Jawed Sheikh'),
('Jay Lycurgo'),
('Jean Hagen'),
('Jeanine Serralles'),
('Jeff Daniels'),
('Jeff Goldblum'),
('Jefferson Hall'),
('Jeffrey Dean Morgan'),
('Jeffrey Tambor'),
('Jeffrey Wright'),
('Jeffrey Zubernis'),
('Jemima Rooper'),
('Jena Malone'),
('Jeneva Talwar'),
('Jenna Fischer'),
('Jennifer Aniston'),
('Jennifer Carpenter'),
('Jennifer Connelly'),
('Jennifer Ehle'),
('Jennifer Finley'),
('Jennifer Lawrence'),
('Jennifer Tilly'),
('Jenny Slate'),
('Jensen Ackles'),
('Jeon Young-soo'),
('Jeremiah Craft'),
('Jeremiah Yurk'),
('Jeremy Irons'),
('Jeremy Leary'),
('Jeremy Renner'),
('Jeremy Shamos'),
('Jeremy Strong'),
('Jeremy Swift'),
('Jerome Ranft'),
('Jerry Grayson'),
('Jesse Eisenberg'),
('Jesse L. Martin'),
('Jesse Plemons'),
('Jessica Chastain'),
('Jessica Frances Dukes'),
('Jessica Henwick'),
('Jessica Kate Meyer'),
('Jessica Lange'),
('Jessica Rothe'),
('Jessica Stroup'),
('Jessica Sula'),
('Jessie James Grelle'),
('Jessie T. Usher'),
('Jillian Dion'),
('Jim Beaver'),
('Jim Carrey'),
('Jim O''Heir'),
('Jim Parsons'),
('Jim Rash'),
('Jimmi Simpson'),
('Jimmy Ortega'),
('Jimmy Shergill'),
('Jimmy Tandel'),
('Jira Banjara'),
('Jisshu Sengupta'),
('Joaquin Phoenix'),
('Jodi Lyn O''Keefe'),
('Jodie Comer'),
('Joe Chrest'),
('Joe Cornish'),
('Joe Cortese'),
('Joe Keery'),
('Joe Lo Truglio'),
('Joe Nieves'),
('Joe Tuttle'),
('Joe Wilkinson'),
('Joel McHale'),
('Joel McKinnon Miller'),
('Joely Richardson'),
('Joey Batey'),
('Joey King'),
('John Albright'),
('John Barrowman'),
('John Bradley'),
('John Carroll Lynch'),
('John Carty'),
('John Cassini'),
('John Clarence Stewart'),
('John David Washington'),
('John Glover'),
('John Gowans'),
('John Hawkes'),
('John Krasinski'),
('John Lacy'),
('John Lithgow'),
('John Mahoney'),
('John Marley'),
('John Mulaney'),
('John Ortiz'),
('John Randall'),
('John Ratzenberger'),
('John Ross Bowie'),
('John Schneider'),
('John Slattery'),
('John Travolta'),
('John Turturro'),
('John Ventimiglia'),
('Johnny Galecki'),
('Johnny Simmons'),
('Johnny Yong Bosch'),
('Jomon Thomas'),
('Jon Bernthal'),
('Jon Hamm'),
('Jon Kenny'),
('Jon Voight'),
('Jonah Bobo'),
('Jonah Hill'),
('Jonathan Aris'),
('Jonathan Banks'),
('Jonathan Camp'),
('Jonathan Groff'),
('Jonathan Marc Sherman'),
('Jonathan Parks Jordan'),
('Jonathan Pryce'),
('Jordan Claire Robbins'),
('Jordan Nagai'),
('Jordan Rodrigues'),
('Jordana Spiro'),
('Jorge Garcia'),
('Jorge Lendeborg Jr.'),
('Jorge Monterrosa'),
('Joseph Gordon-Levitt'),
('Joseph Lee'),
('Joseph Mazzello'),
('Josh Brolin'),
('Josh Helman'),
('Josh Holloway'),
('Josh Lucas'),
('Josh Pais'),
('Josh Radnor'),
('Joshua Henry'),
('Joshua Orpin'),
('Jovan Adepo'),
('Juan Murcia'),
('Jude Law'),
('Judith Light'),
('Juhan Ulfsak'),
('Julia Clarke'),
('Julia Denton'),
('Julia Garner'),
('Julia Greer'),
('Julia Hsu'),
('Julia Rayner'),
('Julia Stiles'),
('Julianne Moore'),
('Julie Benz'),
('Julie Hagerty'),
('Juliette Binoche'),
('Jun''ichi Suwabe'),
('June Malia'),
('June Squibb'),
('Junko Takeuchi'),
('Juno Temple'),
('Justice Smith'),
('Justin Briner'),
('Justin Cooper'),
('Justin H. Min'),
('Justin Hartley'),
('Justin Swain'),
('Justin Timberlake'),
('Jôji Yanami'),
('Jördis Triebel'),
('Kabir Sajid Shaikh'),
('Kacey Rohl'),
('Kai Lennox'),
('Kaitlyn Dever'),
('Kaito Ishikawa'),
('Kajol'),
('Kal-El Cage'),
('Kaley Cuoco'),
('Kamalinee Mukherjee'),
('Kamini Kaushal'),
('Kamu Mukherjee'),
('Kappei Yamaguchi'),
('Karamveer Kanwar'),
('Karan Soni'),
('Kareem Abdul-Jabbar'),
('Karen Fukuhara'),
('Karen Gillan'),
('Karen Kilgariff'),
('Karen Pittman'),
('Karl Urban'),
('Karoline Eichhorn'),
('Kasia Stelmach'),
('Kate Ashfield'),
('Kate Flannery'),
('Kate Higgins'),
('Kate Mara'),
('Kate McKinnon'),
('Kate Winslet'),
('Katee Sackhoff'),
('Katherine Langford'),
('Katherine O''Sullivan'),
('Kathy Bates'),
('Katie Amanda Keane'),
('Katie Cassidy'),
('Kay Kay Menon'),
('Kaya Scodelario'),
('Kayla Compton'),
('Kazuya Nakai'),
('Ke Huy Quan'),
('Keala Settle'),
('Keanu Reeves'),
('Keean Johnson'),
('Keegan-Michael Key'),
('Keir Mills'),
('Keira Knightley'),
('Keith David'),
('Keith Ferguson'),
('Keith William Richards'),
('Keke Palmer'),
('Kelli O''Hara'),
('Ken Garito'),
('Ken Jeong'),
('Ken Leung'),
('Ken Watanabe'),
('Kenny Chin'),
('Kenton Duty'),
('Kerry Condon'),
('Kerry Godliman'),
('Kevin Alejandro'),
('Kevin Corrigan'),
('Kevin Costner'),
('Kevin Hart'),
('Kevin Spacey'),
('Kevin Sussman'),
('Kevin West'),
('Kharaj Mukherjee'),
('Khary Payton'),
('Kieran Culkin'),
('Kiernan Shipka'),
('Kim Byung-cheol'),
('Kim Dickens'),
('Kimia Hosseini');

GO

INSERT INTO Actors (ActorName) VALUES
('Kimiko Glenn'),
('Kirk Thornton'),
('Kirron Kher'),
('Kirsten Dunst'),
('Kishô Taniyama'),
('Kit Harington'),
('Kobna Holdbrook-Smith'),
('Kola Bokinni'),
('Kristen Bell'),
('Kristen Wiig'),
('Kristin Kreuk'),
('Krysten Ritter'),
('Kulbhushan Kharbanda'),
('Kumail Nanjiani'),
('Kumud Mishra'),
('Kunal Nayyar'),
('Kurt Braunohler'),
('Kurt Egyiawan'),
('Kurt Fuller'),
('Kurt Koehler'),
('Kyle Chandler'),
('Kôki Uchiyama'),
('LaKeith Stanfield'),
('Lalit Parimoo'),
('Lamar Johnson'),
('Lana Condor'),
('Lane Erwin'),
('Lanny Flaherty'),
('Lara Jean Chorostecki'),
('Larisa Oleynik'),
('Larry Miller'),
('Lateef Crowder'),
('Laura Linney'),
('Laura Lovelace'),
('Laura Marano'),
('Laura Mennell'),
('Lauren German'),
('Laurence Fishburne'),
('Laurent Vernin'),
('Laurie Metcalf'),
('Laz Alonso'),
('Lee Byung-hun'),
('Lee Evans'),
('Lee Jung-jae'),
('Lee-Na Kwan'),
('Leigh Gill'),
('Leighton Meester'),
('Leila Hatami'),
('Leilani Shiu'),
('Lekh Tandon'),
('Lena Headey'),
('Leonardo DiCaprio'),
('Lesley-Ann Brandt'),
('Leslie David Baker'),
('Leslie Grossman'),
('Leslie Mann'),
('Leslie Nielsen'),
('Liang Wei-Hui-Duncan'),
('Liang Zhen'),
('Lil Rel Howery'),
('Lily Gladstone'),
('Lily James'),
('Lily Rabe'),
('Lily Tomlin'),
('Lin Shaye'),
('Linda Cardellini'),
('Lio Tipton'),
('Lisa Ann Walter'),
('Lisa Banes'),
('Lisa Emery'),
('Lisa Jakub'),
('Lisa Kudrow'),
('Lisa Vicari'),
('Lloyd Bridges'),
('Logan Dean'),
('Logan Lerman'),
('Lois Kelly-Miller'),
('Lois Smith'),
('Lorna Patterson'),
('Lorraine Bracco'),
('Louis Hofmann'),
('Louise Brealey'),
('Lucas Hedges'),
('Luci Christian'),
('Lucius Hoyos'),
('Lucy Davis'),
('Luis Guzmán'),
('Luke Brandon Field'),
('Luke Bromley'),
('Luke Hemsworth'),
('Luke Wilson'),
('Luna Lauren Velez'),
('Lyndsy Fonseca'),
('Lyne Renée'),
('Léa Seydoux'),
('M. Night Shyamalan'),
('Mackenzie Davis'),
('Mackenzie Foy'),
('Macon Blair'),
('Madhavi Mukherjee'),
('Mads Mikkelsen'),
('Maggie Gyllenhaal'),
('Maggie Wheeler'),
('Mahershala Ali'),
('Maia Reficco'),
('Maile Flanagan'),
('Maisie Williams'),
('Maja Schöne'),
('Makoto Furukawa'),
('Makrand Deshpande'),
('Malcolm McDowell'),
('Malin Akerman'),
('Manav Vij'),
('Mandy Moore'),
('Manoj Joshi'),
('Manu Malik'),
('Mara Wilson'),
('Maral Baniadam'),
('Marc Evan Jackson'),
('Marcia Gay Harden'),
('Marcos A. Ferraez'),
('Marcus Henderson'),
('Margaret Qualley'),
('Margarita Levieva'),
('Margo Moorer'),
('Margot Robbie'),
('Maria Bakalova'),
('Maria Bello'),
('Marika Casteel'),
('Marina Inoue'),
('Mario Van Peebles'),
('Marion Bailey'),
('Marion Cotillard'),
('Marisa Tomei'),
('Mark Gatiss'),
('Mark Margolis'),
('Mark Moses'),
('Mark Pellegrino'),
('Mark Ruffalo'),
('Mark Rylance'),
('Mark Sheppard'),
('Mark Wahlberg'),
('Mark Webber'),
('Markie Post'),
('Marlene Lawston'),
('Marlon Brando'),
('Marshall Manesh'),
('Martha Espinoza'),
('Martha MacIsaac'),
('Martin Donovan'),
('Martin Freeman'),
('Martin Sheen'),
('Martin Wallström'),
('Mary Agnes Nixon'),
('Mary Elizabeth Winstead'),
('Mary Lynn Rajskub'),
('Mary Mallen'),
('Masakazu Morita'),
('Masako Nozawa'),
('Masi Oka'),
('Master Abhijit'),
('Mathieu Amalric'),
('Matilda Tucker'),
('Matt Bomer'),
('Matt Damon'),
('Matt Dillon'),
('Matt Frewer'),
('Matt Jaynes'),
('Matt LeBlanc'),
('Matt Lutz'),
('Matt Smith'),
('Matt Walsh'),
('Matthew Erickson'),
('Matthew Fox'),
('Matthew Goode'),
('Matthew Gray Gubler'),
('Matthew Lawrence'),
('Matthew Macfadyen'),
('Matthew Maher'),
('Matthew McConaughey'),
('Matthew Modine'),
('Matthew Needham'),
('Matthew Perry'),
('Matthew Pruitt'),
('Matuse'),
('Maura Tierney'),
('Maureen Lipman'),
('Max Casella'),
('Maya G. Love'),
('Maya Hawke'),
('Mayim Bialik'),
('Mayumi Tanaka'),
('Megalyn Echikunwoke'),
('Megan Park'),
('Meghan Heffern'),
('Mehar Bano'),
('Mehdi Koushki'),
('Mel Gibson'),
('Melanie Lynskey'),
('Melissa Fumero'),
('Melissa Leo'),
('Melissa Rauch'),
('Melkote'),
('Meredith Hagner'),
('Merila Zare''i'),
('Merritt Wever'),
('Meryl Streep'),
('Mesfin Lamengo'),
('Micah Howard'),
('Michael Bolton'),
('Michael Buscemi'),
('Michael C. Hall'),
('Michael Caine'),
('Michael Cera'),
('Michael Chow'),
('Michael Conner Humphreys'),
('Michael Cristofer'),
('Michael Emerson'),
('Michael Fassbender'),
('Michael Imperioli'),
('Michael Keaton'),
('Michael Kelly'),
('Michael Mando'),
('Michael Marcus'),
('Michael McKean'),
('Michael Michele'),
('Michael Peña'),
('Michael Potts'),
('Michael Rosenbaum'),
('Michael Shannon'),
('Michael Vu'),
('Michael Wincott'),
('Michaela Coel'),
('Michaela Jaé  Rodriguez'),
('Michal Zebrowski'),
('Michelle Buteau'),
('Michelle Dockery'),
('Michelle Greenidge'),
('Michelle Monaghan'),
('Michelle Ruff'),
('Michelle Trachtenberg'),
('Michelle Williams'),
('Michelle Yeoh'),
('Mickey Sumner'),
('Miguel Herrán'),
('Mike Colter'),
('Mike Hatton'),
('Mike Manning'),
('Mike McFarland'),
('Milanka Brooks'),
('Millard Mitchell'),
('Millie Bobby Brown'),
('Milo Gibson'),
('Milo Ventimiglia'),
('Mimî M Khayisa'),
('Mina Sadati'),
('Minka Kelly'),
('Mir Sarwar'),
('Misha Collins'),
('Missi Pyle'),
('Missy Yager'),
('Misty Rosas'),
('Mitchell Ryan'),
('Mojtaba Pirzadeh'),
('Monica Dolan'),
('Monique Gabriela Curnen'),
('Morena Baccarin'),
('Morgan Brown'),
('Morgan Freeman'),
('Moritz Jahn'),
('Morse Diggs'),
('Moushumi Chatterjee'),
('Mukesh Khanna'),
('Mukesh Tiwari'),
('Murielle Telio'),
('Murray McArthur'),
('MyAnna Buring'),
('Mykelti Williamson'),
('Mélanie Laurent'),
('Nadia Afgan'),
('Nancy Carell'),
('Naomi Watts'),
('Narendra Jha'),
('Nargis Fakhri'),
('Natalia Dyer'),
('Natascha McElhone'),
('Natasha O''Keeffe'),
('Nathalie Baye'),
('Nathan Jones'),
('Nathan Mitchell'),
('Naveen Andrews'),
('Neal Huff'),
('Ned Dennehy'),
('Neena Kulkarni'),
('Neil Patrick Harris'),
('Nia Celeste'),
('Nicholas Braun'),
('Nicholas Hoult'),
('Nick Frost'),
('Nick Mohammed'),
('Nick Offerman'),
('Nico Parker'),
('Nicola Cunningham'),
('Nicole Britton'),
('Nikitin Dheer'),
('Nikki M. James'),
('Nikolaj Coster-Waldau'),
('Nilotpal Dey'),
('Nishant Dahiya'),
('Noah Centineo'),
('Noah Emmerich'),
('Noah Jupe'),
('Noah Schnapp'),
('Nobuhiko Okamoto'),
('Nona Gaye'),
('Nora Dunn'),
('Norbert Leo Butz'),
('Noriaki Sugiyama'),
('Odeya Rush'),
('Odiseas Georgiadis'),
('Oliver Farrelly'),
('Oliver Masucci'),
('Olivia Colman'),
('Olivia Cooke'),
('Olivia Williams'),
('Om Puri'),
('Oscar Isaac'),
('Oscar Lesage'),
('Oscar Nuñez'),
('Ossie Davis'),
('Osy Ikhile'),
('Otto'),
('P.J. Byrne'),
('Packy Lee'),
('Paresh Rawal'),
('Parineeti Chopra'),
('Paris Berelc'),
('Park Hae-soo'),
('Parmeet Sethi'),
('Parvin Dabas'),
('Pat Shortt'),
('Patricia Belcher'),
('Patricia Clarkson'),
('Patricia Kalember'),
('Patrick Fabian'),
('Patrick Fugit'),
('Patrick Mapel'),
('Patrick Wilson'),
('Patti Yasutake'),
('Paul Adelstein'),
('Paul Anderson'),
('Paul Benjamin'),
('Paul Blackthorne'),
('Paul Dano'),
('Paul G. Raymond'),
('Paul Herman'),
('Paul Lux'),
('Paul Romero'),
('Paul Rudd'),
('Paul Satterfield'),
('Paulina Gaitan'),
('Pawan Singh'),
('Payman Maadi'),
('Paz de la Huerta'),
('Pedro Alonso'),
('Pedro Pascal'),
('Peggy Roeder'),
('Penelope Wilton'),
('Penn Badgley'),
('Pete Postlethwaite'),
('Peter Anthony Tambakis'),
('Peter Coyote'),
('Peter Crombie'),
('Peter Dinklage'),
('Peter Friedman'),
('Peter Gallagher'),
('Peter Graves'),
('Peter Grosz'),
('Peter Krause'),
('Peter Serafinowicz'),
('Peter Wight'),
('Phil Dunster'),
('Phil LaMarr'),
('Philip Baker Hall'),
('Phoebe Tonkin'),
('Phyllis Smith'),
('Pierce Brosnan'),
('Piggy Chan'),
('Piper Perabo'),
('Pitobash'),
('Piyush Mishra'),
('Polly Holliday'),
('Pom Klementieff'),
('Portia Doubleday'),
('Prakash Belawadi'),
('Prateek Kapoor'),
('Priya Usman Khan'),
('Priyanka Chopra Jonas'),
('Puvisha Manoharan'),
('Quincy Tyler Bernstine'),
('R. Lee Ermey'),
('RJ Mitte'),
('Rachael Harris'),
('Rachael Taylor'),
('Rachel Boston'),
('Rachel Griffiths'),
('Rachel McAdams'),
('Rachica Oswal'),
('Radhika Apte'),
('Rafe Spall'),
('Raghubir Yadav'),
('Rainn Wilson'),
('Raj Zutshi'),
('Raja'),
('Rajat Kapoor'),
('Rajatabha Dutta'),
('Rakesh Kukreti'),
('Ralph Fiennes'),
('Rami Malek'),
('Ramiz Law'),
('Ranbir Kapoor'),
('Randall Park'),
('Rashida Jones'),
('Rasti Farooq'),
('Ratna Pathak Shah'),
('Ray Fisher'),
('Ray McKinnon'),
('Ray Romano'),
('Razak Khan'),
('Raúl Méndez'),
('Rebecca De Mornay'),
('Rebecca Ferguson'),
('Rebecca Hall'),
('Rebecca Williams'),
('Rebel Wilson'),
('Reg E. Cathey'),
('Reina Ueda'),
('Remo Girone'),
('Remy Holt'),
('Retta'),
('Rhea Seehorn'),
('Rhenzy Feliz'),
('Rhys Ifans'),
('Rich Ceraulo Ko'),
('Rich Sommer'),
('Richard Cetrone'),
('Richard Clarke'),
('Richard Conte'),
('Richard Donelly'),
('Richard Edson'),
('Richard Erdman'),
('Richard Gross'),
('Richard Hadfield'),
('Richard Pyros'),
('Richard Ridings'),
('Richard S. Castellano'),
('Richard Schiff'),
('Richmond Arquette'),
('Rick Gonzalez'),
('Ricky Adams'),
('Ricky Gervais'),
('Rico Bueno'),
('Riley Keough'),
('Rish Shah'),
('Rishi Kapoor'),
('Rita Moreno'),
('Ritu Arya'),
('Rob Benedict'),
('Rob Huebel'),
('Rob Lowe'),
('Rob Morgan'),
('Rob Riggle'),
('Rob Thomas'),
('Robbie Amell'),
('Robert De Niro'),
('Robert Downey Jr.'),
('Robert Duvall'),
('Robert Hays'),
('Robert Iler'),
('Robert John Burke'),
('Robert Knepper'),
('Robert Littman'),
('Robert Morse'),
('Robert Popper'),
('Robert Prosky'),
('Robert Sheehan'),
('Robert Stack'),
('Robin Bartlett'),
('Robin Greer'),
('Robin Lord Taylor'),
('Robin Williams'),
('Robin de Jesus'),
('Rockmond Dunbar'),
('Roger Aaron Brown'),
('Roman Griffin Davis'),
('Roman Guerriero'),
('Romany Malco'),
('Ron Cephas Jones'),
('Ron Dean'),
('Ron Perlman'),
('Ron Silver'),
('Ron Taylor'),
('Rooney Mara'),
('Roopa Ganguly'),
('Rory Culkin'),
('Rosa Salazar'),
('Rosamund Pike'),
('Rosario Dawson'),
('Rose Reynolds'),
('Rosemarie DeWitt'),
('Rosie Huntington-Whiteley'),
('Royce Pierreson'),
('Ruby Dee'),
('Rupert Graves'),
('Rupsa Banerjee'),
('Russell Crowe'),
('Russell Harvard'),
('Ruth Connell'),
('Ryan Gosling'),
('Ryan Hansen'),
('Ryan Potter'),
('Ryan Reynolds'),
('Ryosuke Higa'),
('Sacha Baron Cohen'),
('Sacha Dhawan'),
('Sahiba Bali'),
('Sahil Vedoliyaa'),
('Sahra Asadollahi'),
('Sajal Bhattacharya'),
('Sally Field'),
('Salmaan Peerzada'),
('Sam Anderson'),
('Sam Humphrey'),
('Sam Jones III'),
('Sam Rockwell'),
('Samantha Barks'),
('Samantha Mahurin'),
('Samantha Smith'),
('Samantha White'),
('Sameer Sharma'),
('Samiya Mumtaz'),
('Samuel L. Jackson'),
('Sander Rebane'),
('Sandra Bullock'),
('Sania Saeed'),
('Sanjana Sanghi'),
('Saoirse Ronan'),
('Sarah Paulson'),
('Sarah Snook'),
('Sarah Wayne Callies'),
('Sareh Bayat'),
('Sarina Farhadi'),
('Sarwat Gilani'),
('Sathyaraj'),
('Satish Shah'),
('Satya Krishnan'),
('Saurabh Shukla'),
('Scarlett Estevez'),
('Scarlett Johansson'),
('Scoot McNairy'),
('Scott Glenn'),
('Scott Grimes'),
('Scott Menville'),
('Scott Nicholson'),
('Scott Thompson'),
('Sean Bean'),
('Sean Pertwee'),
('Sean Ringgold'),
('Seann Conway'),
('Sebastian Arcelus'),
('Sebastian Maniscalco'),
('Sebastian Stan'),
('Selena Gomez'),
('Sendhil Ramamurthy'),
('Seth Rogen'),
('Shagufta Ali'),
('Shah Rukh Khan'),
('Shahab Hosseini'),
('Shahid Kapoor'),
('Shailen Mukherjee'),
('Shameik Moore'),
('Shammi Kapoor'),
('Shane Carruth'),
('Shane Powers'),
('Shane West'),
('Sharat Saxena'),
('Sharon Duncan-Brewster'),
('Sharon Rooney'),
('Shawar Ali'),
('Shea Whigham'),
('Sheaun McKinney'),
('Sheila Flitton'),
('Shelley Hennig'),
('Shernaz Patel'),
('Shia LaBeouf'),
('Shikha Jain'),
('Shirin Yazdanbakhsh'),
('Shraddha Kapoor'),
('Shreyas Talpade'),
('Shuzhen Zhao'),
('Shyamal Ghoshal'),
('Shôtarô Morikubo'),
('Sidharth Malhotra'),
('Sigourney Weaver'),
('Sikandar Kher'),
('Simon Helberg'),
('Simon Pegg'),
('Simone Missick'),
('Sione Kelepi'),
('Siri'),
('Skylar Gaertner'),
('Sobhita Dhulipala'),
('Sofia Hasmik'),
('Sofia Hublitz'),
('Sohail Sameer'),
('Songshen Zuo'),
('Sonny Valicenti'),
('Sonoya Mizuno'),
('Sonya Jehan'),
('Sophie Evans'),
('Sophie Perry'),
('Sophie Rundle'),
('Sophie Turner'),
('Soumitra Chatterjee'),
('Spike Lee'),
('Srikanth Polisetti'),
('Stacey Roca'),
('Stark Sands'),
('Stellan Skarsgård'),
('Stephan Kampwirth'),
('Stephane Fichet'),
('Stephanie Beatriz'),
('Stephanie Corneliussen'),
('Stephanie Hsu'),
('Stephanie Nadolny'),
('Stephanie Sheh'),
('Stephen Amell'),
('Stephen Blackehart'),
('Stephen Dorff'),
('Stephen McHattie'),
('Stephen McKinley Henderson'),
('Stephen Merchant'),
('Stephen Root'),
('Stephen Stucker'),
('Sterling Hayden'),
('Sterling Knight'),
('Steve Berg'),
('Steve Carell'),
('Steve Eastin'),
('Steve Prince'),
('Steve Staley'),
('Steve Toussaint'),
('Steven Michael Quezada'),
('Steven Van Zandt'),
('Steven Yeun'),
('Sumit Kaul'),
('Sun Zhi Hua-Hilton'),
('Suniel Shetty'),
('Sunita Mani'),
('Sunny Wu Jin Zahao'),
('Susan May Pratt'),
('Susan Park'),
('Swaroopa Ghosh'),
('Swoosie Kurtz'),
('T.J. Jagodowski'),
('Tabu'),
('Taika Waititi'),
('Taito Ban'),
('Takayo Fischer'),
('Takeshi Kaneshiro'),
('Talia Ryder'),
('Tallie Medel'),
('Tantoo Cardinal'),
('Tara Strong'),
('Taraji P. Henson'),
('Taran Killam'),
('Taraneh Alidoosti'),
('Taylor Kitsch'),
('Teagan Croft'),
('Ted Sutton'),
('Telvin Griffin'),
('Terence Rosemore'),
('Teresa Palmer'),
('Terrence Howard'),
('Terry Crews'),
('Terry Notary'),
('Terry O''Quinn'),
('Terry Walters'),
('Tessa Thompson'),
('Thandiwe Newton'),
('Theo James'),
('Theo Rossi'),
('Thom Shelton'),
('Thomas Haden Church'),
('Thomas Jay Ryan'),
('Thomas Law'),
('Thomas Lennon'),
('Thomas Morrison'),
('Thomasin McKenzie'),
('Tiffany Haddish'),
('Til Schweiger'),
('Tim Griffin'),
('Tim Roth'),
('Tim Zajaros'),
('Timothy Eulich'),
('Timothy John Smith'),
('Timothée Chalamet'),
('Tina Fey'),
('Tobias Menzies'),
('Toby Meuli'),
('Toheeb Jimoh'),
('Tom Basden'),
('Tom Berenger'),
('Tom Cavanagh'),
('Tom Choi'),
('Tom Davis'),
('Tom Ellis'),
('Tom Hanks'),
('Tom Hardy'),
('Tom Hiddleston'),
('Tom Hopper'),
('Tom Laflin'),
('Tom Morton'),
('Tom Pelphrey'),
('Tom Prior'),
('Tom Welling'),
('Tom Wilkinson'),
('Tom Wu'),
('Tomer Capone'),
('Tommie-Amber Pirie'),
('Tommy Kominik'),
('Toni Collette'),
('Tonita Castro'),
('Tony Beck'),
('Tony Cavalero'),
('Tony Dalton'),
('Tony Goldwyn'),
('Tony Leung Chiu-wai'),
('Tony Sirico'),
('Tony Way'),
('Toshiki Masuda'),
('Tracy Letts'),
('Trevor Morgan'),
('Tricia Helfer'),
('Trina Nishimura'),
('Triptii Dimri'),
('Trisha Gorman'),
('Troy Metcalf'),
('Tyler Hoechlin'),
('Tyler Perry'),
('Tyler Steelman'),
('Tzi Ma'),
('Ukee Washington'),
('Una Stubbs'),
('Utkarsh Ambudkar'),
('Vaishnavi Sharma'),
('Valerie Chow'),
('Vanessa Hudgens'),
('Vanessa Kirby'),
('Varun Dhawan'),
('Veronica Laux'),
('Viggo Mortensen'),
('Vikram Kapadia'),
('Vin Diesel'),
('Vincent D''Onofrio'),
('Vincent Gurzo'),
('Vincent Kartheiser'),
('Vinette Robinson'),
('Ving Rhames'),
('Vinnie Jones'),
('Viola Davis'),
('Vipin Sharma'),
('Virginia Gardner'),
('Virginia Loring Cooke'),
('Vivian Bang'),
('Von Lewis'),
('W. Earl Brown'),
('Wade Williams'),
('Wagner Moura'),
('Wai Ching Ho'),
('Wallace Shawn'),
('Wally Wingert'),
('Walton Goggins'),
('Wanja Mues'),
('Warren Finkelstein'),
('Wendee Lee'),
('Wentworth Miller'),
('Wes Chatham'),
('Wi Ha-joon'),
('Will Arnett'),
('Will Ferrell'),
('Will Smith'),
('Willa Holland'),
('Willem Dafoe'),
('William Dick'),
('William Fichtner'),
('Wilson Bethel'),
('Wilson Mbomio'),
('Winona Ryder'),
('Winston Duke'),
('Woody Harrelson'),
('Wrenn Schmidt'),
('Wunmi Mosaku'),
('X Mayo'),
('Yahya Abdul-Mateen II'),
('Yang Xuejian'),
('Yasiin Bey'),
('Yasushi Iwaki'),
('Yaya DaCosta'),
('Yongbo Jiang'),
('Young Mazino'),
('Yui Ishikawa'),
('Yumiko Kobayashi'),
('Yunjin Kim'),
('Yuri Lowenthal'),
('Yuriko Yamaguchi'),
('Yuvika Chaudhary'),
('Yvette Nicole Brown'),
('Yûki Kaji'),
('Yûko Minaguchi'),
('Zac Efron'),
('Zach Galifianakis'),
('Zachary Bailess'),
('Zachary Quinto'),
('Zachary Scott Ross'),
('Zack Gottsagen'),
('Zak Steiner'),
('Zakir Hussain'),
('Zazie Beetz'),
('Zendaya'),
('Zenobia Shroff'),
('Zhiming Huang'),
('Zoe Kazan'),
('Zooey Deschanel'),
('Zoë Kravitz'),
('Zoë Soul'),
('Álvaro Morte'),
('Úrsula Corberó');



GO 

-- Movies 


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



GO

-- Join Tables ( MovieGenres, MovieDirectors, MovieWriters, MovieActors )

-- Movie: There''s Something About Mary
DECLARE @MovieTitle VARCHAR(255) = 'There''s Something About Mary';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Romance');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Bobby Farrelly', 'Peter Farrelly');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Ed Decter', 'John J. Strauss',  'Ed Decter', 'John J. Strauss', 'Peter Farrelly', 'Bobby Farrelly');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Cameron Diaz';
SET @Character = 'Mary';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Matt Dillon';
SET @Character = 'Healy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ben Stiller';
SET @Character = 'Ted';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Lee Evans';
SET @Character = 'Tucker';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Chris Elliott';
SET @Character = 'Dom';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Lin Shaye';
SET @Character = 'Magda';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jeffrey Tambor';
SET @Character = 'Sully';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Markie Post';
SET @Character = 'Mary''s Mom';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Keith David';
SET @Character = 'Mary''s Dad';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'W. Earl Brown';
SET @Character = 'Warren';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('surgeon', 'romcom', 'stalker', 'dream girl', 'taboo', 'screwball comedy', 'frisbee', 'troubadour', 'intellectual disability');

GO
-- ============================================

-- Movie: Do the Right Thing
DECLARE @MovieTitle VARCHAR(255) = 'Do the Right Thing';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Drama');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Spike Lee');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Spike Lee');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Danny Aiello';
SET @Character = 'Sal';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ossie Davis';
SET @Character = 'Da Mayor';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ruby Dee';
SET @Character = 'Mother Sister';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Richard Edson';
SET @Character = 'Vito';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Giancarlo Esposito';
SET @Character = 'Buggin Out';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Spike Lee';
SET @Character = 'Mookie';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Bill Nunn';
SET @Character = 'Radio Raheem';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'John Turturro';
SET @Character = 'Pino';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Paul Benjamin';
SET @Character = 'ML';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Frankie Faison';
SET @Character = 'Coconut Sid';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('new york city', 'police brutality', 'hip-hop', 'italian american', 'culture clash', 'chaos', 'heat', 'street war', 'restaurant critic', 'radio transmission', 'punk rock', 'pizzeria', 'police operation', 'pizza', 'love', 'money', 'racism', 'brooklyn', 'new york city', 'heatwave');

GO
-- ============================================

-- Movie: Joker
DECLARE @MovieTitle VARCHAR(255) = 'Joker';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Crime', 'Drama', 'Thriller');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Todd Phillips');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Todd Phillips', 'Scott Silver',  'Bob Kane', 'Bill Finger', 'Jerry Robinson');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Joaquin Phoenix';
SET @Character = 'Arthur Fleck';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Robert De Niro';
SET @Character = 'Murray Franklin';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Zazie Beetz';
SET @Character = 'Sophie Dumond';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Frances Conroy';
SET @Character = 'Penny Fleck';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Brett Cullen';
SET @Character = 'Thomas Wayne';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Shea Whigham';
SET @Character = 'Detective Burke';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Bill Camp';
SET @Character = 'Detective Garrity';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Glenn Fleshler';
SET @Character = 'Randall';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Leigh Gill';
SET @Character = 'Gary';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Josh Pais';
SET @Character = 'Hoyt Vaughn';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('dreams', 'street gang', 'society', 'psychopath', 'clown', 'villain', 'based on comic', 'murder', 'psychological thriller', 'criminal mastermind', 'mental illness', 'anarchy', 'character study', 'clown makeup', 'subway train', 'social realism', 'supervillain', 'tv host', '1980s', 'mother son relationship', 'origin story', 'falling into madness', 'frightened', 'pretentious');

GO
-- ============================================

-- Movie: Mad Max: Fury Road
DECLARE @MovieTitle VARCHAR(255) = 'Mad Max: Fury Road';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Adventure', 'Sci-Fi', 'Thriller');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('George Miller');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('George Miller', 'Brendan McCarthy', 'Nick Lathouris');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Tom Hardy';
SET @Character = 'Max Rockatansky';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Charlize Theron';
SET @Character = 'Imperator Furiosa';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Nicholas Hoult';
SET @Character = 'Nux';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Hugh Keays-Byrne';
SET @Character = 'Immortan Joe';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Josh Helman';
SET @Character = 'Slit';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Nathan Jones';
SET @Character = 'Rictus Erectus';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Zoë Kravitz';
SET @Character = 'Toast the Knowing';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Rosie Huntington-Whiteley';
SET @Character = 'The Splendid Angharad';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Riley Keough';
SET @Character = 'Capable';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Abbey Lee';
SET @Character = 'The Dag';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('rescue', 'future', 'australia', 'chase', 'dystopia', 'post-apocalyptic future', 'survival', 'on the run', 'on the road', 'desert', 'convoy', 'peak oil', 'dark future', 'post-apocalyptic', 'car', 'suspenseful', 'intense', 'awestruck', 'commanding', 'hopeful');

GO
-- ============================================

-- Movie: The Fall Guy
DECLARE @MovieTitle VARCHAR(255) = 'The Fall Guy';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Comedy', 'Drama', 'Romance');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('David Leitch');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Glen A. Larson',  'Drew Pearce');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Ryan Gosling';
SET @Character = 'Colt Seavers';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Emily Blunt';
SET @Character = 'Jody Moreno';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Aaron Taylor-Johnson';
SET @Character = 'Tom Ryder';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Hannah Waddingham';
SET @Character = 'Gail Meyer';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Teresa Palmer';
SET @Character = 'Iggy Starr';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Stephanie Hsu';
SET @Character = 'Alma Milan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Winston Duke';
SET @Character = 'Dan Tucker';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ben Knight';
SET @Character = 'Dressler';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Matuse';
SET @Character = 'Doone';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Adam Dunn';
SET @Character = 'Nigel';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('stuntman', 'missing person', 'duringcreditsstinger', 'movie industry', 'action comedy', 'playful', 'based on tv series', 'grand', 'romantic', 'amused', 'farcical');

GO
-- ============================================

-- Movie: Monkey Man
DECLARE @MovieTitle VARCHAR(255) = 'Monkey Man';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Crime', 'Thriller');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Dev Patel');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Dev Patel', 'Paul Angunawela', 'John Collee',  'Dev Patel');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Dev Patel';
SET @Character = 'Kid';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Pitobash';
SET @Character = 'Alphonso';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jatin Malik';
SET @Character = 'Young Kid';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sikandar Kher';
SET @Character = 'Rana';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sobhita Dhulipala';
SET @Character = 'Sita';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Makrand Deshpande';
SET @Character = 'Baba Shakti';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ashwini Kalsekar';
SET @Character = 'Queenie';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Vipin Sharma';
SET @Character = 'Alpha';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Adithi Kalkunte';
SET @Character = 'Neela';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jomon Thomas';
SET @Character = 'Mirza';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('indian', 'revenge thriller', 'action thriller', 'suspenseful', 'night club', 'трансгендер', 'лгбт');

GO
-- ============================================

-- Movie: Singin'' in the Rain
DECLARE @MovieTitle VARCHAR(255) = 'Singin'' in the Rain';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Musical', 'Romance');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Stanley Donen', 'Gene Kelly');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Betty Comden', 'Adolph Green');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Gene Kelly';
SET @Character = 'Don Lockwood';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Donald O''Connor';
SET @Character = 'Cosmo Brown';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Debbie Reynolds';
SET @Character = 'Kathy Selden';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jean Hagen';
SET @Character = 'Lina Lamont';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Millard Mitchell';
SET @Character = 'R.F. Simpson';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Cyd Charisse';
SET @Character = 'Dancer';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Douglas Fowley';
SET @Character = 'Roscoe Dexter';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Rita Moreno';
SET @Character = 'Zelda Zanders';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Dawn Addams';
SET @Character = 'Teresa - a Lady-in-Waiting';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'John Albright';
SET @Character = 'Call Boy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('fan', 'musical', 'partner', 'film in film', 'hollywood', 'broadway', 'dancing in the street', 'burlesque', 'audience', 'chorus girl', 'diction coach', 'pearl necklace', 'flapper', 'silent film star', 'squeaky voice', 'christmas', '1920s', 'old hollywood', 'provocative', 'sentimental', 'amused', 'exuberant');

GO
-- ============================================

-- Movie: Dune: Part Two
DECLARE @MovieTitle VARCHAR(255) = 'Dune: Part Two';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Adventure', 'Drama', 'Sci-Fi');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Denis Villeneuve');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Denis Villeneuve', 'Jon Spaihts',  'Frank Herbert');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Timothée Chalamet';
SET @Character = 'Paul Atreides';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Zendaya';
SET @Character = 'Chani';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Rebecca Ferguson';
SET @Character = 'Jessica';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Javier Bardem';
SET @Character = 'Stilgar';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Josh Brolin';
SET @Character = 'Gurney Halleck';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Austin Butler';
SET @Character = 'Feyd-Rautha';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Florence Pugh';
SET @Character = 'Princess Irulan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Dave Bautista';
SET @Character = 'Beast Rabban';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Christopher Walken';
SET @Character = 'Emperor';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Léa Seydoux';
SET @Character = 'Lady Margot Fenring';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('epic', 'based on novel or book', 'fight', 'politics', 'sandstorm', 'sand', 'spice', 'chosen one', 'cult', 'sequel', 'romance', 'tragedy', 'distant future', 'tragic hero', 'creature', 'planet', 'desert', 'destiny', 'giant worm', 'space opera', 'sand dune', 'allegorical', 'messiah', 'fall from grace', 'shocking', 'domineering', 'vengeance', 'vindictive', 'cautionary', 'religious allegory', 'giant creature', 'power', 'grand', 'violence', 'suspenseful', 'intense', 'ambiguous', 'antagonistic', 'audacious', 'awestruck', 'bold', 'exuberant', 'foreboding', 'melodramatic');

GO
-- ============================================

-- Movie: Money, Guns, and a Merry Christmas
DECLARE @MovieTitle VARCHAR(255) = 'Money, Guns, and a Merry Christmas';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Romance');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Isabelle Almoyan';
SET @Character = 'Amanda';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Drew Ater';
SET @Character = 'Damian Blaine';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Bob Barna';
SET @Character = 'Craig';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Nicole Britton';
SET @Character = 'Anna';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Christian Brunetti';
SET @Character = 'Browne';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Julia Clarke';
SET @Character = 'Alice';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Lane Erwin';
SET @Character = 'Viper #1';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Dean Feldman';
SET @Character = 'Harvey';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jennifer Finley';
SET @Character = 'Guest #1';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Vincent Gurzo';
SET @Character = 'Harold';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========


-- No Data Available 

GO
-- ============================================

-- Movie: Meri Pyaari Bindu
DECLARE @MovieTitle VARCHAR(255) = 'Meri Pyaari Bindu';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Drama', 'Romance');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Akshay Roy');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Soumik Sen',  'Suprotim Sengupta',  'Suprotim Sengupta',  'Suprotim Sengupta');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Ayushmann Khurrana';
SET @Character = 'Abhimanyu Roy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Parineeti Chopra';
SET @Character = 'Bindu Shankarnarayanan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Nishant Dahiya';
SET @Character = 'Dhruv';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Amrita Bagchi';
SET @Character = 'Maulshree';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Prakash Belawadi';
SET @Character = 'Bindu''s Father';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Rajatabha Dutta';
SET @Character = 'Abhi''s Father';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'June Malia';
SET @Character = 'Bindu''s Mother';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kharaj Mukherjee';
SET @Character = '';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Aarnaa Sharma';
SET @Character = 'Young Bindu';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Aparajita Adhya';
SET @Character = 'Abhi''s Mother';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('writer''s block', 'bollywood');

GO
-- ============================================

-- Movie: Hasee Toh Phasee
DECLARE @MovieTitle VARCHAR(255) = 'Hasee Toh Phasee';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Romance');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Vinil Mathew');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Harshavardhan Kulkarni',  'Anurag Kashyap', 'Harshavardhan Kulkarni', 'Purva Naresh', 'Vinil Mathew');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Sidharth Malhotra';
SET @Character = 'Nikhil Bhardwaj';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Parineeti Chopra';
SET @Character = 'Meeta';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Adah Sharma';
SET @Character = 'Karishma';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Manoj Joshi';
SET @Character = 'Devesh Solanki - Meeta and Karishma''s Father';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sharat Saxena';
SET @Character = 'S.B Bharadwaj - Nikhil''s Father';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Neena Kulkarni';
SET @Character = 'Nikhil''s mother';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sameer Sharma';
SET @Character = 'Abhay';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Aariyan Gupta';
SET @Character = 'Vipul''s Son';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Amita Udgata';
SET @Character = 'Aunty Kaveri';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Anshikaa Shrivastava';
SET @Character = 'Young Meeta';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('romcom', 'family relationships', 'relationship', 'bollywood');

GO
-- ============================================

-- Movie: Wonka
DECLARE @MovieTitle VARCHAR(255) = 'Wonka';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Adventure', 'Comedy', 'Family', 'Fantasy', 'Musical');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Paul King');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Roald Dahl',  'Paul King',  'Simon Farnaby', 'Paul King');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Timothée Chalamet';
SET @Character = 'Willy Wonka';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Gustave Die';
SET @Character = 'Ship''s Engineer';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Murray McArthur';
SET @Character = 'Ship''s Captain';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Paul G. Raymond';
SET @Character = 'Map Seller';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Bertie Caplan';
SET @Character = 'Shoeshine Boy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Isy Suttie';
SET @Character = 'Fruit & Veg Vendor';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kobna Holdbrook-Smith';
SET @Character = 'Officer Affable';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Matilda Tucker';
SET @Character = 'Young Mother';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tom Davis';
SET @Character = 'Bleacher';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Olivia Colman';
SET @Character = 'Mrs. Scrubitt';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('chocolate', 'musical', 'prequel', 'nostalgic', 'duringcreditsstinger', 'cartel');

GO
-- ============================================

-- Movie: The Farewell
DECLARE @MovieTitle VARCHAR(255) = 'The Farewell';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Drama');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Lulu Wang');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Lulu Wang');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Shuzhen Zhao';
SET @Character = 'Nai Nai';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Awkwafina';
SET @Character = 'Billi';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'X Mayo';
SET @Character = 'Suze';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Hong Lu';
SET @Character = 'Little Nai Nai';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Hong Lin';
SET @Character = 'Doctor Wu';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tzi Ma';
SET @Character = 'Haiyan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Diana Lin';
SET @Character = 'Lu Jian';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Yang Xuejian';
SET @Character = 'Mr. Li';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Becca Khalil';
SET @Character = 'Shirley';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Yongbo Jiang';
SET @Character = 'Uncle Haibin';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('grandparent grandchild relationship', 'family relationships', 'wedding', 'east asian lead', 'family reunion', 'grandmother', 'chinese american', 'family gathering', 'ethical dilemma', 'woman director', 'lung cancer', 'deadly disease', 'relationships', 'personal relationships', 'grandmother granddaughter relationship', 'asian american');

GO
-- ============================================

-- Movie: Thor: Ragnarok
DECLARE @MovieTitle VARCHAR(255) = 'Thor: Ragnarok';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Adventure', 'Comedy', 'Fantasy', 'Sci-Fi');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Taika Waititi');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Eric Pearson', 'Craig Kyle', 'Christopher L. Yost',  'Stan Lee', 'Larry Lieber', 'Jack Kirby',  'Greg Pak',  'Walter Simonson',  'Carlo Pagulayan');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Chris Hemsworth';
SET @Character = 'Thor';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tom Hiddleston';
SET @Character = 'Loki';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Cate Blanchett';
SET @Character = 'Hela';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Idris Elba';
SET @Character = 'Heimdall';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jeff Goldblum';
SET @Character = 'Grandmaster';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tessa Thompson';
SET @Character = 'Valkyrie';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Karl Urban';
SET @Character = 'Skurge';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Mark Ruffalo';
SET @Character = 'Bruce Banner / Hulk';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Anthony Hopkins';
SET @Character = 'Odin';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Benedict Cumberbatch';
SET @Character = 'Doctor Strange';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('superhero', 'based on comic', 'sequel', 'alien planet', 'female villain', 'norse mythology', 'aftercreditsstinger', 'duringcreditsstinger', 'marvel cinematic universe (mcu)', 'norse god', 'loki');

GO
-- ============================================

-- Movie: The Perfect Date
DECLARE @MovieTitle VARCHAR(255) = 'The Perfect Date';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Romance');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Chris Nelson');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Steve Bloom',  'Randall Green');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Noah Centineo';
SET @Character = 'Brooks Rattigan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Laura Marano';
SET @Character = 'Celia Lieberman';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Odiseas Georgiadis';
SET @Character = 'Murph';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Camila Mendes';
SET @Character = 'Shelby Pace';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Matt Walsh';
SET @Character = 'Charlie Rattigan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Joe Chrest';
SET @Character = 'Harvey Lieberman';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Carrie Lazar';
SET @Character = 'Lillian Lieberman';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Alexander Biglane';
SET @Character = 'Tuna Melt on Seven Grain';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Blaine Kern III';
SET @Character = 'Franklin';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Zak Steiner';
SET @Character = 'Reece';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('adolescence', 'fake boyfriend', 'based on young adult novel');

GO
-- ============================================

-- Movie: The Lego Movie
DECLARE @MovieTitle VARCHAR(255) = 'The Lego Movie';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Animation', 'Action', 'Adventure', 'Comedy', 'Family', 'Fantasy', 'Sci-Fi');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Phil Lord', 'Christopher Miller');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Phil Lord', 'Christopher Miller',  'Dan Hageman', 'Kevin Hageman', 'Phil Lord', 'Christopher Miller',  'Ole Kirk Christiansen', 'Godtfred Kirk Christiansen', 'Jens Nygaard Knudsen');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Will Arnett';
SET @Character = 'Batman / Bruce Wayne';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Elizabeth Banks';
SET @Character = 'Wyldstyle / Lucy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Craig Berry';
SET @Character = 'Blake / Additional Voices';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Alison Brie';
SET @Character = 'Unikitty';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'David Burrows';
SET @Character = 'Octan Robot / Additional Voices';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Anthony Daniels';
SET @Character = 'C-3PO';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Charlie Day';
SET @Character = 'Benny';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Amanda Farinos';
SET @Character = 'Mom';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Keith Ferguson';
SET @Character = 'Han Solo';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Will Ferrell';
SET @Character = 'Lord Business / President Business / The Man Upstairs';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('friendship', 'parent child relationship', 'prophecy', 'superhero', 'villain', 'based on comic', 'part live action', 'based on toy', 'falling in love', 'anti villain', 'super power', 'good cop bad cop', 'duringcreditsstinger', 'live action and animation', 'lego', 'father son relationship', 'loving', 'mischievous', 'playful', 'irreverent', 'evil tyrant', 'witty', 'hilarious', 'whimsical', 'celebratory', 'euphoric', 'exhilarated', 'exuberant', 'ridiculous');

GO
-- ============================================

-- Movie: Gone Girl
DECLARE @MovieTitle VARCHAR(255) = 'Gone Girl';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Drama', 'Mystery', 'Thriller');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('David Fincher');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Gillian Flynn',  'Gillian Flynn');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Ben Affleck';
SET @Character = 'Nick Dunne';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Rosamund Pike';
SET @Character = 'Amy Dunne';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Neil Patrick Harris';
SET @Character = 'Desi Collings';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tyler Perry';
SET @Character = 'Tanner Bolt';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Carrie Coon';
SET @Character = 'Margo Dunne';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kim Dickens';
SET @Character = 'Detective Rhonda Boney';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Patrick Fugit';
SET @Character = 'Officer James Gilpin';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'David Clennon';
SET @Character = 'Rand Elliott';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Lisa Banes';
SET @Character = 'Marybeth Elliott';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Missi Pyle';
SET @Character = 'Ellen Abbott';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('infidelity', 'based on novel or book', 'wife', 'marriage crisis', 'investigation', 'disappearance', 'psychological thriller', 'whodunit', 'blunt', 'missing person', 'psychotic', 'search party', 'criminal lawyer', 'mysterious', 'detached', 'murder suspect', 'missing wife', 'satirical', 'perspective', 'manipulative woman', 'playful', 'killed during sex', 'irreverent', 'antagonistic', 'audacious', 'wry');

GO
-- ============================================

-- Movie: When We First Met
DECLARE @MovieTitle VARCHAR(255) = 'When We First Met';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Fantasy', 'Romance');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Ari Sandel');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('John Whittington');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Adam Devine';
SET @Character = 'Noah';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Alexandra Daddario';
SET @Character = 'Avery';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Shelley Hennig';
SET @Character = 'Carrie';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Andrew Bachelor';
SET @Character = 'Max';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Robbie Amell';
SET @Character = 'Ethan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Dean J. West';
SET @Character = 'Phil';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tony Cavalero';
SET @Character = 'Angus Young';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Delfeayo Marsalis';
SET @Character = 'Danny';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Chris Wylde';
SET @Character = 'Mr. Costigan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Daryn Kahn';
SET @Character = 'Drunk Hulk';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('time travel', 'halloween party', 'unrequited love', 'time loop', 'do over');

GO
-- ============================================

-- Movie: Night School
DECLARE @MovieTitle VARCHAR(255) = 'Night School';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Malcolm D. Lee');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Kevin Hart', 'Harry Ratchford', 'Joey Wells', 'Matthew Kellard', 'Nicholas Stoller', 'John Hamburg');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Kevin Hart';
SET @Character = 'Teddy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tiffany Haddish';
SET @Character = 'Carrie';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Rob Riggle';
SET @Character = 'Mackenzie';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Romany Malco';
SET @Character = 'Jaylen';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Taran Killam';
SET @Character = 'Stewart';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Megalyn Echikunwoke';
SET @Character = 'Lisa';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Al Madrigal';
SET @Character = 'Luis';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Mary Lynn Rajskub';
SET @Character = 'Theresa';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Keith David';
SET @Character = 'Gerald';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Anne Winters';
SET @Character = 'Mila';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('baseball bat', 'exam', 'car crash', 'dyslexia', 'teacher', 'prom', 'learning disability', 'night school', 'high school drop out', 'boxing ring');

GO
-- ============================================

-- Movie: Don''t Look Up
DECLARE @MovieTitle VARCHAR(255) = 'Don''t Look Up';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Drama', 'Sci-Fi');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Adam McKay');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Adam McKay',  'Adam McKay', 'David Sirota');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Leonardo DiCaprio';
SET @Character = 'Dr. Randall Mindy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jennifer Lawrence';
SET @Character = 'Kate Dibiasky';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Meryl Streep';
SET @Character = 'President Orlean';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Cate Blanchett';
SET @Character = 'Brie Evantee';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Rob Morgan';
SET @Character = 'Dr. Teddy Oglethorpe';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jonah Hill';
SET @Character = 'Jason Orlean';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Mark Rylance';
SET @Character = 'Peter Isherwell';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tyler Perry';
SET @Character = 'Jack Bremmer';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Timothée Chalamet';
SET @Character = 'Yule';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ron Perlman';
SET @Character = 'Benedict Drask';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('artificial intelligence (a.i.)', 'the white house', 'asteroid', 'climate change', 'satire', 'global warming', 'comet', 'end of the world', 'social commentary', 'social satire', 'meteorite', 'astronomer', 'disaster', 'teacher student relationship', 'denial', 'mass hysteria', 'aftercreditsstinger', 'duringcreditsstinger', 'amused', 'antagonistic');

GO
-- ============================================

-- Movie: Beef
DECLARE @MovieTitle VARCHAR(255) = 'Beef';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Drama');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Lee Sung Jin', 'Lee Sung Jin', 'Jean Kyoung Frazier');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Steven Yeun';
SET @Character = 'Danny Cho';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ali Wong';
SET @Character = 'Amy Lau';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Joseph Lee';
SET @Character = 'George Nakai';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Young Mazino';
SET @Character = 'Paul Cho';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Remy Holt';
SET @Character = 'June';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'David Choe';
SET @Character = 'Isaac Cho';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Patti Yasutake';
SET @Character = 'Fumi Nakai';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ashley Park';
SET @Character = 'Naomi';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Maria Bello';
SET @Character = 'Jordan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Justin H. Min';
SET @Character = 'Edwin';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: Shaun of the Dead
DECLARE @MovieTitle VARCHAR(255) = 'Shaun of the Dead';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Horror');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Edgar Wright');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Simon Pegg', 'Edgar Wright');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Simon Pegg';
SET @Character = 'Shaun';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kate Ashfield';
SET @Character = 'Liz';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Nick Frost';
SET @Character = 'Ed';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Lucy Davis';
SET @Character = 'Dianne';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Dylan Moran';
SET @Character = 'David';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Nicola Cunningham';
SET @Character = 'Mary';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Keir Mills';
SET @Character = 'Clubber 1';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Matt Jaynes';
SET @Character = 'Clubber 2';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Gavin Ferguson';
SET @Character = 'Football Kid';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Peter Serafinowicz';
SET @Character = 'Pete';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('london', 'england', 'dark comedy', 'satire', 'surrey', 'parody', 'slacker', 'friends', 'survival', 'zombie', 'cynical', 'survival horror', 'british pub', 'boyfriend girlfriend relationship', 'taunting', 'zombie apocalypse', 'frantic', 'satirical', 'desperate', 'anxious', 'playful', 'dramatic', 'suspenseful', 'witty', 'amused', 'defiant', 'exuberant', 'farcical');

GO
-- ============================================

-- Movie: Hot Fuzz
DECLARE @MovieTitle VARCHAR(255) = 'Hot Fuzz';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Comedy', 'Mystery', 'Thriller');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Edgar Wright');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Edgar Wright', 'Simon Pegg');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Simon Pegg';
SET @Character = 'Nicholas Angel';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Martin Freeman';
SET @Character = 'Met Sergeant';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Bill Nighy';
SET @Character = 'Met Chief Inspector';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Robert Popper';
SET @Character = '''Not'' Janine';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Joe Cornish';
SET @Character = 'Bob';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Chris Waitt';
SET @Character = 'Dave';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Eric Mason';
SET @Character = 'Bernard Cooper';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Billie Whitelaw';
SET @Character = 'Joyce Cooper';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Nick Frost';
SET @Character = 'PC Danny Butterman';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Peter Wight';
SET @Character = 'Roy Porter';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('countryside', 'police', 'village', 'arrest', 'parody', 'partner', 'murder', 'rural area', 'conspiracy', 'serial killer', 'gunfight', 'police force', 'buddy cop', 'accident');

GO
-- ============================================

-- Movie: The World''s End
DECLARE @MovieTitle VARCHAR(255) = 'The World''s End';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Comedy', 'Sci-Fi');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Edgar Wright');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Simon Pegg', 'Edgar Wright');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Thomas Law';
SET @Character = 'Young Gary';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Zachary Bailess';
SET @Character = 'Young Andy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jasper Levine';
SET @Character = 'Young Steven';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'James Tarpey';
SET @Character = 'Young Peter';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Luke Bromley';
SET @Character = 'Young Oliver';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sophie Evans';
SET @Character = 'Becky Salt';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Samantha White';
SET @Character = 'Erika Leekes';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Rose Reynolds';
SET @Character = 'Tracy Benson';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Richard Hadfield';
SET @Character = 'Young Shane';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Flora Slorach';
SET @Character = 'Young Sam';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('addiction', 'alcoholism', 'end of the world', 'apocalypse', 'homage', 'pub', 'hilarious', 'pub crawl');

GO
-- ============================================

-- Movie: Charulata
DECLARE @MovieTitle VARCHAR(255) = 'Charulata';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Drama', 'Romance');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Satyajit Ray');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Rabindranath Tagore',  'Satyajit Ray');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Soumitra Chatterjee';
SET @Character = 'Amal / Bhupati''s cousin';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Madhavi Mukherjee';
SET @Character = 'Charulata / wife';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Shailen Mukherjee';
SET @Character = 'Bhupati / husband';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Shyamal Ghoshal';
SET @Character = 'Umapada / Charulata''s brother';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Gitali Roy';
SET @Character = 'Mandakini / Umapada''s wife';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Dilip Bose';
SET @Character = 'Shashanka';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Nilotpal Dey';
SET @Character = 'Joydeb';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Bankim Ghosh';
SET @Character = 'Jagannath';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Bholanath Koyal';
SET @Character = 'Braja';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kamu Mukherjee';
SET @Character = 'Fellow Liberal at the Party';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('swing', 'writer', 'india', 'calcutta', 'newspaper editor', 'based on short story', '19th century', 'preserved film');

GO
-- ============================================

-- Movie: Andhadhun
DECLARE @MovieTitle VARCHAR(255) = 'Andhadhun';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Crime', 'Mystery', 'Thriller');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Sriram Raghavan');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Arijit Biswas',  'Yogesh Chandekar',  'Sriram Raghavan',  'Hemanth M. Rao',  'Pooja Ladha Surti',  'Olivier Treiner');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Ayushmann Khurrana';
SET @Character = 'Akash';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tabu';
SET @Character = 'Simi Sinha';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Radhika Apte';
SET @Character = 'Sophie';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Anil Dhawan';
SET @Character = 'Pramod Sinha';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Manav Vij';
SET @Character = 'DSP Manohar Jawanda';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Zakir Hussain';
SET @Character = 'Dr. Swami';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ashwini Kalsekar';
SET @Character = 'Rasika Jawanda';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Chhaya Kadam';
SET @Character = 'Saroja';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Pawan Singh';
SET @Character = 'Murli';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kabir Sajid Shaikh';
SET @Character = 'Bandu';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('pianist', 'witness to a crime', 'blind man', 'piano', 'bollywood');

GO
-- ============================================

-- Movie: Always Be My Maybe
DECLARE @MovieTitle VARCHAR(255) = 'Always Be My Maybe';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Romance');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Nahnatchka Khan');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Ali Wong', 'Randall Park', 'Michael Golamco');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Ali Wong';
SET @Character = 'Sasha';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Randall Park';
SET @Character = 'Marcus';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'James Saito';
SET @Character = 'Harry';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Michelle Buteau';
SET @Character = 'Veronica';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Vivian Bang';
SET @Character = 'Jenny';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Keanu Reeves';
SET @Character = 'Keanu Reeves';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Susan Park';
SET @Character = 'Judy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Daniel Dae Kim';
SET @Character = 'Brandon';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Karan Soni';
SET @Character = 'Tony';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Charlyne Yi';
SET @Character = 'Ginger';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('new york city', 'san francisco', 'california', 'restaurant owner', 'widower', 'childhood friends', 'chinese american', 'woman director', 'reconnect', 'rekindled romance', 'childhood sweethearts', 'asian american');

GO
-- ============================================

-- Movie: A Separation
DECLARE @MovieTitle VARCHAR(255) = 'A Separation';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Drama');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Asghar Farhadi');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Asghar Farhadi');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Leila Hatami';
SET @Character = 'Simin';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Payman Maadi';
SET @Character = 'Nader';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Shahab Hosseini';
SET @Character = 'Hojjat';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sareh Bayat';
SET @Character = 'Razieh';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sarina Farhadi';
SET @Character = 'Termeh';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Babak Karimi';
SET @Character = 'Interrogator';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ali-Asghar Shahbazi';
SET @Character = 'Nader''s Father';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kimia Hosseini';
SET @Character = 'Somayeh';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Shirin Yazdanbakhsh';
SET @Character = 'Simin''s Mother';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Merila Zare''i';
SET @Character = 'Miss Ghahrayi';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('emigration', 'class', 'alzheimer''s disease', 'teheran (tehran)', 'iran', 'money', 'maid', 'divorce', 'iran', 'caregiver', 'marital separation', 'family argument');

GO
-- ============================================

-- Movie: The Salesman
DECLARE @MovieTitle VARCHAR(255) = 'The Salesman';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Drama', 'Thriller');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Asghar Farhadi');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Asghar Farhadi');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Shahab Hosseini';
SET @Character = 'Emad';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Taraneh Alidoosti';
SET @Character = 'Rana';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Mina Sadati';
SET @Character = 'Sanam';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Babak Karimi';
SET @Character = 'Babak';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Maral Baniadam';
SET @Character = 'Kati';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Mojtaba Pirzadeh';
SET @Character = 'Majid';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Farid Sajjadi Hosseini';
SET @Character = 'Piremard';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Mehdi Koushki';
SET @Character = 'Siavash';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ehteram Boroumand';
SET @Character = 'Mrs. Shahnazari';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sahra Asadollahi';
SET @Character = 'Mojgan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('rape', 'trauma', 'assault', 'theater play', 'teheran (tehran)', 'iran', 'attack', 'iran', 'rape and revenge', 'death of a salesman');

GO
-- ============================================

-- Movie: Airplane!
DECLARE @MovieTitle VARCHAR(255) = 'Airplane!';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Jim Abrahams', 'David Zucker', 'Jerry Zucker');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Jim Abrahams', 'David Zucker', 'Jerry Zucker',  'Hall Bartlett',  'John C. Champion',  'Arthur Hailey',  'Arthur Hailey');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Kareem Abdul-Jabbar';
SET @Character = 'Roger Murdock';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Lloyd Bridges';
SET @Character = 'Steve McCroskey';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Peter Graves';
SET @Character = 'Captain Clarence Oveur';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Julie Hagerty';
SET @Character = 'Elaine Dickinson';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Robert Hays';
SET @Character = 'Ted Striker';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Leslie Nielsen';
SET @Character = 'Dr. Rumack';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Lorna Patterson';
SET @Character = 'Randy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Robert Stack';
SET @Character = 'Captain Rex Kramer';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Stephen Stucker';
SET @Character = 'Johnny Henshaw-Jacobs';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Otto';
SET @Character = 'Otto';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('chicago', 'illinois', 'post-traumatic stress disorder (ptsd)', 'airplane', 'cataclysm', 'guitar', 'alcohol', 'stewardess', 'taxi driver', 'passenger', 'fear of flying', 'pilot', 'medicine', 'air controller', 'landing', 'saxophone', 'autopilot', 'parody', 'spoof', 'food poisoning', 'los angeles', 'california', 'alcohol abuse', 'aftercreditsstinger', 'inflatable life raft', 'anarchic comedy');

GO
-- ============================================

-- Movie: The Sixth Sense
DECLARE @MovieTitle VARCHAR(255) = 'The Sixth Sense';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Drama', 'Mystery', 'Thriller');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('M. Night Shyamalan');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('M. Night Shyamalan');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Bruce Willis';
SET @Character = 'Malcolm Crowe';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Haley Joel Osment';
SET @Character = 'Cole Sear';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Toni Collette';
SET @Character = 'Lynn Sear';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Olivia Williams';
SET @Character = 'Anna Crowe';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Trevor Morgan';
SET @Character = 'Tommy Tammisimo';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Donnie Wahlberg';
SET @Character = 'Vincent Gray';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Peter Anthony Tambakis';
SET @Character = 'Darren';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jeffrey Zubernis';
SET @Character = 'Bobby';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Bruce Norris';
SET @Character = 'Stanley Cunningham';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Glenn Fitzgerald';
SET @Character = 'Sean';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('dying and death', 'child abuse', 'philadelphia', 'pennsylvania', 'sense of guilt', 'afterlife', 'marriage crisis', 'loss of loved one', 'confidence', 'psychology', 'paranormal phenomena', 'single', 'psychological thriller', 'cowardliness', 'single mother', 'school play', 'ghost', 'child', 'spiritism', 'ghost child', 'supernatural thriller');

GO
-- ============================================

-- Movie: Stranger Than Fiction
DECLARE @MovieTitle VARCHAR(255) = 'Stranger Than Fiction';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Drama', 'Fantasy', 'Romance');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Marc Forster');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Zach Helm');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Will Ferrell';
SET @Character = 'Harold Crick';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'William Dick';
SET @Character = 'IRS Co-Worker #1';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Guy Massey';
SET @Character = 'IRS Co-Worker #2';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Martha Espinoza';
SET @Character = 'IRS Co-Worker #3';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'T.J. Jagodowski';
SET @Character = 'IRS Co-Worker #4';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Peter Grosz';
SET @Character = 'IRS Co-Worker #5';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ricky Adams';
SET @Character = 'Young Boy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Christian Stolte';
SET @Character = 'Young Boy''s Father';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Denise Hughes';
SET @Character = 'Kronecker Bus Driver';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Peggy Roeder';
SET @Character = 'Polish Woman';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('literature', 'professor', 'writer''s block', 'love', 'fate', 'author', 'death', 'dying', 'novelist', 'publisher', 'what if', 'book', 'narrator');

GO
-- ============================================

-- Movie: Haider
DECLARE @MovieTitle VARCHAR(255) = 'Haider';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Crime', 'Drama', 'Thriller');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Vishal Bhardwaj');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('William Shakespeare',  'Basharat Peer', 'Vishal Bhardwaj',  'Vishal Bhardwaj');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Tabu';
SET @Character = 'Ghazala Meer';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Shahid Kapoor';
SET @Character = 'Haider Meer';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Shraddha Kapoor';
SET @Character = 'Arshia';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kay Kay Menon';
SET @Character = 'Khurram Meer';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Narendra Jha';
SET @Character = 'Dr. Hilal Meer';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kulbhushan Kharbanda';
SET @Character = 'Hussain Meer';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Lalit Parimoo';
SET @Character = 'Pervez Lone';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ashish Vidyarthi';
SET @Character = 'Brigadier T.S Murthy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Aamir Bashir';
SET @Character = 'Liyaqat, Arshia''s brother';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sumit Kaul';
SET @Character = '';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('death of father', 'revenge', 'kashmir conflict', 'hamlet', 'avenge', 'bollywood');

GO
-- ============================================

-- Movie: Seven
DECLARE @MovieTitle VARCHAR(255) = 'Seven';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Crime', 'Drama', 'Mystery', 'Thriller');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('David Fincher');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Andrew Kevin Walker');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Morgan Freeman';
SET @Character = 'Somerset';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Andrew Kevin Walker';
SET @Character = 'Dead Man at 1st Crime Scene';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Daniel Zacapa';
SET @Character = 'Detective Taylor at First Murder';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Brad Pitt';
SET @Character = 'Mills';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Gwyneth Paltrow';
SET @Character = 'Tracy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'John Cassini';
SET @Character = 'Officer Davis';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Bob Mack';
SET @Character = 'Gluttony Victim';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Peter Crombie';
SET @Character = 'Dr. O''Neill';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Reg E. Cathey';
SET @Character = 'Dr. Santiago';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'R. Lee Ermey';
SET @Character = 'Police Captain';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('rage and hate', 'police', 's.w.a.t.', 'sadism', 'self-fulfilling prophecy', 'psychopath', 'detective', 'investigation', 'insomnia', 'murder', 'serial killer', 'religion', 'shootout', 'corpse', 'macabre', 'seven deadly sins', 'depravity', 'neo-noir', 'sinister', 'ambiguous', 'ominous', 'seven: los siete pecados capitales');

GO
-- ============================================

-- Movie: The Truman Show
DECLARE @MovieTitle VARCHAR(255) = 'The Truman Show';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Drama');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Peter Weir');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Andrew Niccol');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Jim Carrey';
SET @Character = 'Truman Burbank';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Laura Linney';
SET @Character = 'Meryl Burbank / Hannah Gill';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Noah Emmerich';
SET @Character = 'Marlon';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Natascha McElhone';
SET @Character = 'Lauren / Sylvia';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Holland Taylor';
SET @Character = 'Truman''s Mother';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Brian Delate';
SET @Character = 'Truman''s Father';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Blair Slater';
SET @Character = 'Young Truman';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Peter Krause';
SET @Character = 'Lawrence';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Heidi Schanz';
SET @Character = 'Vivien';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ron Taylor';
SET @Character = 'Ron';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('escape', 'paranoia', 'dystopia', 'suspicion', 'video surveillance', 'deception', 'hidden camera', 'simulated reality', 'television producer', 'tv show in film', 'questioning', 'make believe', 'reflective', 'actor', 'tv show', 'dignified', 'allegory of the cave');

GO
-- ============================================

-- Movie: The Greatest Showman
DECLARE @MovieTitle VARCHAR(255) = 'The Greatest Showman';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Biography', 'Drama', 'Musical');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Michael Gracey');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Jenny Bicks', 'Bill Condon',  'Jenny Bicks');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Hugh Jackman';
SET @Character = 'P.T. Barnum';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Michelle Williams';
SET @Character = 'Charity Barnum';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Zac Efron';
SET @Character = 'Phillip Carlyle';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Zendaya';
SET @Character = 'Anne Wheeler';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Rebecca Ferguson';
SET @Character = 'Jenny Lind';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Austyn Johnson';
SET @Character = 'Caroline Barnum';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Cameron Seely';
SET @Character = 'Helen Barnum';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Keala Settle';
SET @Character = 'Lettie Lutz';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sam Humphrey';
SET @Character = 'Tom Thumb';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Yahya Abdul-Mateen II';
SET @Character = 'W.D. Wheeler';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('adultery', 'circus', 'musical', 'biography', 'rags to riches', 'based on true story', 'outcast', 'singing', 'dreamer', 'freak show', 'absurd', 'cliché', 'complicated');

GO
-- ============================================

-- Movie: Kapoor & Sons
DECLARE @MovieTitle VARCHAR(255) = 'Kapoor & Sons';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Crime', 'Drama', 'Family', 'Romance');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Shakun Batra');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Shakun Batra',  'Ayesha DeVitre',  'Spandan Mishra');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Rishi Kapoor';
SET @Character = 'Amarjeet Kapoor';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Rajat Kapoor';
SET @Character = 'Harsh Kapoor - Dad';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ratna Pathak Shah';
SET @Character = 'Sunita Kapoor - Mom';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Fawad Khan';
SET @Character = 'Rahul Kapoor';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sidharth Malhotra';
SET @Character = 'Arjun Kapoor';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Alia Bhatt';
SET @Character = 'Tia Malik';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Anuradha Chandan';
SET @Character = 'Anu';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Vikram Kapadia';
SET @Character = 'Shashi Chacha';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Anahita Oberoi';
SET @Character = 'Neetu Chachi';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Aakriti Dobhal';
SET @Character = 'Bunkoo';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('coming out', 'loneliness', 'bollywood');

GO
-- ============================================

-- Movie: Laila Majnu
DECLARE @MovieTitle VARCHAR(255) = 'Laila Majnu';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Drama', 'Romance');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Sajid Ali');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Imtiaz Ali',  'Sajid Ali');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Avinash Tiwary';
SET @Character = 'Qais Bhat / Majnu';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Triptii Dimri';
SET @Character = 'Laila';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sumit Kaul';
SET @Character = 'Ibban / Javed Parray';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Abrar Qazi';
SET @Character = 'Zaid';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sahiba Bali';
SET @Character = 'Ambreen';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Mir Sarwar';
SET @Character = 'Qais''s Brother-in-law';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Benjamin Gilani';
SET @Character = 'Ghulam Sarwar Bhat';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Parmeet Sethi';
SET @Character = 'Masood Ahmed Shahmiri';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Farhana Bhat';
SET @Character = 'Jasmeet';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Shagufta Ali';
SET @Character = 'Pufu';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('romance', 'love', 'bollywood');

GO
-- ============================================

-- Movie: Prisoners
DECLARE @MovieTitle VARCHAR(255) = 'Prisoners';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Crime', 'Drama', 'Mystery', 'Thriller');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Denis Villeneuve');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Aaron Guzikowski');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Hugh Jackman';
SET @Character = 'Keller Dover';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jake Gyllenhaal';
SET @Character = 'Detective Loki';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Viola Davis';
SET @Character = 'Nancy Birch';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Maria Bello';
SET @Character = 'Grace Dover';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Terrence Howard';
SET @Character = 'Franklin Birch';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Melissa Leo';
SET @Character = 'Holly Jones';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Paul Dano';
SET @Character = 'Alex Jones';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Dylan Minnette';
SET @Character = 'Ralph Dover';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Zoë Soul';
SET @Character = 'Eliza Birch';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Erin Gerasimovich';
SET @Character = 'Anna Dover';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('pennsylvania', 'usa', 'kidnapping', 'hostage', 'detective', 'maze', 'symbolism', 'investigation', 'georgia', 'beating', 'god', 'revenge', 'vigilante', 'rural area', 'crime scene', 'brutality', 'candlelight vigil', 'aggressive', 'animal cruelty', 'neo-noir', 'sex offender', 'child abduction');

GO
-- ============================================

-- Movie: What If
DECLARE @MovieTitle VARCHAR(255) = 'What If';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Romance');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Michael Dowse');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Elan Mastai',  'T.J. Dawe', 'Michael Rinaldi');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Daniel Radcliffe';
SET @Character = 'Wallace';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Zoe Kazan';
SET @Character = 'Chantry';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Megan Park';
SET @Character = 'Dalia';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Adam Driver';
SET @Character = 'Allan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Mackenzie Davis';
SET @Character = 'Nicole';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Rafe Spall';
SET @Character = 'Ben';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Lucius Hoyos';
SET @Character = 'Felix';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jemima Rooper';
SET @Character = 'Ellie';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tommie-Amber Pirie';
SET @Character = 'Gretchen';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Meghan Heffern';
SET @Character = 'Tabby';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('beach', 'hope', 'toronto', 'canada', 'cousin', 'dublin', 'ireland', 'travel', 'best friend', 'falling in love', 'boyfriend', 'job promotion', 'multiple perspectives', 'medical school', 'living with sibling', 'papercut animation', 'long term relationship', 'brother sister relationship', 'sister sister relationship', 'loving', 'college dropout', 'casual', 'animator', 'crush on friend', 'friend zone', 'comforting');

GO
-- ============================================

-- Movie: Vice Principals
DECLARE @MovieTitle VARCHAR(255) = 'Vice Principals';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Jody Hill', 'Jody Hill', 'Danny McBride');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Danny McBride';
SET @Character = 'Neal Gamby';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Walton Goggins';
SET @Character = 'Lee Russell';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Georgia King';
SET @Character = 'Amanda Snodgrass';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Shea Whigham';
SET @Character = 'Ray Liptrapp';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Maya G. Love';
SET @Character = 'Janelle Gamby';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sheaun McKinney';
SET @Character = 'Dayshawn';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Edi Patterson';
SET @Character = 'Ms. Abbott';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Busy Philipps';
SET @Character = 'Gale Liptrapp';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ashley Rae Spillers';
SET @Character = 'Janice Swift';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'James M. Connor';
SET @Character = 'Seychelles';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: Killers of the Flower Moon
DECLARE @MovieTitle VARCHAR(255) = 'Killers of the Flower Moon';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Crime', 'Drama', 'History', 'Mystery', 'Romance', 'Western');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Martin Scorsese');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Eric Roth', 'Martin Scorsese',  'David Grann');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Leonardo DiCaprio';
SET @Character = 'Ernest Burkhart';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Robert De Niro';
SET @Character = 'William Hale';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Lily Gladstone';
SET @Character = 'Mollie Burkhart';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jesse Plemons';
SET @Character = 'Tom White';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tantoo Cardinal';
SET @Character = 'Lizzie Q';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'John Lithgow';
SET @Character = 'Prosecutor Peter Leaward';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Brendan Fraser';
SET @Character = 'W.S. Hamilton';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Cara Jade Myers';
SET @Character = 'Anna';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Janae Collins';
SET @Character = 'Reta';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jillian Dion';
SET @Character = 'Minnie';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('husband wife relationship', 'based on novel or book', 'war veteran', 'fbi', 'greed', 'oklahoma', 'manipulation', 'native american', 'based on true story', 'murder', 'racism', 'series of murders', 'genocide', 'period drama', 'courtroom', 'guilt', 'true crime', 'oil industry', 'death of sister', 'catholicism', 'uncle nephew relationship', 'catholic guilt', 'shocking', '1920s', 'candid', 'grim', 'osage indian', 'gullibility', 'poisoning', 'complex', 'diabetes', 'revisionist western', 'cautionary', 'meta', 'grand', 'factual', 'western', 'depressing', 'empathetic', 'harsh', 'tragic');

GO
-- ============================================

-- Movie: Inside Llewyn Davis
DECLARE @MovieTitle VARCHAR(255) = 'Inside Llewyn Davis';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Drama', 'Music');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Ethan Coen', 'Joel Coen');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Joel Coen', 'Ethan Coen');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Oscar Isaac';
SET @Character = 'Llewyn Davis';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Carey Mulligan';
SET @Character = 'Jean';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Justin Timberlake';
SET @Character = 'Jim';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ethan Phillips';
SET @Character = 'Mitch Gorfein';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Robin Bartlett';
SET @Character = 'Lillian Gorfein';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Max Casella';
SET @Character = 'Pappi Corsicato';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jerry Grayson';
SET @Character = 'Mel Novikoff';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jeanine Serralles';
SET @Character = 'Joy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Adam Driver';
SET @Character = 'Al Cody';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Stark Sands';
SET @Character = 'Troy Nelson';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('depression', 'new york city', 'guitar', 'winter', 'cat', 'subway', 'pregnancy', 'overdose', 'dark comedy', 'melancholy', 'folk music', 'aspiring singer', 'grief', 'hitchhiker', 'cafe', 'recording', 'self expression', 'greenwich village', 'merchant marine', '1960s', 'couchsurfing', 'bleak', 'struggling musician', 'death of friend');

GO
-- ============================================

-- Movie: My Name Is Khan
DECLARE @MovieTitle VARCHAR(255) = 'My Name Is Khan';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Drama', 'Romance');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Karan Johar');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Shibani Bathija',  'Shibani Bathija', 'Niranjan Iyengar');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Shah Rukh Khan';
SET @Character = 'Rizvan Khan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kajol';
SET @Character = 'Mandira Khan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Katie Amanda Keane';
SET @Character = 'Sarah Garrick';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kenton Duty';
SET @Character = 'Reese Garrick';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Benny Nieves';
SET @Character = 'Detective Garcia';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Christopher B. Duncan';
SET @Character = 'President Barack Obama';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jimmy Shergill';
SET @Character = 'Zakir Khan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sonya Jehan';
SET @Character = 'Hasina Khan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Parvin Dabas';
SET @Character = 'Bobby Ahuja';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Arjun Mathur';
SET @Character = 'Raj Burman';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('autism', 'mumbai (bombay)', 'india', 'based on true story', 'prejudice', 'religion', 'disability', 'asperger''s syndrome', 'asian american', 'bollywood');

GO
-- ============================================

-- Movie: Hera Pheri
DECLARE @MovieTitle VARCHAR(255) = 'Hera Pheri';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Comedy', 'Crime', 'Drama');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Priyadarshan');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Siddique', 'Lal',  'Neeraj Vora',  'Neeraj Vora',  'Anand S. Vardhan');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Akshay Kumar';
SET @Character = 'Raju';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Suniel Shetty';
SET @Character = 'Ghanshyam';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Paresh Rawal';
SET @Character = 'Baburao Ganpatrao Apte';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tabu';
SET @Character = 'Anuradha Shivshankar Panikar';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Om Puri';
SET @Character = 'Khadak Singh';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Gulshan Grover';
SET @Character = 'Kabira';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kulbhushan Kharbanda';
SET @Character = 'Devi Prasad';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Mukesh Khanna';
SET @Character = 'Sub-Inspector Prakash';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Govardhan Asrani';
SET @Character = 'Bank Manager';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Razak Khan';
SET @Character = 'Chhota Chetan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('bollywood', 'classic bollywood');

GO
-- ============================================

-- Movie: Om Shanti Om
DECLARE @MovieTitle VARCHAR(255) = 'Om Shanti Om';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Comedy', 'Drama', 'Fantasy', 'Musical', 'Romance', 'Thriller');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Farah Khan');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Farah Khan',  'Mushtaq Shiekh', 'Farah Khan',  'Mayur Puri');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Shah Rukh Khan';
SET @Character = 'Om Prakash Makhija / Om Kapoor';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Arjun Rampal';
SET @Character = 'Mukesh ''Mike'' Mehra';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kirron Kher';
SET @Character = 'Bela Makhija';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Shreyas Talpade';
SET @Character = 'Pappu Master';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Deepika Padukone';
SET @Character = 'Shantipriya / Sandy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Bindu Desai';
SET @Character = 'Kamini';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jawed Sheikh';
SET @Character = 'Rajesh Kapoor';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Satish Shah';
SET @Character = 'Partho Roy - Film director';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Yuvika Chaudhary';
SET @Character = 'Dolly';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Shawar Ali';
SET @Character = 'Self';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('psychopath', '1970s', 'musical', 'reincarnation', 'sociopath', 'revenge', 'betrayal', 'disco', 'predator turns victim', 'unlikely lovers', 'woman director', 'desire for fame', '2000s', 'crossover', 'bollywood');

GO
-- ============================================

-- Movie: 17 Again
DECLARE @MovieTitle VARCHAR(255) = '17 Again';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Drama', 'Fantasy', 'Romance', 'Sport');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Burr Steers');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Jason Filardi');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Zac Efron';
SET @Character = 'Mike O''Donnell';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Leslie Mann';
SET @Character = 'Scarlet';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Thomas Lennon';
SET @Character = 'Ned Gold';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Matthew Perry';
SET @Character = 'Mike O''Donnell';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tyler Steelman';
SET @Character = 'Ned Gold';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Allison Miller';
SET @Character = 'Scarlet';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sterling Knight';
SET @Character = 'Alex';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Michelle Trachtenberg';
SET @Character = 'Maggie';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Adam Gregory';
SET @Character = 'Dom';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Hunter Parrish';
SET @Character = 'Stan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('high school', 'affectation', 'fake identity', 'bullying', 'high school sports', 'adult as a child', 'do over', 'age change', 'lighthearted', 'amused', 'enchant');

GO
-- ============================================

-- Movie: Tenet
DECLARE @MovieTitle VARCHAR(255) = 'Tenet';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Sci-Fi', 'Thriller');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Christopher Nolan');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Christopher Nolan');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Juhan Ulfsak';
SET @Character = 'Passenger';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jefferson Hall';
SET @Character = 'Well-Dressed Man';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ivo Uukkivi';
SET @Character = 'Uniformed Official';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Andrew Howard';
SET @Character = 'Driver';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'John David Washington';
SET @Character = 'Protagonist';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Rich Ceraulo Ko';
SET @Character = 'SWAT / Target';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jonathan Camp';
SET @Character = 'SWAT 2';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Wes Chatham';
SET @Character = 'SWAT 3';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sander Rebane';
SET @Character = 'Ukrainian SWAT';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Martin Donovan';
SET @Character = 'Fay';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('assassin', 'espionage', 'spy', 'time travel', 'mumbai (bombay)', 'india', 'arms dealer', 'terrorism', 'terrorist attack', 'nuclear weapons', 'terrorist plot', 'backwards', 'alternate timeline', 'oslo', 'norway', 'time paradox', 'kyiv (kiev)', 'ukraine');

GO
-- ============================================

-- Movie: Swiss Army Man
DECLARE @MovieTitle VARCHAR(255) = 'Swiss Army Man';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Drama', 'Fantasy', 'Romance');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Daniel Kwan', 'Daniel Scheinert');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Daniel Scheinert', 'Daniel Kwan');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Paul Dano';
SET @Character = 'Hank';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Daniel Radcliffe';
SET @Character = 'Manny';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Mary Elizabeth Winstead';
SET @Character = 'Sarah';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Antonia Ribero';
SET @Character = 'Crissie';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Timothy Eulich';
SET @Character = 'Preston';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Richard Gross';
SET @Character = 'Hank''s Dad';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Marika Casteel';
SET @Character = 'Reporter';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Andy Hull';
SET @Character = 'Cameraman';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Aaron Marshall';
SET @Character = 'Officer #1';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Shane Carruth';
SET @Character = 'Coroner';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('beach', 'friends', 'survival', 'dead body', 'corpse', 'deserted island', 'buddy comedy', 'fart');

GO
-- ============================================

-- Movie: Catch Me If You Can
DECLARE @MovieTitle VARCHAR(255) = 'Catch Me If You Can';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Biography', 'Crime', 'Drama');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Steven Spielberg');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Frank Abagnale Jr.', 'Stan Redding',  'Jeff Nathanson');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Leonardo DiCaprio';
SET @Character = 'Frank Abagnale Jr.';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tom Hanks';
SET @Character = 'Carl Hanratty';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Christopher Walken';
SET @Character = 'Frank Abagnale';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Martin Sheen';
SET @Character = 'Roger Strong';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Nathalie Baye';
SET @Character = 'Paula Abagnale';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Amy Adams';
SET @Character = 'Brenda Strong';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'James Brolin';
SET @Character = 'Jack Barnes';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Brian Howe';
SET @Character = 'Earl Amdursky';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Frank John Hughes';
SET @Character = 'Tom Fox';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Steve Eastin';
SET @Character = 'Paul Morgan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('fbi', 'con man', 'biography', 'based on true story', 'con artist', 'attempted jailbreak', 'engagement party', 'mislaid trust', 'christmas', 'bank fraud', 'conman', 'suspenseful', 'fraudster');

GO
-- ============================================

-- Movie: Mrs. Doubtfire
DECLARE @MovieTitle VARCHAR(255) = 'Mrs. Doubtfire';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Drama');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Chris Columbus');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Anne Fine',  'Randi Mayem Singer', 'Leslie Dixon');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Robin Williams';
SET @Character = 'Daniel Hillard / Mrs. Doubtfire';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sally Field';
SET @Character = 'Miranda Hillard';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Pierce Brosnan';
SET @Character = 'Stuart Dunmeyer';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Harvey Fierstein';
SET @Character = 'Frank Hillard';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Polly Holliday';
SET @Character = 'Gloria Chaney';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Lisa Jakub';
SET @Character = 'Lydia Hillard';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Matthew Lawrence';
SET @Character = 'Chris Hillard';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Mara Wilson';
SET @Character = 'Natalie Hillard';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Robert Prosky';
SET @Character = 'Jonathan Lundy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Anne Haney';
SET @Character = 'Mrs. Sellner';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('mask', 'parent child relationship', 'san francisco', 'california', 'social worker', 'transvestite', 'nanny', 'restaurant', 'fake identity', 'custody battle', 'responsibility', 'voice acting', 'divorced couple');

GO
-- ============================================

-- Movie: Split
DECLARE @MovieTitle VARCHAR(255) = 'Split';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Horror', 'Thriller');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('M. Night Shyamalan');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('M. Night Shyamalan');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'James McAvoy';
SET @Character = 'Dennis / Patricia / Hedwig / The Beast / Kevin Wendell Crumb / Barry / Orwell / Jade';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Anya Taylor-Joy';
SET @Character = 'Casey Cooke';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Betty Buckley';
SET @Character = 'Dr. Karen Fletcher';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Haley Lu Richardson';
SET @Character = 'Claire Benoit';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jessica Sula';
SET @Character = 'Marcia';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Izzie Coffey';
SET @Character = 'Five-Year-Old Casey';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Brad William Henke';
SET @Character = 'Uncle John';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sebastian Arcelus';
SET @Character = 'Casey''s Father';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Neal Huff';
SET @Character = 'Mr. Benoit';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ukee Washington';
SET @Character = 'News Anchor';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('child abuse', 'philadelphia', 'pennsylvania', 'kidnapping', 'gore', 'sequel', 'stalking', 'teenage girl', 'super power', 'mental illness', 'split personality', 'multiple personality', 'traumatic childhood', 'dissociative identity disorder', 'defiant');

GO
-- ============================================

-- Movie: Signs
DECLARE @MovieTitle VARCHAR(255) = 'Signs';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Drama', 'Mystery', 'Sci-Fi', 'Thriller');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('M. Night Shyamalan');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('M. Night Shyamalan');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Mel Gibson';
SET @Character = 'Graham Hess';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Joaquin Phoenix';
SET @Character = 'Merrill Hess';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Rory Culkin';
SET @Character = 'Morgan Hess';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Abigail Breslin';
SET @Character = 'Bo Hess';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Cherry Jones';
SET @Character = 'Officer Paski';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'M. Night Shyamalan';
SET @Character = 'Ray Reddy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Patricia Kalember';
SET @Character = 'Colleen Hess';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ted Sutton';
SET @Character = 'SFC Cunningham';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Merritt Wever';
SET @Character = 'Tracey Abernathy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Lanny Flaherty';
SET @Character = 'Mr. Nathan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('farm', 'faith', 'symbolism', 'miracle', 'family relationships', 'alien', 'grief', 'rural area', 'alien invasion', 'crop circle', 'alien attack', 'death of wife', 'loss of faith', 'alien encounter', 'anxious', 'suspenseful', 'foreboding');

GO
-- ============================================

-- Movie: The Gentlemen
DECLARE @MovieTitle VARCHAR(255) = 'The Gentlemen';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Comedy', 'Crime');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Guy Ritchie', 'Guy Ritchie', 'Matthew Read');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Theo James';
SET @Character = 'Eddie Horniman';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kaya Scodelario';
SET @Character = 'Susie Glass';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Daniel Ings';
SET @Character = 'Freddy Horniman';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Joely Richardson';
SET @Character = 'Lady Sabrina';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Vinnie Jones';
SET @Character = 'Geoff Seacombe';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Michael Vu';
SET @Character = 'Jimmy / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Harry Goodwins';
SET @Character = 'Jack Glass';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Stephane Fichet';
SET @Character = 'Mr. Lawrence';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Logan Dean';
SET @Character = 'Blanket';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Chanel Cresswell';
SET @Character = 'Tammy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: Green Book
DECLARE @MovieTitle VARCHAR(255) = 'Green Book';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Biography', 'Comedy', 'Drama', 'Music');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Peter Farrelly');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Nick Vallelonga', 'Brian Hayes Currie', 'Peter Farrelly');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Viggo Mortensen';
SET @Character = 'Tony Lip';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Mahershala Ali';
SET @Character = 'Dr. Donald Shirley';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Linda Cardellini';
SET @Character = 'Dolores';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sebastian Maniscalco';
SET @Character = 'Johnny Venere';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Dimiter D. Marinov';
SET @Character = 'Oleg';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Mike Hatton';
SET @Character = 'George';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'P.J. Byrne';
SET @Character = 'Record Exec';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Joe Cortese';
SET @Character = 'Gio Loscudo';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Mary Agnes Nixon';
SET @Character = 'Copa Coat Check Girl';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Von Lewis';
SET @Character = 'Bobby Rydell';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('friendship', 'southern usa', 'road trip', 'racism', 'pianist', 'driver', 'lgbt', 'road movie', 'music tour', '1960s', 'roadtrip', 'gay theme', 'feel good');

GO
-- ============================================

-- Movie: The Fundamentals of Caring
DECLARE @MovieTitle VARCHAR(255) = 'The Fundamentals of Caring';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Drama');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Rob Burnett');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Rob Burnett',  'Jonathan Evison');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Alex Huff';
SET @Character = 'Jodi';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Donna Biscoe';
SET @Character = 'Caregiving Instructor';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Paul Rudd';
SET @Character = 'Ben Benjamin';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Julia Denton';
SET @Character = 'Janet';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jennifer Ehle';
SET @Character = 'Elsa';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Craig Roberts';
SET @Character = 'Trevor';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ashley White';
SET @Character = 'Cute Travel Channel Girl';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Matthew Pruitt';
SET @Character = 'TV Reporter';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Alan Boell';
SET @Character = 'Courier';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Selena Gomez';
SET @Character = 'Dot';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('wheelchair', 'affectation', 'road trip', 'caregiver', 'disability', 'muscular dystrophy', 'approving', 'comforting');

GO
-- ============================================

-- Movie: The Peanut Butter Falcon
DECLARE @MovieTitle VARCHAR(255) = 'The Peanut Butter Falcon';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Adventure', 'Comedy', 'Drama');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Tyler Nilson', 'Michael Schwartz');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Tyler Nilson', 'Michael Schwartz');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Zack Gottsagen';
SET @Character = 'Zak';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ann Pierce';
SET @Character = 'Rosemary';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Dakota Johnson';
SET @Character = 'Eleanor';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Bruce Dern';
SET @Character = 'Carl';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Shia LaBeouf';
SET @Character = 'Tyler';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Thomas Haden Church';
SET @Character = 'Salt Water Redneck';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Rob Thomas';
SET @Character = 'Winkie';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jon Bernthal';
SET @Character = 'Mark';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tim Zajaros';
SET @Character = 'Orderly';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'John Hawkes';
SET @Character = 'Duncan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('escape', 'runaway', 'wrestling', 'down syndrome', 'on the run', 'wrestling coach', 'raft', 'nursing home', 'disability', 'dream come true', 'escape plan', 'southern gothic');

GO
-- ============================================

-- Movie: Chennai Express
DECLARE @MovieTitle VARCHAR(255) = 'Chennai Express';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Comedy', 'Romance');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Rohit Shetty');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('K. Subhash',  'Yunus Sajawal',  'Robin Bhatt',  'Farhad Samji', 'Sajid',  'Madhiyalagan Subbaiah');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Deepika Padukone';
SET @Character = 'Meenalochni ''Meenamma'' Azhagusundaram';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Shah Rukh Khan';
SET @Character = 'Rahul Mithaiwala';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Nikitin Dheer';
SET @Character = 'Tangaballi';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sathyaraj';
SET @Character = 'Durgeshwara ''Durgesh'' Azhagusundaram';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Mukesh Tiwari';
SET @Character = 'Inspector Shamsher Singh';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Lekh Tandon';
SET @Character = 'Bhishambhar Mithaiwala';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kamini Kaushal';
SET @Character = 'Neetu Bhishambhar Mithaiwala';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Puvisha Manoharan';
SET @Character = 'Radhika ''Radha'' Azhagusundaram';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Manu Malik';
SET @Character = 'Baman';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Rakesh Kukreti';
SET @Character = 'Bobby';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('temple', 'grandfather', 'romantic rivalry', 'ashes', 'journey', 'bollywood');

GO
-- ============================================

-- Movie: The Dark Knight Rises
DECLARE @MovieTitle VARCHAR(255) = 'The Dark Knight Rises';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Crime', 'Drama', 'Thriller');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Christopher Nolan');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Jonathan Nolan', 'Christopher Nolan',  'Christopher Nolan', 'David S. Goyer',  'Bob Kane');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Christian Bale';
SET @Character = 'Bruce Wayne';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Gary Oldman';
SET @Character = 'Commissioner Gordon';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tom Hardy';
SET @Character = 'Bane';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Joseph Gordon-Levitt';
SET @Character = 'Blake';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Anne Hathaway';
SET @Character = 'Selina';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Marion Cotillard';
SET @Character = 'Miranda';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Morgan Freeman';
SET @Character = 'Fox';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Michael Caine';
SET @Character = 'Alfred';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Matthew Modine';
SET @Character = 'Foley';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Alon Aboutboul';
SET @Character = 'Dr. Pavel';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('airplane', 'fight', 'burglar', 'hostage', 'secret identity', 'crime fighter', 'superhero', 'villainess', 'time bomb', 'based on comic', 'cover-up', 'vigilante', 'tragic hero', 'mobile', 'terrorism', 'destruction', 'fighting', 'criminal underworld', 'cat burglar', 'flood');

GO
-- ============================================

-- Movie: Rush Hour
DECLARE @MovieTitle VARCHAR(255) = 'Rush Hour';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Comedy', 'Crime', 'Thriller');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Brett Ratner');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Ross LaManna',  'Jim Kouf', 'Ross LaManna');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Ken Leung';
SET @Character = 'Sang';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jackie Chan';
SET @Character = 'Lee';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tom Wilkinson';
SET @Character = 'Griffin / Juntao';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tzi Ma';
SET @Character = 'Consul Han';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Robert Littman';
SET @Character = 'First Caucasian';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Michael Chow';
SET @Character = 'Dinner Guest';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Julia Hsu';
SET @Character = 'Soo Yung';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Chris Tucker';
SET @Character = 'Carter';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Chris Penn';
SET @Character = 'Clive';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kai Lennox';
SET @Character = 'Cop at Diner';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('martial arts', 'fbi', 'two man army', 'chinese mafia', 'cop', 'los angeles', 'california', 'east asian lead', 'buddy cop', 'consul', 'crime lord', 'art treasures', 'child kidnapping', 'duringcreditsstinger', 'action hero');

GO
-- ============================================

-- Movie: Watchmen
DECLARE @MovieTitle VARCHAR(255) = 'Watchmen';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Drama', 'Mystery', 'Sci-Fi');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Zack Snyder');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Dave Gibbons',  'David Hayter', 'Alex Tse');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Malin Akerman';
SET @Character = 'Laurie Jupiter / Silk Spectre II';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Billy Crudup';
SET @Character = 'Dr. Manhattan / Jon Osterman';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Matthew Goode';
SET @Character = 'Adrian Veidt / Ozymandias';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jackie Earle Haley';
SET @Character = 'Rorschach';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jeffrey Dean Morgan';
SET @Character = 'Edward Blake / Comedian';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Patrick Wilson';
SET @Character = 'Dan Dreiberg / Nite Owl';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Carla Gugino';
SET @Character = 'Sally Jupiter / Silk Spectre';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Matt Frewer';
SET @Character = 'Moloch';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Stephen McHattie';
SET @Character = 'Hollis Mason';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Laura Mennell';
SET @Character = 'Janey Slater';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('usa president', 'nuclear war', 'mass murder', 'secret identity', 'narration', 'soviet union', 'melancholy', 'retirement', 'based on comic', 'conspiracy', 'animated scene', 'doomsday', 'masked vigilante', 'doomsday clock', 'red square', '1980s', 'intense', 'admiring', 'assertive');

GO
-- ============================================

-- Movie: Sucker Punch
DECLARE @MovieTitle VARCHAR(255) = 'Sucker Punch';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Adventure', 'Fantasy');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Zack Snyder');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Zack Snyder', 'Steve Shibuya',  'Zack Snyder');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Emily Browning';
SET @Character = 'Babydoll';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Abbie Cornish';
SET @Character = 'Sweet Pea';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jena Malone';
SET @Character = 'Rocket';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Vanessa Hudgens';
SET @Character = 'Blondie';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jamie Chung';
SET @Character = 'Amber';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Carla Gugino';
SET @Character = 'Dr. Vera Gorski';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Oscar Isaac';
SET @Character = 'Blue Jones';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jon Hamm';
SET @Character = 'High Roller / Doctor';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Scott Glenn';
SET @Character = 'Wise Man';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Richard Cetrone';
SET @Character = 'CJ';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('samurai', 'escape', 'asylum', 'brothel', 'sword fight', 'dragon', 'robot', 'inmate', 'lobotomy', 'war zone', 'abusive stepfather', 'rape culture', 'alternate reality');

GO
-- ============================================

-- Movie: The Theory of Everything
DECLARE @MovieTitle VARCHAR(255) = 'The Theory of Everything';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Biography', 'Drama', 'Romance');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('James Marsh');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Anthony McCarten',  'Jane Hawking');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Eddie Redmayne';
SET @Character = 'Stephen Hawking';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Felicity Jones';
SET @Character = 'Jane Hawking';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tom Prior';
SET @Character = 'Robert Hawking - Age 17';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sophie Perry';
SET @Character = 'Lucy Hawking - Age 14';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Finlay Wright-Stephens';
SET @Character = 'Timothy Hawking - Age 8';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Harry Lloyd';
SET @Character = 'Brian';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Alice Orr-Ewing';
SET @Character = 'Diana King';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'David Thewlis';
SET @Character = 'Dennis Sciama';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Thomas Morrison';
SET @Character = 'Carter';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Michael Marcus';
SET @Character = 'Ellis';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('husband wife relationship', 'biography', 'based on true story', 'physicist', 'based on memoir or autobiography', 'fictional biography', 'motor neuron disease', 'als', 'cambridge university', 'inspirational', 'admiring');

GO
-- ============================================

-- Movie: Hacksaw Ridge
DECLARE @MovieTitle VARCHAR(255) = 'Hacksaw Ridge';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Biography', 'Drama', 'History', 'War');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Mel Gibson');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Robert Schenkkan', 'Andrew Knight');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Andrew Garfield';
SET @Character = 'Desmond Doss';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Richard Pyros';
SET @Character = 'Teach';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jacob Warner';
SET @Character = 'James Pinnick';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Milo Gibson';
SET @Character = 'Lucky Ford';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Darcy Bryce';
SET @Character = 'Young Desmond';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Roman Guerriero';
SET @Character = 'Young ''Hal'' Doss';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'James Lugton';
SET @Character = 'Hiker';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kasia Stelmach';
SET @Character = 'Hiker''s Friend';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Hugo Weaving';
SET @Character = 'Tom Doss';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Rachel Griffiths';
SET @Character = 'Bertha Doss';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('japan', 'hero', 'world war ii', 'abusive father', 'affectation', 'pacifism', 'bible', 'gore', 'vegetarian', 'biography', 'based on true story', 'okinawa', 'conscientious objector', 'religion', 'soldier', 'alcoholic', 'war hero', 'pacifist', 'medic', 'us military', 'battle of okinawa', 'congressional medal of honor', 'amused', 'combat medic', 'weaponless', 'seventh-day adventists');

GO
-- ============================================

-- Movie: Ali
DECLARE @MovieTitle VARCHAR(255) = 'Ali';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Biography', 'Drama', 'Sport');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Michael Mann');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Gregory Allen Howard',  'Stephen J. Rivele', 'Christopher Wilkinson', 'Eric Roth', 'Michael Mann');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Will Smith';
SET @Character = 'Cassius Clay / Muhammad Ali';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jamie Foxx';
SET @Character = 'Drew ''Bundini'' Brown';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jon Voight';
SET @Character = 'Howard Cosell';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Mario Van Peebles';
SET @Character = 'Malcolm X';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ron Silver';
SET @Character = 'Angelo Dundee';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jeffrey Wright';
SET @Character = 'Howard Bingham';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Mykelti Williamson';
SET @Character = 'Don King';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jada Pinkett Smith';
SET @Character = 'Sonji';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Nona Gaye';
SET @Character = 'Belinda Ali';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Michael Michele';
SET @Character = 'Veronica Porche';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('transporter', 'boxer', 'affectation', 'biography', 'angry', 'detached', 'boxing', 'candid', 'dramatic', 'admiring', 'adoring', 'ambivalent', 'antagonistic', 'approving', 'assertive', 'celebratory', 'empathetic');

GO
-- ============================================

-- Movie: BlacKkKlansman
DECLARE @MovieTitle VARCHAR(255) = 'BlacKkKlansman';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Biography', 'Comedy', 'Crime', 'Drama');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Spike Lee');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Charlie Wachtel', 'David Rabinowitz', 'Kevin Willmott', 'Spike Lee',  'Ron Stallworth');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Alec Baldwin';
SET @Character = 'Dr. Kennebrew Beauregard';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'John David Washington';
SET @Character = 'Ron Stallworth';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Isiah Whitlock Jr.';
SET @Character = 'Mr. Turrentine';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Robert John Burke';
SET @Character = 'Chief Bridges';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Brian Tarantina';
SET @Character = 'Officer Clay Mulaney';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Arthur J. Nascarella';
SET @Character = 'Officer Wheaton';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ken Garito';
SET @Character = 'Sergeant Trapp';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Frederick Weller';
SET @Character = 'Master Patrolman Andy Landers';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Adam Driver';
SET @Character = 'Flip Zimmerman';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Michael Buscemi';
SET @Character = 'Jimmy Creek';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('based on novel or book', 'ku klux klan', '1970s', 'black panther party', 'biography', 'based on true story', 'undercover cop', 'racism', 'based on memoir or autobiography', 'revisionist history', 'white supremacy', 'thoughtful', 'defiant', 'kkk', 'kkk rally');

GO
-- ============================================

-- Movie: The Trial of the Chicago 7
DECLARE @MovieTitle VARCHAR(255) = 'The Trial of the Chicago 7';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Drama', 'History', 'Thriller');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Aaron Sorkin');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Aaron Sorkin');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Eddie Redmayne';
SET @Character = 'Tom Hayden';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Alex Sharp';
SET @Character = 'Rennie Davis';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sacha Baron Cohen';
SET @Character = 'Abbie Hoffman';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jeremy Strong';
SET @Character = 'Jerry Rubin';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'John Carroll Lynch';
SET @Character = 'David Dellinger';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Yahya Abdul-Mateen II';
SET @Character = 'Bobby Seale';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Mark Rylance';
SET @Character = 'William Kunstler';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Joseph Gordon-Levitt';
SET @Character = 'Richard Schultz';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ben Shenkman';
SET @Character = 'Leonard Weinglass';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'J.C. MacKenzie';
SET @Character = 'Thomas Foran';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('chicago', 'illinois', 'right and justice', 'political activism', 'black panther party', 'based on true story', 'black activist', 'counter-culture', 'historical fiction', 'activist', '1960s', 'courtroom drama');

GO
-- ============================================

-- Movie: Palm Springs
DECLARE @MovieTitle VARCHAR(255) = 'Palm Springs';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Fantasy', 'Mystery', 'Romance');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Max Barbakow');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Andy Siara',  'Max Barbakow',  'Andy Siara');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Andy Samberg';
SET @Character = 'Nyles';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Cristin Milioti';
SET @Character = 'Sarah';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'J.K. Simmons';
SET @Character = 'Roy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Peter Gallagher';
SET @Character = 'Howard';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Meredith Hagner';
SET @Character = 'Misty';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Camila Mendes';
SET @Character = 'Tala';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tyler Hoechlin';
SET @Character = 'Abe';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Chris Pang';
SET @Character = 'Trevor';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jacqueline Obradors';
SET @Character = 'Pia';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'June Squibb';
SET @Character = 'Nana Schlieffen';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('alcohol', 'cave', 'time travel', 'earthquake', 'swimming pool', 'drug use', 'palm springs', 'time loop', 'nemesis', 'wedding', 'maid of honor', 'carefree', 'older sister', 'groundhog day', 'stuck', 'absurd', 'sister''s wedding', 'chance encounter');

GO
-- ============================================

-- Movie: Liar Liar
DECLARE @MovieTitle VARCHAR(255) = 'Liar Liar';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Fantasy');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Tom Shadyac');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Paul Guay', 'Stephen Mazur');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Jim Carrey';
SET @Character = 'Fletcher Reede';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Maura Tierney';
SET @Character = 'Audrey Reede';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Justin Cooper';
SET @Character = 'Max Reede';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Cary Elwes';
SET @Character = 'Jerry';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Anne Haney';
SET @Character = 'Greta';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jennifer Tilly';
SET @Character = 'Samantha Cole';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Amanda Donohoe';
SET @Character = 'Miranda';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jason Bernard';
SET @Character = 'Judge Marshall Stevens';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Swoosie Kurtz';
SET @Character = 'Dana Appleton';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Mitchell Ryan';
SET @Character = 'Mr. Allan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('california', 'workaholic', 'birthday', 'truth', 'lie', 'wish', 'legal drama');

GO
-- ============================================

-- Movie: Solo Leveling
DECLARE @MovieTitle VARCHAR(255) = 'Solo Leveling';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Animation', 'Action', 'Adventure', 'Fantasy');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Chugong', 'Chugong', 'H-Goon');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Taito Ban';
SET @Character = 'Jin-woo Sung / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jimmy Tandel';
SET @Character = 'Classmate';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Makoto Furukawa';
SET @Character = 'Jin-chul Woo / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Haruna Mikawa';
SET @Character = 'Jin-ah Sung / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Daisuke Hirakawa';
SET @Character = 'Choi Jong-in / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ryosuke Higa';
SET @Character = 'Jeong-ho Kang / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Banjô Ginga';
SET @Character = 'Go Gun-hee / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Genta Nakamura';
SET @Character = 'Jin-ho Yoo / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ikuto Kanemasa';
SET @Character = 'Additional Voice / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Reina Ueda';
SET @Character = 'Hae-in Cha / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: Teen Titans GO! To the Movies
DECLARE @MovieTitle VARCHAR(255) = 'Teen Titans GO! To the Movies';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Animation', 'Action', 'Adventure', 'Comedy', 'Family', 'Fantasy', 'Musical', 'Sci-Fi');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Aaron Horvath', 'Peter Rida Michail');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Michael Jelenic', 'Aaron Horvath',  'Jerry Siegel', 'Joe Shuster',  'Marv Wolfman', 'George Pérez', 'Arnold Drake',  'Bob Kane', 'Bill Finger',  'William Moulton Marston');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Greg Cipes';
SET @Character = 'Beast Boy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Scott Menville';
SET @Character = 'Robin';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Khary Payton';
SET @Character = 'Cyborg';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tara Strong';
SET @Character = 'Raven';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Hynden Walch';
SET @Character = 'Starfire';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Will Arnett';
SET @Character = 'Slade';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kristen Bell';
SET @Character = 'Jade Wilson';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Eric Bauza';
SET @Character = 'Aquaman / Stan Lee''s Assistant';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Michael Bolton';
SET @Character = 'Tiger';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kal-El Cage';
SET @Character = 'Young Bruce Wayne';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('movie business', 'dc comics', 'superhero', 'time travel', 'slapstick comedy', 'hollywood', 'super power', 'aftercreditsstinger', 'duringcreditsstinger', 'based on tv series');

GO
-- ============================================

-- Movie: Ford v Ferrari
DECLARE @MovieTitle VARCHAR(255) = 'Ford v Ferrari';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Biography', 'Drama', 'Sport');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('James Mangold');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Jez Butterworth', 'John-Henry Butterworth', 'Jason Keller');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Matt Damon';
SET @Character = 'Carroll Shelby';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Christian Bale';
SET @Character = 'Ken Miles';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jon Bernthal';
SET @Character = 'Lee Iacocca';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Caitríona Balfe';
SET @Character = 'Mollie Miles';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Josh Lucas';
SET @Character = 'Leo Beebe';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Noah Jupe';
SET @Character = 'Peter Miles';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tracy Letts';
SET @Character = 'Henry Ford II';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Remo Girone';
SET @Character = 'Enzo Ferrari';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ray McKinnon';
SET @Character = 'Phil Remington';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'JJ Feild';
SET @Character = 'Roy Lunn';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('based on novel or book', 'car race', 'sports', 'car mechanic', 'biography', 'based on true story', 'le mans', 'racing', 'race car driver', 'aggressive', '1960s', 'powerful');

GO
-- ============================================

-- Movie: Do Revenge
DECLARE @MovieTitle VARCHAR(255) = 'Do Revenge';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Romance');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Jennifer Kaytin Robinson');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Celeste Ballard', 'Jennifer Kaytin Robinson');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Camila Mendes';
SET @Character = 'Drea';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Maya Hawke';
SET @Character = 'Eleanor';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Austin Abrams';
SET @Character = 'Max';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Rish Shah';
SET @Character = 'Russ';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Talia Ryder';
SET @Character = 'Gabbi';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Alisha Boe';
SET @Character = 'Tara';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ava Capri';
SET @Character = 'Carissa';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'J.D.';
SET @Character = 'Elliot';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Paris Berelc';
SET @Character = 'Meghan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Maia Reficco';
SET @Character = 'Montana';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('high school', 'friendship', 'female friendship', 'female protagonist', 'campy', 'teen comedy', 'lgbt', 'lgbt teen', 'teenage romance', 'teen drama', 'satirical', 'generation z', 'gay theme', 'lesbian', 'sapphic', 'amused');

GO
-- ============================================

-- Movie: All the Bright Places
DECLARE @MovieTitle VARCHAR(255) = 'All the Bright Places';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Drama', 'Romance');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Brett Haley');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Jennifer Niven', 'Liz Hannah',  'Jennifer Niven');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Elle Fanning';
SET @Character = 'Violet';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Justice Smith';
SET @Character = 'Finch';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Alexandra Shipp';
SET @Character = 'Kate';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kelli O''Hara';
SET @Character = 'Sheryl';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Lamar Johnson';
SET @Character = 'Charlie';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Virginia Gardner';
SET @Character = 'Amanda';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Felix Mallard';
SET @Character = 'Roamer';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sofia Hasmik';
SET @Character = 'Brenda';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Keegan-Michael Key';
SET @Character = 'Embry';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Luke Wilson';
SET @Character = 'James';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('suicide', 'indiana', 'usa', 'based on novel or book', 'based on young adult novel');

GO
-- ============================================

-- Movie: Seeking a Friend for the End of the World
DECLARE @MovieTitle VARCHAR(255) = 'Seeking a Friend for the End of the World';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Adventure', 'Comedy', 'Drama', 'Romance', 'Sci-Fi');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Lorene Scafaria');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Lorene Scafaria');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Steve Carell';
SET @Character = 'Dodge';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Keira Knightley';
SET @Character = 'Penny';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Adam Brody';
SET @Character = 'Owen';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Connie Britton';
SET @Character = 'Diane';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Roger Aaron Brown';
SET @Character = 'Alfred';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Rob Huebel';
SET @Character = 'Jeremy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Trisha Gorman';
SET @Character = 'Crying Woman';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Nancy Carell';
SET @Character = 'Linda';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Mark Moses';
SET @Character = 'Anchorman';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tonita Castro';
SET @Character = 'Elsa';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('asteroid', 'road trip', 'end of the world', 'woman director');

GO
-- ============================================

-- Movie: Bruce Almighty
DECLARE @MovieTitle VARCHAR(255) = 'Bruce Almighty';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Fantasy');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Tom Shadyac');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Steve Koren', 'Mark O''Keefe',  'Steve Koren', 'Mark O''Keefe', 'Steve Oedekerk');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Jim Carrey';
SET @Character = 'Bruce Nolan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Morgan Freeman';
SET @Character = 'God';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jennifer Aniston';
SET @Character = 'Grace Connelly';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Philip Baker Hall';
SET @Character = 'Jack Baylor';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Catherine Bell';
SET @Character = 'Susan Ortega';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Lisa Ann Walter';
SET @Character = 'Debbie';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Steve Carell';
SET @Character = 'Evan Baxter';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Nora Dunn';
SET @Character = 'Ally Loman';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Eddie Jemison';
SET @Character = 'Bobby';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Paul Satterfield';
SET @Character = 'Dallas Coleman';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('new love', 'lovesickness', 'moon', 'street gang', 'moses', 'faith', 'prayer', 'christianity', 'journalism', 'car crash', 'god', 'religion', 'relationship', 'news reporter', 'female journalist', 'religious conflict', 'responsibility', 'praying', 'almighty');

GO
-- ============================================

-- Movie: Central Intelligence
DECLARE @MovieTitle VARCHAR(255) = 'Central Intelligence';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Comedy', 'Crime');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Rawson Marshall Thurber');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Ike Barinholtz', 'David Stassen', 'Rawson Marshall Thurber',  'Ike Barinholtz', 'David Stassen');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Dwayne Johnson';
SET @Character = 'Bob Stone';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kevin Hart';
SET @Character = 'Calvin Joyner';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Amy Ryan';
SET @Character = 'Agent Pamela Harris';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Danielle Nicolet';
SET @Character = 'Maggie';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jason Bateman';
SET @Character = 'Trevor';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Aaron Paul';
SET @Character = 'Phil';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ryan Hansen';
SET @Character = 'Steve';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tim Griffin';
SET @Character = 'Agent Stan Mitchell';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Timothy John Smith';
SET @Character = 'Agent Nick Cooper';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sione Kelepi';
SET @Character = 'Young Robbie';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('central intelligence agency (cia)', 'espionage', 'spy', 'secret agent', 'high school reunion', 'reconnect', 'accountant', 'radical transformation', 'high school classmates', 'glory days');

GO
-- ============================================

-- Movie: The Lego Batman Movie
DECLARE @MovieTitle VARCHAR(255) = 'The Lego Batman Movie';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Animation', 'Action', 'Adventure', 'Comedy', 'Family', 'Fantasy', 'Sci-Fi');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Chris McKay');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Seth Grahame-Smith', 'Chris McKenna', 'Erik Sommers', 'Jared Stern', 'John Whittington',  'Seth Grahame-Smith',  'Bob Kane', 'Bill Finger',  'Jerry Siegel', 'Joe Shuster',  'William Moulton Marston',  'Ole Kirk Christiansen', 'Godtfred Kirk Christiansen', 'Jens Nygaard Knudsen',  'Harry G. Peter');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Will Arnett';
SET @Character = 'Batman / Bruce Wayne';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Michael Cera';
SET @Character = 'Robin / Dick Grayson';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Rosario Dawson';
SET @Character = 'Batgirl / Barbara Gordon';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ralph Fiennes';
SET @Character = 'Alfred Pennyworth';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Siri';
SET @Character = '''Puter';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Zach Galifianakis';
SET @Character = 'Joker';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jenny Slate';
SET @Character = 'Harley Quinn';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jason Mantzoukas';
SET @Character = 'Scarecrow';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Conan O''Brien';
SET @Character = 'The Riddler';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Doug Benson';
SET @Character = 'Bane';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('superhero', 'based on comic', 'based on toy', 'spin off', 'super power', 'lego', 'sarcastic', 'sardonic', 'wry');

GO
-- ============================================

-- Movie: Anand
DECLARE @MovieTitle VARCHAR(255) = 'Anand';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Drama', 'Romance');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Sekhar Kammula');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Sekhar Kammula');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Raja';
SET @Character = 'Anand';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kamalinee Mukherjee';
SET @Character = 'Roopa';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Anuj Gurwara';
SET @Character = 'Rahul';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Master Abhijit';
SET @Character = '';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Baby Bakita';
SET @Character = 'Samata';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Satya Krishnan';
SET @Character = 'Anita';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Gopichand Lagadapati';
SET @Character = 'Ram';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Gururaj Manepalli';
SET @Character = '';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Melkote';
SET @Character = '';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Srikanth Polisetti';
SET @Character = 'Young Roopa''s brother';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

GO
-- ============================================

-- Movie: Zombieland
DECLARE @MovieTitle VARCHAR(255) = 'Zombieland';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Comedy', 'Horror');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Ruben Fleischer');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Rhett Reese', 'Paul Wernick');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Jesse Eisenberg';
SET @Character = 'Columbus';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Woody Harrelson';
SET @Character = 'Tallahassee';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Emma Stone';
SET @Character = 'Wichita';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Abigail Breslin';
SET @Character = 'Little Rock';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Amber Heard';
SET @Character = '406';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Bill Murray';
SET @Character = 'Bill Murray';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Derek Graf';
SET @Character = 'Clown Zombie';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Cesar Aguirre';
SET @Character = 'Customer at the Pump';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jacob G. Akins';
SET @Character = 'Banjo Zombie';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Hunter Aldridge';
SET @Character = 'Best Man';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('washington dc', 'usa', 'sibling relationship', 'circus', 'post-apocalyptic future', 'gore', 'parody', 'road trip', 'zombie', 'survival horror', 'amusement park', 'twinkie', 'body count', 'zombification', 'disposing of a dead body', 'loner', 'aftercreditsstinger', 'zombie apocalypse', 'fear of clowns', 'absurd', 'dramatic', 'enthusiastic', 'foreboding', 'frightened', 'sarcastic');

GO
-- ============================================

-- Movie: Piku
DECLARE @MovieTitle VARCHAR(255) = 'Piku';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Drama');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Shoojit Sircar');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Juhi Chaturvedi');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Deepika Padukone';
SET @Character = 'Piku Banerjee';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Amitabh Bachchan';
SET @Character = 'Bhaskor Banerjee';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Irrfan Khan';
SET @Character = 'Rana';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Moushumi Chatterjee';
SET @Character = 'Chhobi Maashi';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Raghubir Yadav';
SET @Character = 'Dr. Srivastava';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jisshu Sengupta';
SET @Character = 'Syed';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Balendar Singh';
SET @Character = 'Budhan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Swaroopa Ghosh';
SET @Character = 'Moni Kaki';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sajal Bhattacharya';
SET @Character = 'Binod Kaka';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Rupsa Banerjee';
SET @Character = 'Eisha';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('bollywood');

GO
-- ============================================

-- Movie: Man of Steel
DECLARE @MovieTitle VARCHAR(255) = 'Man of Steel';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Adventure', 'Sci-Fi');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Zack Snyder');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('David S. Goyer',  'David S. Goyer', 'Christopher Nolan',  'Jerry Siegel', 'Joe Shuster');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Henry Cavill';
SET @Character = 'Clark Kent / Kal-El';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Amy Adams';
SET @Character = 'Lois Lane';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Michael Shannon';
SET @Character = 'General Zod';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Diane Lane';
SET @Character = 'Martha Kent';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Russell Crowe';
SET @Character = 'Jor-El';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Antje Traue';
SET @Character = 'Faora-Ul';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Harry Lennix';
SET @Character = 'General Swanwick';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Richard Schiff';
SET @Character = 'Dr. Emil Hamilton';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Christopher Meloni';
SET @Character = 'Colonel Nathan Hardy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kevin Costner';
SET @Character = 'Jonathan Kent';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('saving the world', 'flying', 'hope', 'superhero', 'based on comic', 'alien planet', 'superhuman', 'alien invasion', 'super power', 'mysterious force', 'reboot', 'save the day', 'dc extended universe (dceu)', 'save the planet', 'origin story', 'alien spaceship');

GO
-- ============================================

-- Movie: Batman v Superman: Dawn of Justice
DECLARE @MovieTitle VARCHAR(255) = 'Batman v Superman: Dawn of Justice';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Adventure', 'Sci-Fi');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Zack Snyder');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Bob Kane', 'Bill Finger',  'Jerry Siegel', 'Joe Shuster',  'William Moulton Marston',  'Chris Terrio',  'David S. Goyer');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Ben Affleck';
SET @Character = 'Bruce Wayne / Batman';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Henry Cavill';
SET @Character = 'Clark Kent / Superman';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Amy Adams';
SET @Character = 'Lois';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jesse Eisenberg';
SET @Character = 'Lex Luthor';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Diane Lane';
SET @Character = 'Martha Kent';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Laurence Fishburne';
SET @Character = 'Perry White';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jeremy Irons';
SET @Character = 'Alfred';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Holly Hunter';
SET @Character = 'Senator Finch';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Gal Gadot';
SET @Character = 'Diana Prince / Wonder Woman';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Scoot McNairy';
SET @Character = 'Wallace Keefe';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('superhero', 'based on comic', 'revenge', 'vigilante', 'leading man', 'super power', 'dc extended universe (dceu)', 'man vs man', 'leading men');

GO
-- ============================================

-- Movie: Zack Snyder''s Justice League
DECLARE @MovieTitle VARCHAR(255) = 'Zack Snyder''s Justice League';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Adventure', 'Fantasy', 'Sci-Fi');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Zack Snyder');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Jerry Siegel', 'Joe Shuster',  'Zack Snyder', 'Chris Terrio', 'Will Beall',  'Chris Terrio',  'Gardner Fox',  'Bob Kane', 'Bill Finger',  'William Moulton Marston',  'Jack Kirby');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Ben Affleck';
SET @Character = 'Batman / Bruce Wayne';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Henry Cavill';
SET @Character = 'Superman / Clark Kent';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Amy Adams';
SET @Character = 'Lois Lane';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Gal Gadot';
SET @Character = 'Wonder Woman / Diana Prince';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ray Fisher';
SET @Character = 'Cyborg / Victor Stone';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jason Momoa';
SET @Character = 'Aquaman / Arthur Curry';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ezra Miller';
SET @Character = 'The Flash / Barry Allen';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Willem Dafoe';
SET @Character = 'Vulko';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jesse Eisenberg';
SET @Character = 'Lex Luthor';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jeremy Irons';
SET @Character = 'Alfred';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('saving the world', 'superhero', 'resurrection', 'based on comic', 'superhero team', 'planet invasion', 'action hero', 'dc extended universe (dceu)', 'superhero teamup');

GO
-- ============================================

-- Movie: Alita: Battle Angel
DECLARE @MovieTitle VARCHAR(255) = 'Alita: Battle Angel';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Adventure', 'Sci-Fi', 'Thriller');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Robert Rodriguez');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('James Cameron', 'Laeta Kalogridis',  'Yukito Kishiro');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Rosa Salazar';
SET @Character = 'Alita';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Christoph Waltz';
SET @Character = 'Dr. Dyson Ido';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jennifer Connelly';
SET @Character = 'Chiren';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Mahershala Ali';
SET @Character = 'Vector';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ed Skrein';
SET @Character = 'Zapan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jackie Earle Haley';
SET @Character = 'Grewishka';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Keean Johnson';
SET @Character = 'Hugo';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jorge Lendeborg Jr.';
SET @Character = 'Tanji';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Lana Condor';
SET @Character = 'Koyomi';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Idara Victor';
SET @Character = 'Nurse Gerhad';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('martial arts', 'bounty hunter', 'dystopia', 'extreme sports', 'superhero', 'cyberpunk', 'based on manga', 'female cyborg', 'live action remake', 'floating city', 'gunnm', 'suspenseful', 'assertive', 'enraged', 'straightforward');

GO
-- ============================================

-- Movie: The Martian
DECLARE @MovieTitle VARCHAR(255) = 'The Martian';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Adventure', 'Drama', 'Sci-Fi');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Ridley Scott');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Drew Goddard',  'Andy Weir');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Matt Damon';
SET @Character = 'Mark Watney';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jessica Chastain';
SET @Character = 'Melissa Lewis';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kristen Wiig';
SET @Character = 'Annie Montrose';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jeff Daniels';
SET @Character = 'Teddy Sanders';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Michael Peña';
SET @Character = 'Rick Martinez';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sean Bean';
SET @Character = 'Mitch Henderson';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kate Mara';
SET @Character = 'Beth Johanssen';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sebastian Stan';
SET @Character = 'Chris Beck';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Aksel Hennie';
SET @Character = 'Alex Vogel';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Chiwetel Ejiofor';
SET @Character = 'Vincent Kapoor';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('spacecraft', 'planet mars', 'based on novel or book', 'nasa', 'isolation', 'botanist', 'alone', 'survival', 'space', 'engineering', 'stranded', 'astronaut', 'struggle for survival', 'duringcreditsstinger', 'deep space', 'potatoes', '2030s', 'mars', 'awestruck', 'defiant');

GO
-- ============================================

-- Movie: Meet Joe Black
DECLARE @MovieTitle VARCHAR(255) = 'Meet Joe Black';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Drama', 'Fantasy', 'Romance');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Martin Brest');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Ron Osborn', 'Jeff Reno', 'Kevin Wade', 'Bo Goldman',  'Alberto Casella',  'Walter Ferris',  'Maxwell Anderson', 'Gladys Lehman');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Brad Pitt';
SET @Character = 'Joe Black / Young Man in Coffee Shop';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Anthony Hopkins';
SET @Character = 'William Parrish';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Claire Forlani';
SET @Character = 'Susan Parrish';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jake Weber';
SET @Character = 'Drew';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Marcia Gay Harden';
SET @Character = 'Allison';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jeffrey Tambor';
SET @Character = 'Quince';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'David S. Howard';
SET @Character = 'Eddie Sloane';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Lois Kelly-Miller';
SET @Character = 'Jamaican Woman';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jahnni St. John';
SET @Character = 'Jamaican Woman''s Daughter';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Richard Clarke';
SET @Character = 'Butler';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('life and death', 'broken engagement', 'love at first sight', 'fireworks', 'religion and supernatural', 'based on play or musical', 'fate', 'teenage crush', 'grim reaper', 'doctor', 'millionaire', 'death personified', 'death incarnate', 'angel of death', 'encontro marcado', 'romantic', 'appreciative', 'compassionate');

GO
-- ============================================

-- Movie: Forrest Gump
DECLARE @MovieTitle VARCHAR(255) = 'Forrest Gump';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Drama', 'Romance');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Robert Zemeckis');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Winston Groom',  'Eric Roth');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Tom Hanks';
SET @Character = 'Forrest Gump';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Rebecca Williams';
SET @Character = 'Nurse at Park Bench';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sally Field';
SET @Character = 'Mrs. Gump';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Michael Conner Humphreys';
SET @Character = 'Young Forrest';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Harold G. Herthum';
SET @Character = 'Doctor';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'George Kelly';
SET @Character = 'Barber';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Bob Penny';
SET @Character = 'Crony';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'John Randall';
SET @Character = 'Crony';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sam Anderson';
SET @Character = 'Principal';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Margo Moorer';
SET @Character = 'Louise';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('new year''s eve', 'vietnam war', 'vietnam veteran', 'mentally disabled', 'friendship', 'usa president', 'washington dc', 'usa', 'post-traumatic stress disorder (ptsd)', 'waitress', 'based on novel or book', 'hippie', 'single parent', 'parent child relationship', 'optimism', '1970s', 'drug addiction', 'autism', 'alabama', 'black panther party', 'bus stop', 'family relationships', 'chameleon', 'single mother', 'military', 'anti war protest', '1960s', 'college american football', 'mother son relationship', 'america', 'feel-good');

GO
-- ============================================

-- Movie: Rockstar
DECLARE @MovieTitle VARCHAR(255) = 'Rockstar';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Drama', 'Music', 'Romance');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Imtiaz Ali');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Imtiaz Ali',  'Muazzam Beg');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Ranbir Kapoor';
SET @Character = 'Janardan Jakhar';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Nargis Fakhri';
SET @Character = 'Heer Kaul';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Shammi Kapoor';
SET @Character = 'Ustad Jameel Khan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kumud Mishra';
SET @Character = 'Khatana';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Piyush Mishra';
SET @Character = 'Dhingra';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Shernaz Patel';
SET @Character = 'Neena Kaul';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Aditi Rao Hydari';
SET @Character = 'Sheena';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sanjana Sanghi';
SET @Character = 'Mandy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Shikha Jain';
SET @Character = 'Meena';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jaideep Ahlawat';
SET @Character = 'Jordan''s brother';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('adultery', 'musical', 'terminal illness', 'rebellious youth', 'heartbreak', 'rock musical', 'rockstar', 'bollywood');

GO
-- ============================================

-- Movie: Slumdog Millionaire
DECLARE @MovieTitle VARCHAR(255) = 'Slumdog Millionaire';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Crime', 'Drama', 'Romance');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Danny Boyle', 'Loveleen Tandan');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Simon Beaufoy',  'Vikas Swarup');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Dev Patel';
SET @Character = 'Older Jamal';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Saurabh Shukla';
SET @Character = 'Sergeant Srinivas';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Anil Kapoor';
SET @Character = 'Prem';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Raj Zutshi';
SET @Character = 'Director';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jeneva Talwar';
SET @Character = 'Vision Mixer';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Freida Pinto';
SET @Character = 'Older Latika';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Irrfan Khan';
SET @Character = 'Police Inspector';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Azharuddin Mohammed Ismail';
SET @Character = 'Youngest Salim';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ayush Mahesh Khedekar';
SET @Character = 'Youngest Jamal';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jira Banjara';
SET @Character = 'Airport Security Guard';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('based on novel or book', 'slum', 'cheating', 'suspicion', 'mumbai (bombay)', 'india', 'game show', 'quiz', 'orphan', 'duringcreditsstinger', 'taj mahal', 'india');

GO
-- ============================================

-- Movie: Crazy, Stupid, Love.
DECLARE @MovieTitle VARCHAR(255) = 'Crazy, Stupid, Love.';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Drama', 'Romance');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Glenn Ficarra', 'John Requa');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Dan Fogelman');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Steve Carell';
SET @Character = 'Cal';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ryan Gosling';
SET @Character = 'Jacob';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Julianne Moore';
SET @Character = 'Emily';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Emma Stone';
SET @Character = 'Hannah';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Lio Tipton';
SET @Character = 'Jessica';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jonah Bobo';
SET @Character = 'Robbie';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Joey King';
SET @Character = 'Molly';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Marisa Tomei';
SET @Character = 'Kate';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Beth Littleford';
SET @Character = 'Claire';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'John Carroll Lynch';
SET @Character = 'Bernie';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('friendship', 'soulmates', 'marriage crisis', 'midlife crisis', 'babysitter', 'womanizer', 'law school', 'los angeles', 'california', 'middle school', 'relationship', 'love affair', 'divorcee', 'teenage love');

GO
-- ============================================

-- Movie: Silver Linings Playbook
DECLARE @MovieTitle VARCHAR(255) = 'Silver Linings Playbook';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Drama', 'Romance');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('David O. Russell');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('David O. Russell',  'Matthew Quick');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Bradley Cooper';
SET @Character = 'Pat';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jennifer Lawrence';
SET @Character = 'Tiffany Maxwell';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Robert De Niro';
SET @Character = 'Pat Sr.';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jacki Weaver';
SET @Character = 'Dolores Solitano';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Chris Tucker';
SET @Character = 'Danny';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Anupam Kher';
SET @Character = 'Dr. Cliff Patel';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'John Ortiz';
SET @Character = 'Ronnie';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Shea Whigham';
SET @Character = 'Jake';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Julia Stiles';
SET @Character = 'Veronica';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Paul Herman';
SET @Character = 'Randy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('depression', 'infidelity', 'dancing', 'friendship', 'philadelphia', 'pennsylvania', 'based on novel or book', 'widow', 'letter', 'neighbor', 'mental illness', 'ex-wife', 'institutionalization', 'death of husband', 'bipolar', 'restraining order', 'father son relationship', 'male mental health');

GO
-- ============================================

-- Movie: Punch-Drunk Love
DECLARE @MovieTitle VARCHAR(255) = 'Punch-Drunk Love';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Drama', 'Romance', 'Thriller');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Paul Thomas Anderson');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Paul Thomas Anderson');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Adam Sandler';
SET @Character = 'Barry Egan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jason Andrews';
SET @Character = 'Operator Carter';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Don McManus';
SET @Character = 'Plastic';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Emily Watson';
SET @Character = 'Lena Leonard';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Luis Guzmán';
SET @Character = 'Lance';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'David Schrempf';
SET @Character = 'Customer #1';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Seann Conway';
SET @Character = 'Customer #2';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Rico Bueno';
SET @Character = 'Rico';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Hazel Mailloux';
SET @Character = 'Rhonda';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Karen Kilgariff';
SET @Character = 'Anna';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('depression', 'sibling relationship', 'businessman', 'shyness', 'hawaii', 'dysfunctional family', 'psychological abuse', 'los angeles', 'california', 'scam artist', 'telephone sex', 'pudding', 'sweepstakes', 'harmonium', 'absurdist', 'social anxiety', 'emotional abuse', 'anxious', 'provo utah', 'scam call center', 'overbearing sister', 'romantic');

GO
-- ============================================

-- Movie: Dan in Real Life
DECLARE @MovieTitle VARCHAR(255) = 'Dan in Real Life';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Drama', 'Romance');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Peter Hedges');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Pierce Gardner', 'Peter Hedges');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Steve Carell';
SET @Character = 'Dan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Juliette Binoche';
SET @Character = 'Marie';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Dane Cook';
SET @Character = 'Mitch';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Alison Pill';
SET @Character = 'Jane';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Britt Robertson';
SET @Character = 'Cara';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Marlene Lawston';
SET @Character = 'Lilly';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Dianne Wiest';
SET @Character = 'Nana';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'John Mahoney';
SET @Character = 'Poppy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Norbert Leo Butz';
SET @Character = 'Clay';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Amy Ryan';
SET @Character = 'Eileen';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('daughter', 'bookshop', 'relationship', 'widower', 'shore', 'advice columnist', 'single father', 'duringcreditsstinger');

GO
-- ============================================

-- Movie: A Walk to Remember
DECLARE @MovieTitle VARCHAR(255) = 'A Walk to Remember';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Drama', 'Romance');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Adam Shankman');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Nicholas Sparks',  'Karen Janszen');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Shane West';
SET @Character = 'Landon Carter';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Mandy Moore';
SET @Character = 'Jamie Sullivan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Peter Coyote';
SET @Character = 'Reverend Sullivan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Daryl Hannah';
SET @Character = 'Cynthia Carter';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Lauren German';
SET @Character = 'Belinda';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Clayne Crawford';
SET @Character = 'Dean';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Al Thompson';
SET @Character = 'Eric';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Paz de la Huerta';
SET @Character = 'Tracie';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jonathan Parks Jordan';
SET @Character = 'Walker';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Matt Lutz';
SET @Character = 'Clay Gephardt';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('high school', 'based on novel or book', 'theatre group', 'north carolina', 'romance', 'coming of age', 'cancer', 'tragic love', 'valentine''s day', 'nostalgic', 'star crossed lovers', 'teen drama', 'sentimental', 'romantic', 'adoring', 'distressing', 'empathetic', 'hopeful');

GO
-- ============================================

-- Movie: Barbie
DECLARE @MovieTitle VARCHAR(255) = 'Barbie';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Adventure', 'Comedy', 'Fantasy');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Greta Gerwig');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Greta Gerwig', 'Noah Baumbach');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Margot Robbie';
SET @Character = 'Barbie';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Issa Rae';
SET @Character = 'Barbie';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kate McKinnon';
SET @Character = 'Weird Barbie';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Alexandra Shipp';
SET @Character = 'Barbie';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Emma Mackey';
SET @Character = 'Barbie';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Hari Nef';
SET @Character = 'Barbie';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sharon Rooney';
SET @Character = 'Barbie';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ana Cruz Kayne';
SET @Character = 'Barbie';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ritu Arya';
SET @Character = 'Barbie';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Dua Lipa';
SET @Character = 'Barbie';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('feminism', 'satire', 'patriarchy', 'based on toy', 'female protagonist', 'doll', 'fantasy world', 'motherhood', 'existentialism', 'woman director', 'mother daughter relationship', 'playful', 'gender discrimination', 'sentimental', 'hilarious', 'secret world', 'whimsical', 'amused', 'audacious', 'celebratory', 'sarcastic', 'sympathetic', 'matel');

GO
-- ============================================

-- Movie: Barfi!
DECLARE @MovieTitle VARCHAR(255) = 'Barfi!';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Drama', 'Romance');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Anurag Basu');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Anurag Basu', 'Tani Basu',  'Sanjeev Dutta');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Ranbir Kapoor';
SET @Character = 'Murphy / Barfi';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Priyanka Chopra Jonas';
SET @Character = 'Jhilmil Chatterjee';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ileana D''Cruz';
SET @Character = 'Shruti Ghosh Sengupta';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Amar Gupta';
SET @Character = 'Actor';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Saurabh Shukla';
SET @Character = 'Sudhanshu Dutta';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Roopa Ganguly';
SET @Character = 'Shruti''s mother';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ashish Vidyarthi';
SET @Character = 'Mr. Chatterjee';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Bholaraj Sapkota';
SET @Character = 'Bhola';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jisshu Sengupta';
SET @Character = 'Ranjeet Sengupta';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Haradhan Bannerjee';
SET @Character = 'Daju';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('deaf-mute', 'autism', 'love', 'wedding', 'handicapped', 'bollywood');

GO
-- ============================================

-- Movie: Les Misérables
DECLARE @MovieTitle VARCHAR(255) = 'Les Misérables';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Drama', 'Musical', 'Romance');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Tom Hooper');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('William Nicholson', 'Alain Boublil', 'Claude-Michel Schönberg', 'Herbert Kretzmer',  'Alain Boublil', 'Claude-Michel Schönberg',  'Victor Hugo');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Hugh Jackman';
SET @Character = 'Jean Valjean';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Russell Crowe';
SET @Character = 'Javert';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Anne Hathaway';
SET @Character = 'Fantine';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Amanda Seyfried';
SET @Character = 'Cosette';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sacha Baron Cohen';
SET @Character = 'Thénardier';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Helena Bonham Carter';
SET @Character = 'Madame Thénardier';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Eddie Redmayne';
SET @Character = 'Marius';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Aaron Tveit';
SET @Character = 'Enjolras';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Samantha Barks';
SET @Character = 'Éponine';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Daniel Huttlestone';
SET @Character = 'Gavroche';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('rebellion', 'army', 'robbery', 'france', 'based on novel or book', 'love triangle', 'love at first sight', 'brothel', 'mayor', 'french revolution', 'musical', 'arrest', 'based on play or musical', 'barricade', 'wedding', 'prostitution', 'falling in love', 'corpse', 'parole', 'convict', 'forced prostitution', 'police inspector', 'girl disguised as boy', 'historical drama', '19th century', 'out of wedlock child', 'historical romance', 'death of a child', 'abusive family', 'corrupt businessman', 'indifferent');

GO
-- ============================================

-- Movie: 21 Jump Street
DECLARE @MovieTitle VARCHAR(255) = '21 Jump Street';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Comedy', 'Crime');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Phil Lord', 'Christopher Miller');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Michael Bacall',  'Michael Bacall', 'Jonah Hill',  'Patrick Hasburgh', 'Stephen J. Cannell');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Jonah Hill';
SET @Character = 'Schmidt';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Channing Tatum';
SET @Character = 'Jenko';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Brie Larson';
SET @Character = 'Molly Tracey';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Dave Franco';
SET @Character = 'Eric Molson';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Rob Riggle';
SET @Character = 'Mr. Walters';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'DeRay Davis';
SET @Character = 'Domingo';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ice Cube';
SET @Character = 'Captain Dickson';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Dax Flame';
SET @Character = 'Zack';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Chris Parnell';
SET @Character = 'Mr. Gordon';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ellie Kemper';
SET @Character = 'Ms. Griggs';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('drug dealer', 'high school', 'investigation', 'nerd', 'male friendship', 'parody', 'jock', 'crude humor', 'undercover cop', 'high school student', 'police academy', 'buddy cop', 'buddy comedy', 'duringcreditsstinger', 'high school rivalry', 'bicycle cop', 'based on tv series', 'cops', 'party drugs', 'high school classmates');

GO
-- ============================================

-- Movie: Superbad
DECLARE @MovieTitle VARCHAR(255) = 'Superbad';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Greg Mottola');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Seth Rogen', 'Evan Goldberg');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Jonah Hill';
SET @Character = 'Seth';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Michael Cera';
SET @Character = 'Evan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Christopher Mintz-Plasse';
SET @Character = 'Fogell';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Bill Hader';
SET @Character = 'Officer Slater';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Seth Rogen';
SET @Character = 'Officer Michaels';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Martha MacIsaac';
SET @Character = 'Becca';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Emma Stone';
SET @Character = 'Jules';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Aviva Baumann';
SET @Character = 'Nicola';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Joe Lo Truglio';
SET @Character = 'Francis the Driver';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kevin Corrigan';
SET @Character = 'Mark';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('high school', 'police', 'alcohol', 'chaos', 'nerd', 'coming of age', 'school', 'los angeles', 'california', 'drugs', 'buddy', 'one night', 'fake id', 'serene', 'hilarious');

GO
-- ============================================

-- Movie: Easy A
DECLARE @MovieTitle VARCHAR(255) = 'Easy A';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Drama', 'Romance');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Will Gluck');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Bert V. Royal');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Emma Stone';
SET @Character = 'Olive';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Penn Badgley';
SET @Character = 'Woodchuck Todd';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Amanda Bynes';
SET @Character = 'Marianne';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Dan Byrd';
SET @Character = 'Brandon';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Thomas Haden Church';
SET @Character = 'Mr. Griffith';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Patricia Clarkson';
SET @Character = 'Rosemary';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Cam Gigandet';
SET @Character = 'Micah';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Lisa Kudrow';
SET @Character = 'Mrs. Griffith';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Malcolm McDowell';
SET @Character = 'Principal Gibbons';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Aly Michalka';
SET @Character = 'Rhiannon';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('high school', 'small town', 'lie', 'loss of virginity', 'coming of age', 'teen movie', 'school', 'female protagonist', 'high school student', 'teen comedy', 'intelligent', 'duringcreditsstinger', 'small town girl', 'rumor', 'teen drama', 'pretend relationship', 'gay friend', 'teenager');

GO
-- ============================================

-- Movie: Uncut Gems
DECLARE @MovieTitle VARCHAR(255) = 'Uncut Gems';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Crime', 'Drama', 'Thriller');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Benny Safdie', 'Josh Safdie');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Ronald Bronstein', 'Josh Safdie', 'Benny Safdie');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Mesfin Lamengo';
SET @Character = 'Wounded Miner';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sun Zhi Hua-Hilton';
SET @Character = 'Mine Foreman';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Liang Wei-Hui-Duncan';
SET @Character = 'Mine Management 1';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sunny Wu Jin Zahao';
SET @Character = 'Mine Management 2';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Deneke Muhugeta';
SET @Character = 'Lead Miner 1';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Habtunu Africho';
SET @Character = 'Lead Miner 2';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Warren Finkelstein';
SET @Character = 'Dr. Blauman';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Adam Sandler';
SET @Character = 'Howard Ratner';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Keith William Richards';
SET @Character = 'Phil';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tommy Kominik';
SET @Character = 'Nico';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('bet', 'infidelity', 'new york city', 'gambling', 'auction', 'ethiopia', 'dark comedy', 'basketball', 'money', 'art house', 'debt', 'apartment building', 'opal', 'pawnshop', 'character study', 'jeweler', 'city life', 'neo-noir', 'independent film', 'black opal', 'suspenseful');

GO
-- ============================================

-- Movie: Begin Again
DECLARE @MovieTitle VARCHAR(255) = 'Begin Again';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Drama', 'Music', 'Romance');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('John Carney');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('John Carney');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'James Corden';
SET @Character = 'Steve';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Keira Knightley';
SET @Character = 'Gretta';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Mark Ruffalo';
SET @Character = 'Dan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Hailee Steinfeld';
SET @Character = 'Violet';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Yasiin Bey';
SET @Character = 'Saul';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Karen Pittman';
SET @Character = 'Business Woman';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Paul Romero';
SET @Character = 'Bartender';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Catherine Keener';
SET @Character = 'Miriam';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Andrew Sellon';
SET @Character = 'Christian Father';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ed Renninger';
SET @Character = 'Barman';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('new york city', 'music recording', 'singer-songwriter', 'street musician', 'city life', 'recording session', 'street singer', 'inspirational');

GO
-- ============================================

-- Movie: Zodiac
DECLARE @MovieTitle VARCHAR(255) = 'Zodiac';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Crime', 'Drama', 'Mystery', 'Thriller');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('David Fincher');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('James Vanderbilt',  'Robert Graysmith');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Jake Gyllenhaal';
SET @Character = 'Robert Graysmith';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Mark Ruffalo';
SET @Character = 'Inspector David Toschi';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Anthony Edwards';
SET @Character = 'Inspector William Armstrong';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Robert Downey Jr.';
SET @Character = 'Paul Avery';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Brian Cox';
SET @Character = 'Melvin Belli';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'John Carroll Lynch';
SET @Character = 'Arthur Leigh Allen';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Richmond Arquette';
SET @Character = 'Zodiac 1 / Zodiac 2';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Bob Stephenson';
SET @Character = 'Zodiac 3';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'John Lacy';
SET @Character = 'Zodiac 4';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Chloë Sevigny';
SET @Character = 'Melanie';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('newspaper', 'journalist', 'california', 'based on novel or book', 'police', 'san francisco', 'california', 'killing', 'detective', '1970s', 'investigation', 'victim', 'code', 'murder', 'serial killer', 'crime scene', 'reporter', 'whodunit', 'alcoholic', 'young man', 'fourth of july', 'newspaper article', 'curious', 'cartoonist', '1960s', 'zodiac killer', 'clinical', 'bar', 'ambiguous', 'foreboding', 'ominous');

GO
-- ============================================

-- Movie: Free Guy
DECLARE @MovieTitle VARCHAR(255) = 'Free Guy';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Adventure', 'Comedy', 'Fantasy', 'Romance', 'Sci-Fi');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Shawn Levy');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Matt Lieberman', 'Zak Penn',  'Matt Lieberman');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Ryan Reynolds';
SET @Character = 'Guy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jodie Comer';
SET @Character = 'Millie / Molotovgirl';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Lil Rel Howery';
SET @Character = 'Buddy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Joe Keery';
SET @Character = 'Keys';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Utkarsh Ambudkar';
SET @Character = 'Mouser';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Taika Waititi';
SET @Character = 'Antwan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Channing Tatum';
SET @Character = 'Revenjamin Buttons';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Aaron W Reed';
SET @Character = 'Dude';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Britne Oldford';
SET @Character = 'Barista';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Camille Kostek';
SET @Character = 'Bombshell';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('hero', 'artificial intelligence (a.i.)', 'video game', 'virtual reality', 'gun', 'code', 'gamer', 'bank robbery', 'bank teller', 'programmer', 'mmorpg', 'heroic', 'vrmmo');

GO
-- ============================================

-- Movie: Guardians of the Galaxy Vol. 3
DECLARE @MovieTitle VARCHAR(255) = 'Guardians of the Galaxy Vol. 3';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Adventure', 'Comedy', 'Sci-Fi');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('James Gunn');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('James Gunn',  'Jim Starlin',  'Stan Lee', 'Larry Lieber', 'Jack Kirby',  'Steve Englehart', 'Don Heck',  'Roger Stern', 'John Buscema', 'Sal Buscema',  'Bill Mantlo', 'Keith Giffen',  'Steve Englehart', 'Steve Gan');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Chukwudi Iwuji';
SET @Character = 'The High Evolutionary';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Bradley Cooper';
SET @Character = 'Rocket';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Pom Klementieff';
SET @Character = 'Mantis';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Dave Bautista';
SET @Character = 'Drax';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Karen Gillan';
SET @Character = 'Nebula';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Vin Diesel';
SET @Character = 'Groot';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Austin Freeman';
SET @Character = 'On-Set Groot / Phlektik Guard';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Stephen Blackehart';
SET @Character = 'Steemie Blueliver';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Terence Rosemore';
SET @Character = 'Xlomo Smeth';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Maria Bakalova';
SET @Character = 'Cosmo';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('hero', 'superhero', 'melancholy', 'mad scientist', 'based on comic', 'sequel', 'superhero team', 'space opera', 'raccoon', 'aftercreditsstinger', 'duringcreditsstinger', 'marvel cinematic universe (mcu)', 'hopeless', 'cosmic', 'outer space', 'chosen family', 'lighthearted', 'hilarious', 'cheerful', 'disheartening', 'empathetic', 'enthusiastic', 'euphoric', 'hopeful', 'straightforward', 'sympathetic');

GO
-- ============================================

-- Movie: Date Night
DECLARE @MovieTitle VARCHAR(255) = 'Date Night';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Crime', 'Romance', 'Thriller');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Shawn Levy');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Josh Klausner');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Steve Carell';
SET @Character = 'Phil Foster';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tina Fey';
SET @Character = 'Claire Foster';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Mark Wahlberg';
SET @Character = 'Holbrooke';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Taraji P. Henson';
SET @Character = 'Detective Arroyo';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jimmi Simpson';
SET @Character = 'Armstrong';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Common';
SET @Character = 'Collins';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'William Fichtner';
SET @Character = 'DA Frank Crenshaw';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Leighton Meester';
SET @Character = 'Katy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'J.B. Smoove';
SET @Character = 'Cabbie';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kristen Wiig';
SET @Character = 'Haley Sullivan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('new york city', 'taxi', 'husband wife relationship', 'corruption', 'new jersey', 'expensive restaurant', 'taxi driver', 'blackmail', 'mistaken identity', 'stripper', 'mafia boss', 'muscleman', 'district attorney', 'manhattan', 'new york city', 'aftercreditsstinger', 'duringcreditsstinger', 'outtakes', 'detectives', 'breaking in', 'thieves', 'married couple with children', 'reservation');

GO
-- ============================================

-- Movie: Tag
DECLARE @MovieTitle VARCHAR(255) = 'Tag';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Comedy');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Jeff Tomsic');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Rob McKittrick', 'Mark Steilen',  'Mark Steilen',  'Russell Adams');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Ed Helms';
SET @Character = 'Hogan ''Hoagie'' Malloy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Lil Rel Howery';
SET @Character = 'Reggie';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jon Hamm';
SET @Character = 'Bob Callahan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Annabelle Wallis';
SET @Character = 'Rebecca Crosby';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jake Johnson';
SET @Character = 'Randy ''Chilli'' Cilliano';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Isla Fisher';
SET @Character = 'Anna Malloy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Hannibal Buress';
SET @Character = 'Kevin Sable';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Nora Dunn';
SET @Character = 'Linda Malloy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Steve Berg';
SET @Character = 'Lou Seibert';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jeremy Renner';
SET @Character = 'Jerry Pierce';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('based on true story', 'travel', 'game', 'group of friends', 'classmates');

GO
-- ============================================

-- Movie: The Nice Guys
DECLARE @MovieTitle VARCHAR(255) = 'The Nice Guys';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Comedy', 'Crime', 'Thriller');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Shane Black');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Shane Black', 'Anthony Bagarozzi');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Russell Crowe';
SET @Character = 'Jackson Healy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ryan Gosling';
SET @Character = 'Holland March';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Angourie Rice';
SET @Character = 'Holly March';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Matt Bomer';
SET @Character = 'John Boy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Margaret Qualley';
SET @Character = 'Amelia Kuttner';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Yaya DaCosta';
SET @Character = 'Tally';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Keith David';
SET @Character = 'Older Guy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Beau Knapp';
SET @Character = 'Blueface';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Lois Smith';
SET @Character = 'Mrs. Glenn';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Murielle Telio';
SET @Character = 'Misty Mountains';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('daughter', 'pornography', 'detective', '1970s', 'investigation', 'alcoholism', 'private investigator', 'conspiracy', 'whodunit', 'alcoholic', 'buddy cop', 'private eye', 'neo-noir', 'father daughter relationship', 'lighthearted', 'hilarious', 'amused', 'earnest', 'vibrant');

GO
-- ============================================

-- Movie: The Big Sick
DECLARE @MovieTitle VARCHAR(255) = 'The Big Sick';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Drama', 'Romance');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Michael Showalter');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Emily V. Gordon', 'Kumail Nanjiani');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Kumail Nanjiani';
SET @Character = 'Kumail';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Zoe Kazan';
SET @Character = 'Emily';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Holly Hunter';
SET @Character = 'Beth';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ray Romano';
SET @Character = 'Terry';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Anupam Kher';
SET @Character = 'Azmat';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Zenobia Shroff';
SET @Character = 'Sharmeen';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Adeel Akhtar';
SET @Character = 'Naveed';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Bo Burnham';
SET @Character = 'CJ';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Aidy Bryant';
SET @Character = 'Mary';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kurt Braunohler';
SET @Character = 'Chris';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('chicago', 'illinois', 'new york city', 'immigrant', 'muslim', 'roommates', 'sadness', 'sarcasm', 'comedian', 'based on true story', 'one-man show', 'pakistan', 'family relationships', 'film in film', 'matchmaking', 'cultural difference', 'hospital', 'falling in love', 'family', 'illness', 'group of friends', 'intercultural relationship', 'aftercreditsstinger', 'college student', 'uber', 'traditional family', 'comedy club', 'stand-up comedian', 'grad school');

GO
-- ============================================

-- Movie: Oppenheimer
DECLARE @MovieTitle VARCHAR(255) = 'Oppenheimer';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Biography', 'Drama', 'History');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Christopher Nolan');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Christopher Nolan',  'Kai Bird', 'Martin Sherwin');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Cillian Murphy';
SET @Character = 'J. Robert Oppenheimer';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Emily Blunt';
SET @Character = 'Kitty Oppenheimer';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Robert Downey Jr.';
SET @Character = 'Lewis Strauss';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Alden Ehrenreich';
SET @Character = 'Senate Aide';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Scott Grimes';
SET @Character = 'Counsel';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jason Clarke';
SET @Character = 'Roger Robb';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kurt Koehler';
SET @Character = 'Thomas Morgan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tony Goldwyn';
SET @Character = 'Gordon Gray';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'John Gowans';
SET @Character = 'Ward Evans';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Macon Blair';
SET @Character = 'Lloyd Garrison';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('husband wife relationship', 'based on novel or book', 'atomic bomb', 'patriotism', 'new mexico', 'world war ii', 'atomic bomb test', 'physics', 'biography', 'based on true story', 'interrogation', 'guilt', 'historical event', 'nuclear weapons', 'communism', 'red scare', 'mccarthyism', 'top secret project', 'moral dilemma', 'usa politics', '1940s', 'antisemitism', '20th century', 'manhattan project', 'los alamos');

GO
-- ============================================

-- Movie: The Pianist
DECLARE @MovieTitle VARCHAR(255) = 'The Pianist';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Biography', 'Drama', 'Music', 'War');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Roman Polanski');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Ronald Harwood',  'Wladyslaw Szpilman');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Adrien Brody';
SET @Character = 'Wladyslaw Szpilman';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Emilia Fox';
SET @Character = 'Dorota';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Michal Zebrowski';
SET @Character = 'Jurek';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ed Stoppard';
SET @Character = 'Henryk';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Maureen Lipman';
SET @Character = 'Mother';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Frank Finlay';
SET @Character = 'Father';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jessica Kate Meyer';
SET @Character = 'Halina';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Julia Rayner';
SET @Character = 'Regina';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Wanja Mues';
SET @Character = 'SS Slapping Father';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Richard Ridings';
SET @Character = 'Mr. Lipa';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('concert', 'nazi', 'resistance', 'warsaw ghetto', 'polish resistance', 'homeland', 'holocaust (shoah)', 'hunger', 'world war ii', 'prisoner of war', 'ghetto', 'deportation', 'jew persecution', 'liberation', 'biography', 'survival', 'based on memoir or autobiography', 'pianist', 'poland');

GO
-- ============================================

-- Movie: Marriage Story
DECLARE @MovieTitle VARCHAR(255) = 'Marriage Story';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Drama', 'Romance');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Noah Baumbach');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Noah Baumbach');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Adam Driver';
SET @Character = 'Charlie Barber';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Scarlett Johansson';
SET @Character = 'Nicole Barber';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Julia Greer';
SET @Character = 'Street Solicitor #1';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Azhy Robertson';
SET @Character = 'Henry Barber';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Wallace Shawn';
SET @Character = 'Theater Actor';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Matthew Maher';
SET @Character = 'Theater Actor';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Eric Berryman';
SET @Character = 'Theater Actor';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Mickey Sumner';
SET @Character = 'Theater Actor';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'David Turner';
SET @Character = 'Theater Actor';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Gideon Glick';
SET @Character = 'Theater Actor';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('infidelity', 'new york city', 'husband wife relationship', 'parent child relationship', 'theatre group', 'theater director', 'lawyer', 'los angeles', 'california', 'divorce', 'divorce lawyer', 'thoughtful', 'complex', 'intense', 'sincere');

GO
-- ============================================

-- Movie: Babylon
DECLARE @MovieTitle VARCHAR(255) = 'Babylon';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Drama', 'History');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Damien Chazelle');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Damien Chazelle');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'J.C. Currais';
SET @Character = 'Truck Driver';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Diego Calva';
SET @Character = 'Manny Torres';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jimmy Ortega';
SET @Character = 'Elephant Wrangler';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Marcos A. Ferraez';
SET @Character = 'Police Officer';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Shane Powers';
SET @Character = 'Dale';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Phoebe Tonkin';
SET @Character = 'Jane Thornton';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Troy Metcalf';
SET @Character = 'Orville Pickwick';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jovan Adepo';
SET @Character = 'Sidney Palmer';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Hansford Prince';
SET @Character = 'Joe Holiday';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Telvin Griffin';
SET @Character = 'Reggie';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('elephant', 'gambling', 'gambling debt', 'movie business', 'orgy', 'cocaine', 'champagne', 'alcoholism', 'hollywood', 'alcoholic', 'filmmaking', 'movie star', 'silent film star', '1920s', 'old hollywood', 'fading star', 'sex');

GO
-- ============================================

-- Movie: Manchester by the Sea
DECLARE @MovieTitle VARCHAR(255) = 'Manchester by the Sea';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Drama');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Kenneth Lonergan');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Kenneth Lonergan');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Casey Affleck';
SET @Character = 'Lee Chandler';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ivy O''Brien';
SET @Character = 'Young Patrick';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kyle Chandler';
SET @Character = 'Joe Chandler';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Richard Donelly';
SET @Character = 'Mr. Martinez';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Virginia Loring Cooke';
SET @Character = 'Mrs. Groom';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Quincy Tyler Bernstine';
SET @Character = 'Marianne';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Missy Yager';
SET @Character = 'Mrs. Olsen';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Stephen McKinley Henderson';
SET @Character = 'Mr. Emery';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ben Hanson';
SET @Character = 'Lenny - the bartender';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Mary Mallen';
SET @Character = 'Sharon';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('funeral', 'boston', 'massachusetts', 'brother', 'boat', 'sadness', 'massachusetts', 'loss', 'dysfunctional family', 'grief', 'hospital', 'house fire', 'death', 'nephew', 'ex-wife', 'nonlinear timeline', 'mental health', 'ex-husband ex-wife relationship', 'legal guardian', 'dysfunctional life', 'depressed');

GO
-- ============================================

-- Movie: Birdman or (The Unexpected Virtue of Ignorance)
DECLARE @MovieTitle VARCHAR(255) = 'Birdman or (The Unexpected Virtue of Ignorance)';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Drama');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Alejandro G. Iñárritu');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Alejandro G. Iñárritu', 'Nicolás Giacobone', 'Alexander Dinelaris', 'Armando Bo',  'Raymond Carver');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Michael Keaton';
SET @Character = 'Riggan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Emma Stone';
SET @Character = 'Sam';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kenny Chin';
SET @Character = 'Korean Grocer';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jamahl Garrison-Lowe';
SET @Character = 'Stagehand';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Zach Galifianakis';
SET @Character = 'Jake';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Naomi Watts';
SET @Character = 'Lesley';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jeremy Shamos';
SET @Character = 'Ralph';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Andrea Riseborough';
SET @Character = 'Laura';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Katherine O''Sullivan';
SET @Character = 'Costume Assistant';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Damian Young';
SET @Character = 'Gabriel';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('new york city', 'midlife crisis', 'superhero', 'dark comedy', 'times square', 'marijuana', 'broadway', 'magic realism', 'meditative', 'city life', 'father daughter relationship');

GO
-- ============================================

-- Movie: 500 Days of Summer
DECLARE @MovieTitle VARCHAR(255) = '500 Days of Summer';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Drama', 'Romance');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Marc Webb');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Scott Neustadter', 'Michael H. Weber');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Joseph Gordon-Levitt';
SET @Character = 'Tom';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Zooey Deschanel';
SET @Character = 'Summer';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Geoffrey Arend';
SET @Character = 'McKenzie';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Chloë Grace Moretz';
SET @Character = 'Rachel';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Matthew Gray Gubler';
SET @Character = 'Paul';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Clark Gregg';
SET @Character = 'Vance';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Patricia Belcher';
SET @Character = 'Millie';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Rachel Boston';
SET @Character = 'Alison';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Minka Kelly';
SET @Character = 'Autumn - Girl at Interview';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Charles Walker';
SET @Character = 'Millie''s New Husband';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('jealousy', 'gallery', 'fight', 'date', 'architect', 'interview', 'sister', 'love', 'friends', 'fate', 'los angeles', 'california', 'summer', 'year', 'heartache', 'romantic', 'assertive');

GO
-- ============================================

-- Movie: The Prestige
DECLARE @MovieTitle VARCHAR(255) = 'The Prestige';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Drama', 'Mystery', 'Sci-Fi', 'Thriller');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Christopher Nolan');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Jonathan Nolan', 'Christopher Nolan',  'Christopher Priest');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Hugh Jackman';
SET @Character = 'Robert Angier';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Christian Bale';
SET @Character = 'Alfred Borden';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Michael Caine';
SET @Character = 'Cutter';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Piper Perabo';
SET @Character = 'Julia McCullough';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Rebecca Hall';
SET @Character = 'Sarah';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Scarlett Johansson';
SET @Character = 'Olivia Wenscombe';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Samantha Mahurin';
SET @Character = 'Jess';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'David Bowie';
SET @Character = 'Tesla';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Andy Serkis';
SET @Character = 'Alley';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Daniel Davis';
SET @Character = 'Judge';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('dying and death', 'suicide', 'class society', 'london', 'england', 'magic', 'competition', 'obsession', 'hostility', 'class', 'diary', 'twist', 'tricks', 'illusion', 'rivalry', 'partner', 'steampunk', 'cruelty', 'hanging', 'jail cell', '19th century', 'nikola tesla', 'magician', 'tesla coil', 'bittersweet', 'secret', 'absurd', 'suspenseful', 'tense', 'mind-blowing');

GO
-- ============================================

-- Movie: Jojo Rabbit
DECLARE @MovieTitle VARCHAR(255) = 'Jojo Rabbit';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Drama', 'War');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Taika Waititi');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Christine Leunens',  'Taika Waititi');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Roman Griffin Davis';
SET @Character = 'Jojo';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Thomasin McKenzie';
SET @Character = 'Elsa';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Scarlett Johansson';
SET @Character = 'Rosie';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Taika Waititi';
SET @Character = 'Adolf';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sam Rockwell';
SET @Character = 'Captain Klenzendorf';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Rebel Wilson';
SET @Character = 'Fraulein Rahm';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Alfie Allen';
SET @Character = 'Finkel';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Stephen Merchant';
SET @Character = 'Deertz';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Archie Yates';
SET @Character = 'Yorki';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Luke Brandon Field';
SET @Character = 'Christoph';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('based on novel or book', 'world war ii', 'jew persecution', 'affectation', 'satire', 'imaginary friend', 'hitler youth', 'single mother', 'nazism', '1940s', 'satirical', 'child protagonist', 'adolf hitler', 'children in wartime', 'lighthearted');

GO
-- ============================================

-- Movie: Get Out
DECLARE @MovieTitle VARCHAR(255) = 'Get Out';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Horror', 'Mystery', 'Thriller');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Jordan Peele');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Jordan Peele');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Daniel Kaluuya';
SET @Character = 'Chris Washington';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Allison Williams';
SET @Character = 'Rose Armitage';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Catherine Keener';
SET @Character = 'Missy Armitage';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Bradley Whitford';
SET @Character = 'Dean Armitage';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Caleb Landry Jones';
SET @Character = 'Jeremy Armitage';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Marcus Henderson';
SET @Character = 'Walter';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Betty Gabriel';
SET @Character = 'Georgina';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'LaKeith Stanfield';
SET @Character = 'Andre Logan King';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Stephen Root';
SET @Character = 'Jim Hudson';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Lil Rel Howery';
SET @Character = 'Rod Williams';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('kidnapping', 'externally controlled action', 'manipulation', 'dark comedy', 'hypnosis', 'parents-in-law', 'satire', 'racist', 'revenge', 'interracial relationship', 'disappearance', 'racism', 'psychological thriller', 'biting', 'blunt', 'neurosurgeon', 'missing person', 'stereotype', 'brain surgery', 'race-conscious');

GO
-- ============================================

-- Movie: Baby Driver
DECLARE @MovieTitle VARCHAR(255) = 'Baby Driver';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Crime', 'Drama', 'Music');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Edgar Wright');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Edgar Wright');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Ansel Elgort';
SET @Character = 'Baby';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jon Bernthal';
SET @Character = 'Griff';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jon Hamm';
SET @Character = 'Buddy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Eiza González';
SET @Character = 'Darling';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Micah Howard';
SET @Character = 'Barista';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Lily James';
SET @Character = 'Debora';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Morgan Brown';
SET @Character = 'Street Preacher';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kevin Spacey';
SET @Character = 'Doc';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Morse Diggs';
SET @Character = 'Morse Diggs';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'CJ Jones';
SET @Character = 'Joseph';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('robbery', 'waitress', 'atlanta', 'crime boss', 'romance', 'heist', 'getaway car', 'on the run', 'shootout', 'bank robbery', 'getaway driver', 'sign languages', 'armed robbery', 'aggressive', 'hearing impaired', 'intense', 'joyful', 'urgent');

GO
-- ============================================

-- Movie: The Social Network
DECLARE @MovieTitle VARCHAR(255) = 'The Social Network';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Biography', 'Drama');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('David Fincher');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Aaron Sorkin',  'Ben Mezrich');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Jesse Eisenberg';
SET @Character = 'Mark Zuckerberg';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Rooney Mara';
SET @Character = 'Erica Albright';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Bryan Barter';
SET @Character = 'Billy Olson';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Dustin Fitzsimons';
SET @Character = 'Phoenix Club President';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Joseph Mazzello';
SET @Character = 'Dustin Moskovitz';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Patrick Mapel';
SET @Character = 'Chris Hughes';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Andrew Garfield';
SET @Character = 'Eduardo Saverin';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Toby Meuli';
SET @Character = 'Phoenix Member Playing Facemash';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Alecia Svensen';
SET @Character = 'Girl at Phoenix Club';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jami Owen';
SET @Character = 'Student Playing Facemash';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('hacker', 'based on novel or book', 'boston', 'massachusetts', 'ex-girlfriend', 'harvard university', 'narcissism', 'based on true story', 'hacking', 'historical fiction', 'twins', 'double cross', 'creator', 'frat party', 'social network', 'deposition', 'intellectual property', 'entrepreneur', 'arrogance', 'social media', 'meditative', 'young entrepreneur', 'facebook', 'legal drama', 'critical', 'tense', 'antagonistic', 'callous', 'wry');

GO
-- ============================================

-- Movie: Inglourious Basterds
DECLARE @MovieTitle VARCHAR(255) = 'Inglourious Basterds';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Adventure', 'Drama', 'War');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Quentin Tarantino');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Quentin Tarantino');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Brad Pitt';
SET @Character = 'Lt. Aldo Raine';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Mélanie Laurent';
SET @Character = 'Shosanna Dreyfus';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Christoph Waltz';
SET @Character = 'Col. Hans Landa';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Eli Roth';
SET @Character = 'Sgt. Donny Donowitz';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Michael Fassbender';
SET @Character = 'Lt. Archie Hicox';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Diane Kruger';
SET @Character = 'Bridget von Hammersmark';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Daniel Brühl';
SET @Character = 'Fredrick Zoller';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Til Schweiger';
SET @Character = 'Sgt. Hugo Stiglitz';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Gedeon Burkhard';
SET @Character = 'Cpl. Wilhelm Wicki';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jacky Ido';
SET @Character = 'Marcel';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('guerrilla warfare', 'swastika', 'paris', 'france', 'nazi', 'self sacrifice', 'sadism', 'dynamite', 'mexican standoff', 'world war ii', 'jew persecution', 'masochism', 'anti-semitism', 'german occupation of france', 'british politics', 'revisionist history', 'adolf hitler');

GO
-- ============================================

-- Movie: Lady Bird
DECLARE @MovieTitle VARCHAR(255) = 'Lady Bird';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Drama');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Greta Gerwig');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Greta Gerwig');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Saoirse Ronan';
SET @Character = 'Lady Bird McPherson';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Laurie Metcalf';
SET @Character = 'Marion McPherson';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tracy Letts';
SET @Character = 'Larry McPherson';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Lucas Hedges';
SET @Character = 'Danny O''Neill';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Timothée Chalamet';
SET @Character = 'Kyle Scheible';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Beanie Feldstein';
SET @Character = 'Julie Steffans';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Lois Smith';
SET @Character = 'Sister Sarah Joan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Stephen McKinley Henderson';
SET @Character = 'Father Leviatch';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Odeya Rush';
SET @Character = 'Jenna Walton';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jordan Rodrigues';
SET @Character = 'Miguel McPherson';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('friendship', 'loss of virginity', 'coming of age', 'teen angst', 'high school graduation', 'teenage girl', 'best friend', 'loss of job', 'high school student', 'catholic school', 'first love', 'semi autobiographical', 'sacramento', 'woman director', 'father daughter relationship', 'mother daughter relationship', 'college applications', '2000s');

GO
-- ============================================

-- Movie: 10 Things I Hate About You
DECLARE @MovieTitle VARCHAR(255) = '10 Things I Hate About You';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Drama', 'Romance');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Gil Junger');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Karen McCullah', 'Kirsten Smith',  'William Shakespeare');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Heath Ledger';
SET @Character = 'Patrick Verona';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Julia Stiles';
SET @Character = 'Kat Stratford';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Joseph Gordon-Levitt';
SET @Character = 'Cameron James';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Larisa Oleynik';
SET @Character = 'Bianca Stratford';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'David Krumholtz';
SET @Character = 'Michael Eckman';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Andrew Keegan';
SET @Character = 'Joey Donner';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Susan May Pratt';
SET @Character = 'Mandella';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Gabrielle Union';
SET @Character = 'Chastity';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Larry Miller';
SET @Character = 'Walter Stratford';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Daryl Mitchell';
SET @Character = 'Mr. Morgan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('high school', 'deception', 'based on play or musical', 'coming of age', 'teen movie', 'shrew', 'valentine''s day', 'shakespeare in modern dress', 'opposites attract', 'duringcreditsstinger', 'teenage romance', 'overprotective father', 'romantic');

GO
-- ============================================

-- Movie: Scott Pilgrim vs. the World
DECLARE @MovieTitle VARCHAR(255) = 'Scott Pilgrim vs. the World';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Comedy', 'Fantasy', 'Romance');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Edgar Wright');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Michael Bacall', 'Edgar Wright',  'Bryan Lee O''Malley');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Michael Cera';
SET @Character = 'Scott Pilgrim';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kieran Culkin';
SET @Character = 'Wallace Wells';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Anna Kendrick';
SET @Character = 'Stacey Pilgrim';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Alison Pill';
SET @Character = 'Kim Pine';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Aubrey Plaza';
SET @Character = 'Julie Powers';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Mary Elizabeth Winstead';
SET @Character = 'Ramona Flowers';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jason Schwartzman';
SET @Character = 'Gideon Graves';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Johnny Simmons';
SET @Character = 'Young Neil';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Mark Webber';
SET @Character = 'Stephen Stills';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ellen Wong';
SET @Character = 'Knives Chau';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('video game', 'skateboarding', 'ex-boyfriend', 'ex-girlfriend', 'toronto', 'canada', 'animated scene', 'dating', 'guitar player', 'break-up', 'based on graphic novel', 'group of friends', 'whipping', 'hipster', 'underage girlfriend', 'unconsciousness', 'girl fight', 'vegan', 'aftercreditsstinger', 'garage band', 'band competition');

GO
-- ============================================

-- Movie: Inception
DECLARE @MovieTitle VARCHAR(255) = 'Inception';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Adventure', 'Sci-Fi', 'Thriller');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Christopher Nolan');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Christopher Nolan');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Leonardo DiCaprio';
SET @Character = 'Cobb';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Joseph Gordon-Levitt';
SET @Character = 'Arthur';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Elliot Page';
SET @Character = 'Ariadne';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tom Hardy';
SET @Character = 'Eames';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ken Watanabe';
SET @Character = 'Saito';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Dileep Rao';
SET @Character = 'Yusuf';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Cillian Murphy';
SET @Character = 'Robert Fischer';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tom Berenger';
SET @Character = 'Browning';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Marion Cotillard';
SET @Character = 'Mal';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Pete Postlethwaite';
SET @Character = 'Maurice Fischer';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('rescue', 'mission', 'dreams', 'airplane', 'paris', 'france', 'virtual reality', 'kidnapping', 'philosophy', 'spy', 'allegory', 'manipulation', 'car crash', 'heist', 'memory', 'architecture', 'los angeles', 'california', 'dream world', 'subconscious', 'awestruck', 'complicated', 'powerful');

GO
-- ============================================

-- Movie: The Grand Budapest Hotel
DECLARE @MovieTitle VARCHAR(255) = 'The Grand Budapest Hotel';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Drama');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Wes Anderson');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Stefan Zweig',  'Wes Anderson',  'Wes Anderson', 'Hugo Guinness');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Ralph Fiennes';
SET @Character = 'M. Gustave';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'F. Murray Abraham';
SET @Character = 'Mr. Moustafa';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Mathieu Amalric';
SET @Character = 'Serge X.';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Adrien Brody';
SET @Character = 'Dmitri';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Willem Dafoe';
SET @Character = 'Jopling';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jeff Goldblum';
SET @Character = 'Deputy Kovacs';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Harvey Keitel';
SET @Character = 'Ludwig';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jude Law';
SET @Character = 'Young Writer';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Bill Murray';
SET @Character = 'M. Ivan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Edward Norton';
SET @Character = 'Henckels';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('hotel', 'painting', 'wartime', 'affectation', 'eastern europe', 'author', 'gunfight', 'theft', 'bellboy', 'mentor protégé relationship', 'european', 'hotel lobby', 'renaissance painting', '1960s', '1930s', 'ironic', 'complex', 'loving', 'joyous', 'admiring', 'adoring', 'celebratory', 'cheerful', 'comforting', 'conceited', 'euphoric', 'forceful', 'joyful');

GO
-- ============================================

-- Movie: The Dark Knight
DECLARE @MovieTitle VARCHAR(255) = 'The Dark Knight';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Crime', 'Drama', 'Thriller');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Christopher Nolan');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Jonathan Nolan', 'Christopher Nolan',  'Christopher Nolan', 'David S. Goyer',  'Bob Kane');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Christian Bale';
SET @Character = 'Bruce Wayne';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Heath Ledger';
SET @Character = 'Joker';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Aaron Eckhart';
SET @Character = 'Harvey Dent';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Michael Caine';
SET @Character = 'Alfred';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Maggie Gyllenhaal';
SET @Character = 'Rachel';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Gary Oldman';
SET @Character = 'Gordon';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Morgan Freeman';
SET @Character = 'Lucius Fox';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Monique Gabriela Curnen';
SET @Character = 'Ramirez';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ron Dean';
SET @Character = 'Wuertz';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Cillian Murphy';
SET @Character = 'Scarecrow';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('joker', 'sadism', 'chaos', 'secret identity', 'crime fighter', 'superhero', 'anti hero', 'scarecrow', 'based on comic', 'vigilante', 'organized crime', 'tragic hero', 'anti villain', 'criminal mastermind', 'district attorney', 'super power', 'super villain', 'neo-noir', 'bold');

GO
-- ============================================

-- Movie: Eternal Sunshine of the Spotless Mind
DECLARE @MovieTitle VARCHAR(255) = 'Eternal Sunshine of the Spotless Mind';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Drama', 'Romance', 'Sci-Fi');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Michel Gondry');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Charlie Kaufman', 'Michel Gondry', 'Pierre Bismuth',  'Charlie Kaufman');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Jim Carrey';
SET @Character = 'Joel Barish';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kate Winslet';
SET @Character = 'Clementine Kruczynski';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Gerry Robert Byrne';
SET @Character = 'Train Conductor';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Elijah Wood';
SET @Character = 'Patrick';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Thomas Jay Ryan';
SET @Character = 'Frank';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Mark Ruffalo';
SET @Character = 'Stan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jane Adams';
SET @Character = 'Carrie';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'David Cross';
SET @Character = 'Rob';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kirsten Dunst';
SET @Character = 'Mary';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tom Wilkinson';
SET @Character = 'Dr. Mierzwiak';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('new york city', 'regret', 'jealousy', 'deja vu', 'amnesia', 'dreams', 'operation', 'relationship problems', 'love', 'memory', 'brainwashing', 'relationship', 'heartbreak', 'nonlinear timeline', '2000s', 'memory manipulation', 'joyful');

GO
-- ============================================

-- Movie: Spider-Man: Into the Spider-Verse
DECLARE @MovieTitle VARCHAR(255) = 'Spider-Man: Into the Spider-Verse';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Animation', 'Action', 'Adventure', 'Comedy', 'Family', 'Fantasy', 'Sci-Fi');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Bob Persichetti', 'Peter Ramsey', 'Rodney Rothman');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Phil Lord', 'Rodney Rothman',  'Phil Lord');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Shameik Moore';
SET @Character = 'Miles Morales';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jake Johnson';
SET @Character = 'Peter B. Parker';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Hailee Steinfeld';
SET @Character = 'Gwen Stacy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Mahershala Ali';
SET @Character = 'Uncle Aaron';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Brian Tyree Henry';
SET @Character = 'Jefferson Davis';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Lily Tomlin';
SET @Character = 'Aunt May';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Luna Lauren Velez';
SET @Character = 'Rio Morales';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Zoë Kravitz';
SET @Character = 'Mary Jane';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'John Mulaney';
SET @Character = 'Spider-Ham';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kimiko Glenn';
SET @Character = 'Peni Parker';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('superhero', 'based on comic', 'aftercreditsstinger', 'alternate universe');

GO
-- ============================================

-- Movie: Interstellar
DECLARE @MovieTitle VARCHAR(255) = 'Interstellar';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Adventure', 'Drama', 'Sci-Fi');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Christopher Nolan');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Jonathan Nolan', 'Christopher Nolan');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Ellen Burstyn';
SET @Character = 'Murph';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Matthew McConaughey';
SET @Character = 'Cooper';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Mackenzie Foy';
SET @Character = 'Murph';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'John Lithgow';
SET @Character = 'Donald';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Timothée Chalamet';
SET @Character = 'Tom';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'David Oyelowo';
SET @Character = 'School Principal';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Collette Wolfe';
SET @Character = 'Ms. Hanley';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Francis X. McCarthy';
SET @Character = 'Boots';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Bill Irwin';
SET @Character = 'TARS';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Anne Hathaway';
SET @Character = 'Brand';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('rescue', 'future', 'spacecraft', 'race against time', 'artificial intelligence (a.i.)', 'nasa', 'time warp', 'dystopia', 'expedition', 'space travel', 'wormhole', 'famine', 'hibernation', 'black hole', 'quantum mechanics', 'family relationships', 'space', 'robot', 'astronaut', 'scientist', 'single father', 'farmer', 'space station', 'space adventure', 'time paradox', 'cryonics', 'father daughter relationship', '2060s', 'cornfield', 'time manipulation', 'amused');

GO
-- ============================================

-- Movie: tick, tick... BOOM!
DECLARE @MovieTitle VARCHAR(255) = 'tick, tick... BOOM!';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Biography', 'Comedy', 'Drama', 'Musical');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Lin-Manuel Miranda');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Steven Levenson',  'Jonathan Larson');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Andrew Garfield';
SET @Character = 'Jonathan Larson';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Alexandra Shipp';
SET @Character = 'Susan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Robin de Jesus';
SET @Character = 'Michael';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Vanessa Hudgens';
SET @Character = 'Karessa';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Joshua Henry';
SET @Character = 'Roger';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jonathan Marc Sherman';
SET @Character = 'Ira Weitzman';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Michaela Jaé  Rodriguez';
SET @Character = 'Carolyn';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ben Levi Ross';
SET @Character = 'Freddy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Judith Light';
SET @Character = 'Rosa Stevens';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Bradley Whitford';
SET @Character = 'Stephen Sondheim';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('new york city', 'composer', 'artist', 'melancholy', 'musical', 'based on true story', 'based on play or musical', 'singing', 'boyfriend girlfriend relationship', 'struggling artist', '1990s', 'portrait of an artist', 'hiv/aids epidemic', 'inspirational', 'theater');

GO
-- ============================================

-- Movie: La La Land
DECLARE @MovieTitle VARCHAR(255) = 'La La Land';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Drama', 'Music', 'Musical', 'Romance');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Damien Chazelle');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Damien Chazelle');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Ryan Gosling';
SET @Character = 'Sebastian';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Emma Stone';
SET @Character = 'Mia';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Amiee Conn';
SET @Character = 'Famous Actress';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Terry Walters';
SET @Character = 'Linda';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Thom Shelton';
SET @Character = 'Coffee Spiller';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Cinda Adams';
SET @Character = 'Casting Director';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Callie Hernandez';
SET @Character = 'Tracy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jessica Rothe';
SET @Character = 'Alexis';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sonoya Mizuno';
SET @Character = 'Caitlin';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Rosemarie DeWitt';
SET @Character = 'Laura';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('dancing', 'dance', 'jazz', 'musical', 'ambition', 'casting', 'coffee shop', 'jazz club', 'traffic jam', 'hollywood', 'los angeles', 'california', 'pianist', 'pier', 'audition', 'valentine''s day', 'planetarium', 'aspiring actor', 'movie set', 'sunset', 'one woman show', 'pool party', 'griffith observatory', 'romantic', 'exuberant', 'tragic');

GO
-- ============================================

-- Movie: Nope
DECLARE @MovieTitle VARCHAR(255) = 'Nope';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Horror', 'Mystery', 'Sci-Fi', 'Thriller');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Jordan Peele');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Jordan Peele');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Daniel Kaluuya';
SET @Character = 'OJ Haywood';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Keke Palmer';
SET @Character = 'Emerald Haywood';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Brandon Perea';
SET @Character = 'Angel Torres';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Michael Wincott';
SET @Character = 'Antlers Holst';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Steven Yeun';
SET @Character = 'Ricky ''Jupe'' Park';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Wrenn Schmidt';
SET @Character = 'Amber Park';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Keith David';
SET @Character = 'Otis Haywood Sr.';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Devon Graye';
SET @Character = 'Ryder Muybridge';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Terry Notary';
SET @Character = 'Gordy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Barbie Ferreira';
SET @Character = 'Nessie';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('california', 'horse', 'exploitation', 'video surveillance', 'death of father', 'alien', 'ufo', 'social commentary', 'psychological thriller', 'alien invasion', 'child star', 'chimpanzee', 'aftercreditsstinger', 'horse farm', 'african american man', 'racial issues', 'brother sister relationship');

GO
-- ============================================

-- Movie: Bullet Train
DECLARE @MovieTitle VARCHAR(255) = 'Bullet Train';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Comedy', 'Thriller');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('David Leitch');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Zak Olkewicz',  'Kôtarô Isaka');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Brad Pitt';
SET @Character = 'Ladybug';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Joey King';
SET @Character = 'Prince';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Aaron Taylor-Johnson';
SET @Character = 'Tangerine';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Brian Tyree Henry';
SET @Character = 'Lemon';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Andrew Koji';
SET @Character = 'Kimura';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Hiroyuki Sanada';
SET @Character = 'The Elder';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Michael Shannon';
SET @Character = 'White Death';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sandra Bullock';
SET @Character = 'Maria';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Bad Bunny';
SET @Character = 'Wolf';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Logan Lerman';
SET @Character = 'The Son';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('mission', 'japan', 'assassin', 'based on novel or book', 'train', 'luck', 'deadly snake', 'duringcreditsstinger', 'shinkansen');

GO
-- ============================================

-- Movie: Everything Everywhere All at Once
DECLARE @MovieTitle VARCHAR(255) = 'Everything Everywhere All at Once';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Adventure', 'Comedy', 'Drama', 'Fantasy', 'Sci-Fi');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Daniel Kwan', 'Daniel Scheinert');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Daniel Kwan', 'Daniel Scheinert');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Michelle Yeoh';
SET @Character = 'Evelyn Wang';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Stephanie Hsu';
SET @Character = 'Joy Wang / Jobu Tupaki';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ke Huy Quan';
SET @Character = 'Waymond Wang';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'James Hong';
SET @Character = 'Gong Gong';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jamie Lee Curtis';
SET @Character = 'Deirdre Beaubeirdre';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tallie Medel';
SET @Character = 'Becky Sregor';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jenny Slate';
SET @Character = 'Debbie the Dog Mom';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Harry Shum Jr.';
SET @Character = 'Chad';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Biff Wiff';
SET @Character = 'Rick';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sunita Mani';
SET @Character = 'TV Musical - Queen';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('mother', 'martial arts', 'kung fu', 'philosophy', 'generations conflict', 'chinese woman', 'surrealism', 'laundromat', 'chinese', 'east asian lead', 'divorce', 'family', 'lgbt', 'hot dog', 'asian woman', 'chinese immigrant', 'imaginative', 'mother daughter relationship', 'action comedy', 'asian american', 'intergenerational trauma', 'internal revenue service', 'interdimensional travel', 'absurd', '瞬息全宇宙');

GO
-- ============================================

-- Movie: The Banshees of Inisherin
DECLARE @MovieTitle VARCHAR(255) = 'The Banshees of Inisherin';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Drama');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Martin McDonagh');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Martin McDonagh');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Colin Farrell';
SET @Character = 'Pádraic Súilleabháin';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Brendan Gleeson';
SET @Character = 'Colm Doherty';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kerry Condon';
SET @Character = 'Siobhán Súilleabháin';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Pat Shortt';
SET @Character = 'Jonjo Devine';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Gary Lydon';
SET @Character = 'Peadar Kearney';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jon Kenny';
SET @Character = 'Gerry';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Barry Keoghan';
SET @Character = 'Dominic Kearney';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sheila Flitton';
SET @Character = 'Mrs. McCormick';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'John Carty';
SET @Character = 'Older Musician 1';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Oliver Farrelly';
SET @Character = 'Older Musician 2';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('friendship', 'island', 'donkey', 'dark comedy', 'irish civil war (1922-23)', 'church', 'ireland', 'drinking', 'former best friend', 'self mutilation', 'fiddle', '1920s', 'brother sister relationship', 'pub');

GO
-- ============================================

-- Movie: Knives Out
DECLARE @MovieTitle VARCHAR(255) = 'Knives Out';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Crime', 'Drama', 'Mystery', 'Thriller');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Rian Johnson');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Rian Johnson');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Daniel Craig';
SET @Character = 'Benoit Blanc';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Chris Evans';
SET @Character = 'Ransom Drysdale';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ana de Armas';
SET @Character = 'Marta Cabrera';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jamie Lee Curtis';
SET @Character = 'Linda Drysdale';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Michael Shannon';
SET @Character = 'Walt Thrombey';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Don Johnson';
SET @Character = 'Richard Drysdale';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Toni Collette';
SET @Character = 'Joni Thrombey';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'LaKeith Stanfield';
SET @Character = 'Lieutenant Elliott';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Christopher Plummer';
SET @Character = 'Harlan Thrombey';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Katherine Langford';
SET @Character = 'Meg Thrombey';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('immigrant', 'detective', 'massachusetts', 'investigation', 'big family', 'mansion', 'whodunit', 'family home', 'murder mystery', 'neo-noir', 'privilege', 'absurd', 'suspenseful');

GO
-- ============================================

-- Movie: Chungking Express
DECLARE @MovieTitle VARCHAR(255) = 'Chungking Express';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Crime', 'Drama', 'Mystery', 'Romance');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Wong Kar-Wai');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Wong Kar-Wai');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Brigitte Lin';
SET @Character = 'Woman in Blonde Wig';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tony Leung Chiu-wai';
SET @Character = 'Cop 663';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Faye Wong';
SET @Character = 'Faye';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Takeshi Kaneshiro';
SET @Character = 'He Zhiwu, Cop 223';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Valerie Chow';
SET @Character = 'Air Hostess';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Piggy Chan';
SET @Character = 'Manager of ''Midnight Express''';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Lee-Na Kwan';
SET @Character = 'Richard';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Zhiming Huang';
SET @Character = 'Man';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Liang Zhen';
SET @Character = 'The 2nd May';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Songshen Zuo';
SET @Character = 'Man';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('drug smuggling', 'police', 'ex-girlfriend', 'girlfriend', 'snack bar', 'romance', 'hong kong', 'expiration date', 'flight attendant', 'cleaning');

GO
-- ============================================

-- Movie: The Pursuit of Happyness
DECLARE @MovieTitle VARCHAR(255) = 'The Pursuit of Happyness';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Biography', 'Drama');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Gabriele Muccino');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Steve Conrad');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Will Smith';
SET @Character = 'Chris Gardner';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jaden Smith';
SET @Character = 'Christopher';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Thandiwe Newton';
SET @Character = 'Linda';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Brian Howe';
SET @Character = 'Jay Twistle';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'James Karen';
SET @Character = 'Martin Frohm';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Dan Castellaneta';
SET @Character = 'Alan Frakesh';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kurt Fuller';
SET @Character = 'Walter Ribbon';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Takayo Fischer';
SET @Character = 'Mrs. Chu';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kevin West';
SET @Character = 'World''s Greatest Dad';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'George Cheung';
SET @Character = 'Chinese Maintenance Worker';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('work', 'worker', 'homeless person', 'single parent', 'san francisco', 'california', 'bus', 'homelessness', 'church service', 'bad luck', 'biography', 'based on true story', 'salesman', 'stockbroker', 'single father', 'inspiring story', 'poor', 'working life', 'inspirational', 'happiness');

GO
-- ============================================

-- Movie: The Substance
DECLARE @MovieTitle VARCHAR(255) = 'The Substance';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Drama', 'Horror', 'Sci-Fi');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Coralie Fargeat');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Coralie Fargeat');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Demi Moore';
SET @Character = 'Elisabeth';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Margaret Qualley';
SET @Character = 'Sue';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Dennis Quaid';
SET @Character = 'Harvey';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Edward Hamilton-Clark';
SET @Character = 'Fred';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Gore Abrams';
SET @Character = 'Oliver';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Oscar Lesage';
SET @Character = 'Troy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Christian Erickson';
SET @Character = 'Man at Diner';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Robin Greer';
SET @Character = 'Male Nurse';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tom Morton';
SET @Character = 'Doctor';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Hugo Diego Garcia';
SET @Character = 'Diego - Boyfriend';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('new year''s eve', 'capitalism', 'black market', 'identity', 'beauty', 'satire', 'aging', 'celebrity', 'female protagonist', 'los angeles', 'california', 'has been', 'aerobics', 'disfigurement', 'woman director', 'beauty standards', 'insecure woman', 'toxic masculinity', 'drug', 'body horror', 'female rage', 'youth', 'actress', 'distressing');

GO
-- ============================================

-- Movie: Joyland
DECLARE @MovieTitle VARCHAR(255) = 'Joyland';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Crime', 'Drama');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Saim Sadiq');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Saim Sadiq',  'Maggie Briggs');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Ali Junejo';
SET @Character = 'Haider';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Rasti Farooq';
SET @Character = 'Mumtaz';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Alina Khan';
SET @Character = 'Biba';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sarwat Gilani';
SET @Character = 'Nucchi';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Salmaan Peerzada';
SET @Character = 'Father Aman';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sohail Sameer';
SET @Character = 'Saleem';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sania Saeed';
SET @Character = 'Fayyaz';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ramiz Law';
SET @Character = 'Qaiser';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Honey Albela';
SET @Character = 'Ashfaq Saab';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Priya Usman Khan';
SET @Character = 'Shagnam Rani';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('dance', 'husband wife relationship', 'dancer', 'love', 'attraction', 'lgbt', 'pakistani culture', 'gay theme', 'transgender', 'tragic');

GO
-- ============================================

-- Movie: Circus of Life
DECLARE @MovieTitle VARCHAR(255) = 'Circus of Life';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Drama');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Sarmad Sultan Khoosat');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Nirmal Bano');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Arif Hassan';
SET @Character = 'Rahat Khawaja';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Samiya Mumtaz';
SET @Character = 'Farkhanda';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Eman Suleman';
SET @Character = 'Sadaf';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ali Kureshi';
SET @Character = 'Danish';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Nadia Afgan';
SET @Character = 'TV Show Hostess';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Adeel Afzal';
SET @Character = 'Usman';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Mehar Bano';
SET @Character = 'Cousin';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Hammad Haider Butt';
SET @Character = 'Cleric';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Agha Haider';
SET @Character = '';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ali Hasnain';
SET @Character = 'DJ';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('circus', 'social life', 'social justice', 'social');

GO
-- ============================================

-- Movie: The Godfather
DECLARE @MovieTitle VARCHAR(255) = 'The Godfather';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Crime', 'Drama');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Francis Ford Coppola');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Mario Puzo', 'Francis Ford Coppola',  'Mario Puzo');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Marlon Brando';
SET @Character = 'Don Vito Corleone';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Al Pacino';
SET @Character = 'Michael';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'James Caan';
SET @Character = 'Sonny';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Richard S. Castellano';
SET @Character = 'Clemenza';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Robert Duvall';
SET @Character = 'Tom Hagen';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sterling Hayden';
SET @Character = 'Capt. McCluskey';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'John Marley';
SET @Character = 'Jack Woltz';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Richard Conte';
SET @Character = 'Barzini';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Al Lettieri';
SET @Character = 'Sollozzo';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Diane Keaton';
SET @Character = 'Kay Adams';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('based on novel or book', 'loss of loved one', 'love at first sight', 'italy', 'symbolism', 'patriarch', 'europe', 'organized crime', 'mafia', 'religion', 'lawyer', 'revenge motive', 'crime family', 'sicilian mafia', 'religious hypocrisy', 'macabre', 'gun violence', 'rise to power', 'dead horse', 'gang violence', 'aggressive', '1940s', '1950s', 'mafia war', 'vindictive', 'suspenseful', 'tense', 'admiring', 'audacious', 'commanding');

GO
-- ============================================

-- Movie: Pulp Fiction
DECLARE @MovieTitle VARCHAR(255) = 'Pulp Fiction';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Crime', 'Drama');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Quentin Tarantino');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Quentin Tarantino', 'Roger Avary',  'Quentin Tarantino');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Tim Roth';
SET @Character = 'Pumpkin';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Amanda Plummer';
SET @Character = 'Honey Bunny';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Laura Lovelace';
SET @Character = 'Waitress';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'John Travolta';
SET @Character = 'Vincent Vega';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Samuel L. Jackson';
SET @Character = 'Jules Winnfield';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Phil LaMarr';
SET @Character = 'Marvin';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Frank Whaley';
SET @Character = 'Brett';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Burr Steers';
SET @Character = 'Roger';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Bruce Willis';
SET @Character = 'Butch Coolidge';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ving Rhames';
SET @Character = 'Marsellus Wallace';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('drug dealer', 'boxer', 'massage', 'stolen money', 'briefcase', 'crime boss', 'redemption', 'heirloom', 'dance competition', 'los angeles', 'california', 'theft', 'blunt', 'nonlinear timeline', 'multiple storylines', 'aggressive', 'neo-noir', 'philosophical', 'grand', 'ambiguous', 'vibrant');

GO
-- ============================================

-- Movie: October
DECLARE @MovieTitle VARCHAR(255) = 'October';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Drama', 'Romance');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Shoojit Sircar');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Juhi Chaturvedi',  'Juhi Chaturvedi',  'Juhi Chaturvedi',  'Juhi Chaturvedi',  'Wajid Shaikh');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Varun Dhawan';
SET @Character = 'Danish Walia';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Banita Sandhu';
SET @Character = 'Shiuli Iyer';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Gitanjali Rao';
SET @Character = 'Prof. Vidya Iyer';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sahil Vedoliyaa';
SET @Character = 'Manjeet';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Isha Chaturvedi';
SET @Character = 'Ishani';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Prateek Kapoor';
SET @Character = 'Asthana';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Iteeva Pande';
SET @Character = 'Kaveri';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Karamveer Kanwar';
SET @Character = 'Kunal';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ashish Ghosh';
SET @Character = 'Dr. Ghosh';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Rachica Oswal';
SET @Character = 'Danish''s Mother';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('bollywood');

GO
-- ============================================

-- Movie: Dune: Part One
DECLARE @MovieTitle VARCHAR(255) = 'Dune: Part One';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Adventure', 'Drama', 'Sci-Fi');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Denis Villeneuve');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Jon Spaihts', 'Denis Villeneuve', 'Eric Roth',  'Frank Herbert');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Timothée Chalamet';
SET @Character = 'Paul Atreides';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Rebecca Ferguson';
SET @Character = 'Lady Jessica Atreides';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Oscar Isaac';
SET @Character = 'Duke Leto Atreides';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jason Momoa';
SET @Character = 'Duncan Idaho';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Stellan Skarsgård';
SET @Character = 'Baron Vladimir Harkonnen';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Stephen McKinley Henderson';
SET @Character = 'Thufir Hawat';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Josh Brolin';
SET @Character = 'Gurney Halleck';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Javier Bardem';
SET @Character = 'Stilgar';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sharon Duncan-Brewster';
SET @Character = 'Dr. Liet Kynes';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Chang Chen';
SET @Character = 'Dr. Wellington Yueh';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('empire', 'future', 'epic', 'army', 'based on novel or book', 'prophecy', 'dystopia', 'emperor', 'sand', 'spice', 'hallucinogen', 'treason', 'baron', 'revenge', 'premonition', 'betrayal', 'space', 'water shortage', 'creature', 'desert', 'knife fight', 'destiny', 'giant worm', 'space opera', 'sand dune', 'messiah', 'domineering', 'mother son relationship', 'wonder', 'giant creature', 'suspenseful', 'intense', 'bold', 'commanding', 'foreboding', 'powerful');

GO

-- ============================================

-- Movie: Up
DECLARE @MovieTitle VARCHAR(255) = 'Up';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Animation', 'Adventure', 'Comedy', 'Drama', 'Family');

-- ========== Directors ==========
INSERT INTO MovieDirectors (MovieID, DirectorID)
SELECT @MovieID, DirectorID FROM Directors
WHERE DirectorName IN ('Pete Docter', 'Bob Peterson');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Pete Docter', 'Bob Peterson', 'Tom McCarthy',  'Bob Peterson', 'Pete Docter');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Edward Asner';
SET @Character = 'Carl Fredricksen';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Christopher Plummer';
SET @Character = 'Charles Muntz';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jordan Nagai';
SET @Character = 'Russell';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Bob Peterson';
SET @Character = 'Dug / Alpha';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Delroy Lindo';
SET @Character = 'Beta';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jerome Ranft';
SET @Character = 'Gamma';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'John Ratzenberger';
SET @Character = 'Construction Foreman Tom';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'David Kaye';
SET @Character = 'Newsreel Announcer';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Elie Docter';
SET @Character = 'Young Ellie';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jeremy Leary';
SET @Character = 'Young Carl';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
INSERT INTO MovieKeywords (MovieID, KeywordID)
SELECT @MovieID, KeywordID FROM Keywords
WHERE KeywordName IN ('central and south america', 'age difference', 'villain', 'balloon', 'travel', 'dog', 'duringcreditsstinger', 'pets', 'exploring', 'senior', 'sentimental');

GO
-- ============================================

-- Movie: Dragon Ball Daima
DECLARE @MovieTitle VARCHAR(255) = 'Dragon Ball Daima';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Animation', 'Action', 'Adventure', 'Comedy', 'Fantasy', 'Sci-Fi');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Yûko Kakihara', 'Yûko Kakihara', 'Akira Toriyama');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Masako Nozawa';
SET @Character = 'Son Goku / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kôki Uchiyama';
SET @Character = 'Gurorio';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Aaron Dismuke';
SET @Character = 'Glorio';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Stephanie Nadolny';
SET @Character = 'Goku';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Yumiko Kobayashi';
SET @Character = 'Kaiôshin';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Nia Celeste';
SET @Character = 'Supreme Kai';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ai Fairouz';
SET @Character = 'Panji';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Shôtarô Morikubo';
SET @Character = 'King Gomâ';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tom Laflin';
SET @Character = 'King Gomah';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Veronica Laux';
SET @Character = 'Panzy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: Dragon Ball GT
DECLARE @MovieTitle VARCHAR(255) = 'Dragon Ball GT';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Animation', 'Action', 'Adventure', 'Comedy', 'Fantasy', 'Sci-Fi', 'Thriller');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Akira Toriyama', 'Akira Toriyama', 'Atsushi Maekawa');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Elise Baughman';
SET @Character = 'Pan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Andrew Chandler';
SET @Character = 'Narrator / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Masako Nozawa';
SET @Character = 'Son Gokû / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Yûko Minaguchi';
SET @Character = 'Pan / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jôji Yanami';
SET @Character = 'Narrator / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Caitlynne Medrek';
SET @Character = 'Pan / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jeremiah Yurk';
SET @Character = 'Adult Goku / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Stephanie Nadolny';
SET @Character = 'Young Goku / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Eric Vale';
SET @Character = 'Trunks / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Matthew Erickson';
SET @Character = 'Gill / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: My Hero Academia
DECLARE @MovieTitle VARCHAR(255) = 'My Hero Academia';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Animation', 'Action', 'Adventure', 'Fantasy', 'Sci-Fi');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Kôhei Horikoshi', 'Kôhei Horikoshi', 'Kôhei Horikoshi');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Daiki Yamashita';
SET @Character = 'Izuku Midoriya';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Justin Briner';
SET @Character = 'Izuku Midoriya';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Nobuhiko Okamoto';
SET @Character = 'Katsuki Bakugou';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ayane Sakura';
SET @Character = 'Ochako Uraraka / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Yûki Kaji';
SET @Character = 'Shouto Todoroki';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kaito Ishikawa';
SET @Character = 'Tenya Iida / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Clifford Chapin';
SET @Character = 'Katsuki Bakugo / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Toshiki Masuda';
SET @Character = 'Eijirou Kirishima / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jun''ichi Suwabe';
SET @Character = 'Shouta Aizawa / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Luci Christian';
SET @Character = 'Ochaco Uraraka / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: Attack on Titan
DECLARE @MovieTitle VARCHAR(255) = 'Attack on Titan';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Animation', 'Action', 'Adventure', 'Drama', 'Fantasy', 'Horror');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Hajime Isayama', 'Hajime Isayama', 'Yasuko Kobayashi');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Jessie James Grelle';
SET @Character = 'Armin Arlert / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Bryce Papenbrook';
SET @Character = 'Eren Jaeger / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Trina Nishimura';
SET @Character = 'Mikasa Ackermann / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Yûki Kaji';
SET @Character = 'Eren Yeager';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Yui Ishikawa';
SET @Character = 'Mikasa Ackerman';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Marina Inoue';
SET @Character = 'Armin Arlert / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kishô Taniyama';
SET @Character = 'Jean Kirstein';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Hiro Shimono';
SET @Character = 'Connie Springer';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Clifford Chapin';
SET @Character = 'Conny Springer / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Mike McFarland';
SET @Character = 'Jean Kirschtein / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: Naruto
DECLARE @MovieTitle VARCHAR(255) = 'Naruto';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Animation', 'Action', 'Adventure', 'Comedy', 'Fantasy');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Masashi Kishimoto', 'Masashi Kishimoto', 'Masashi Kishimoto');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Junko Takeuchi';
SET @Character = 'Naruto Uzumaki / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Maile Flanagan';
SET @Character = 'Naruto Uzumaki';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kate Higgins';
SET @Character = 'Sakura Haruno / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Chie Nakamura';
SET @Character = 'Sakura Haruno';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Noriaki Sugiyama';
SET @Character = 'Sasuke Uchiha';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Yuri Lowenthal';
SET @Character = 'Sasuke Uchiha / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Dave Wittenberg';
SET @Character = 'Kakashi Hatake / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tony Beck';
SET @Character = 'Gaara';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Laurent Vernin';
SET @Character = 'Itachi Uchiha';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Colleen O''Shaughnessey';
SET @Character = 'Ino Yamanaka / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: One Piece
DECLARE @MovieTitle VARCHAR(255) = 'One Piece';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Animation', 'Action', 'Adventure', 'Comedy', 'Drama', 'Fantasy');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Eiichirô Oda', 'Eiichirô Oda', 'Eiichirô Oda');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Mayumi Tanaka';
SET @Character = 'Monkey D. Luffy / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Akemi Okamura';
SET @Character = 'Nami / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Laurent Vernin';
SET @Character = 'Mr. 7';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tony Beck';
SET @Character = 'Roronoa Zoro';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kazuya Nakai';
SET @Character = 'Roronoa Zoro / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kappei Yamaguchi';
SET @Character = 'Usopp / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Hiroaki Hirata';
SET @Character = 'Sanji / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ikue Ôtani';
SET @Character = 'Tony Tony Chopper / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Colleen Clinkenbeard';
SET @Character = 'Monkey D. Luffy / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Yuriko Yamaguchi';
SET @Character = 'Nico Robin / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: Bleach
DECLARE @MovieTitle VARCHAR(255) = 'Bleach';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Animation', 'Action', 'Adventure', 'Fantasy');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Tite Kubo', 'Tite Kubo', 'Masashi Sogo');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Johnny Yong Bosch';
SET @Character = 'Ichigo Kurosaki / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Michelle Ruff';
SET @Character = 'Rukia Kuchiki / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Stephanie Sheh';
SET @Character = 'Orihime Inoue / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jamieson Price';
SET @Character = 'Yasutora ''Chad'' Sado / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Steve Prince';
SET @Character = 'Uryu Ishida / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Wally Wingert';
SET @Character = 'Renji Abarai / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kirk Thornton';
SET @Character = 'Narrator / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Steve Staley';
SET @Character = 'Toshiro Hitsugaya / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Wendee Lee';
SET @Character = 'Yoruichi Shihoin / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Masakazu Morita';
SET @Character = 'Ichigo Kurosaki / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: Breaking Bad
DECLARE @MovieTitle VARCHAR(255) = 'Breaking Bad';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Crime', 'Drama', 'Thriller');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Vince Gilligan', 'Vince Gilligan', 'Peter Gould');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Bryan Cranston';
SET @Character = 'Walter White';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Anna Gunn';
SET @Character = 'Skyler White';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Aaron Paul';
SET @Character = 'Jesse Pinkman';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Betsy Brandt';
SET @Character = 'Marie Schrader';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'RJ Mitte';
SET @Character = 'Walter White, Jr.';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Dean Norris';
SET @Character = 'Hank Schrader';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Bob Odenkirk';
SET @Character = 'Saul Goodman';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Steven Michael Quezada';
SET @Character = 'Steven Gomez / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jonathan Banks';
SET @Character = 'Mike Ehrmantraut';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Giancarlo Esposito';
SET @Character = 'Gus Fring';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: Better Call Saul
DECLARE @MovieTitle VARCHAR(255) = 'Better Call Saul';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Crime', 'Drama');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Vince Gilligan', 'Vince Gilligan', 'Peter Gould');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Bob Odenkirk';
SET @Character = 'Jimmy McGill';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jonathan Banks';
SET @Character = 'Mike Ehrmantraut';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Rhea Seehorn';
SET @Character = 'Kim Wexler';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Patrick Fabian';
SET @Character = 'Howard Hamlin';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Michael Mando';
SET @Character = 'Nacho Varga';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Giancarlo Esposito';
SET @Character = 'Gus Fring';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Michael McKean';
SET @Character = 'Chuck McGill';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tony Dalton';
SET @Character = 'Lalo Salamanca';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Mark Margolis';
SET @Character = 'Hector Salamanca';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kerry Condon';
SET @Character = 'Stacey Ehrmantraut';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: After Life
DECLARE @MovieTitle VARCHAR(255) = 'After Life';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Drama');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Ricky Gervais', 'Ricky Gervais', 'Ricky Gervais');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Ricky Gervais';
SET @Character = 'Tony';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tom Basden';
SET @Character = 'Matt';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tony Way';
SET @Character = 'Lenny';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Diane Morgan';
SET @Character = 'Kath';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kerry Godliman';
SET @Character = 'Lisa';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ashley Jensen';
SET @Character = 'Nurse / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Anti';
SET @Character = 'Brandy the Dog';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Michelle Greenidge';
SET @Character = 'Valerie';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Joe Wilkinson';
SET @Character = 'Pat';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Penelope Wilton';
SET @Character = 'Anne';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: Ted Lasso
DECLARE @MovieTitle VARCHAR(255) = 'Ted Lasso';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Drama', 'Sport');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Brendan Hunt', 'Brendan Hunt', 'Brendan Hunt');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Jeremy Swift';
SET @Character = 'Leslie Higgins';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jason Sudeikis';
SET @Character = 'Ted Lasso';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Hannah Waddingham';
SET @Character = 'Rebecca Welton';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Brett Goldstein';
SET @Character = 'Roy Kent';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Juno Temple';
SET @Character = 'Keeley Jones';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Phil Dunster';
SET @Character = 'Jamie Tartt';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Brendan Hunt';
SET @Character = 'Coach Beard';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Nick Mohammed';
SET @Character = 'Nathan Shelley';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Toheeb Jimoh';
SET @Character = 'Sam Obisanya';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kola Bokinni';
SET @Character = 'Isaac McAdoo';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: Money Heist
DECLARE @MovieTitle VARCHAR(255) = 'Money Heist';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Crime', 'Drama', 'Mystery', 'Thriller');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Álex Pina', 'Álex Pina', 'Álex Pina');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Úrsula Corberó';
SET @Character = 'Tokio';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Álvaro Morte';
SET @Character = 'El Profesor';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Itziar Ituño';
SET @Character = 'Raquel Murillo';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Pedro Alonso';
SET @Character = 'Berlín';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Miguel Herrán';
SET @Character = 'Río';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jaime Lorente';
SET @Character = 'Denver';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Esther Acebo';
SET @Character = 'Mónica Gaztambide';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Darko Peric';
SET @Character = 'Helsinki';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Mike Manning';
SET @Character = 'Denver';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Enrique Arce';
SET @Character = 'Arturo Román';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: Squid Game
DECLARE @MovieTitle VARCHAR(255) = 'Squid Game';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Drama', 'Mystery', 'Thriller');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Hwang Dong-hyuk');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Lee Jung-jae';
SET @Character = 'Seong Gi-hun';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tom Choi';
SET @Character = 'Front Man / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Greg Chun';
SET @Character = 'Choi Seung-hyun / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Wi Ha-joon';
SET @Character = 'Hwang Jun-ho';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Lee Byung-hun';
SET @Character = 'Front Man / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jeon Young-soo';
SET @Character = 'Game Guide / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Park Hae-soo';
SET @Character = 'Cho Sang-woo';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Hoyeon';
SET @Character = 'Kang Sae-byeok / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kim Byung-cheol';
SET @Character = 'Instructions Guard';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Yasushi Iwaki';
SET @Character = 'Others';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: The Office
DECLARE @MovieTitle VARCHAR(255) = 'The Office';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Greg Daniels', 'Greg Daniels', 'Greg Daniels');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Rainn Wilson';
SET @Character = 'Dwight Schrute';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'John Krasinski';
SET @Character = 'Jim Halpert';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jenna Fischer';
SET @Character = 'Pam Beesly';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Leslie David Baker';
SET @Character = 'Stanley Hudson';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Brian Baumgartner';
SET @Character = 'Kevin Malone';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Angela Kinsey';
SET @Character = 'Angela Martin / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kate Flannery';
SET @Character = 'Meredith Palmer';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Phyllis Smith';
SET @Character = 'Phyllis Vance / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Creed Bratton';
SET @Character = 'Creed Bratton';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Oscar Nuñez';
SET @Character = 'Oscar Martinez';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: Friends
DECLARE @MovieTitle VARCHAR(255) = 'Friends';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Romance');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('David Crane', 'David Crane', 'David Crane');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Jennifer Aniston';
SET @Character = 'Rachel Green';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Courteney Cox';
SET @Character = 'Monica Geller / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Lisa Kudrow';
SET @Character = 'Phoebe Buffay / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Matt LeBlanc';
SET @Character = 'Joey Tribbiani';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Matthew Perry';
SET @Character = 'Chandler Bing';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'David Schwimmer';
SET @Character = 'Dr. Ross Geller / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'James Michael Tyler';
SET @Character = 'Gunther';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Elliott Gould';
SET @Character = 'Jack Geller';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Christina Pickles';
SET @Character = 'Judy Geller';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Maggie Wheeler';
SET @Character = 'Janice';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: Stranger Things
DECLARE @MovieTitle VARCHAR(255) = 'Stranger Things';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Drama', 'Fantasy', 'Horror', 'Mystery', 'Sci-Fi', 'Thriller');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Matt Duffer', 'Matt Duffer', 'Matt Duffer');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Winona Ryder';
SET @Character = 'Joyce Byers';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'David Harbour';
SET @Character = 'Jim Hopper';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Finn Wolfhard';
SET @Character = 'Mike Wheeler';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Gaten Matarazzo';
SET @Character = 'Dustin Henderson';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Caleb McLaughlin';
SET @Character = 'Lucas Sinclair';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Natalia Dyer';
SET @Character = 'Nancy Wheeler';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Charlie Heaton';
SET @Character = 'Jonathan Byers';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Joe Keery';
SET @Character = 'Steve Harrington';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Millie Bobby Brown';
SET @Character = 'Eleven / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Noah Schnapp';
SET @Character = 'Will Byers';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: Game of Thrones
DECLARE @MovieTitle VARCHAR(255) = 'Game of Thrones';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Adventure', 'Drama', 'Fantasy');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('David Benioff', 'David Benioff', 'David Benioff');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Peter Dinklage';
SET @Character = 'Tyrion Lannister';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Lena Headey';
SET @Character = 'Cersei Lannister';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kit Harington';
SET @Character = 'Jon Snow';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Emilia Clarke';
SET @Character = 'Daenerys Targaryen';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sophie Turner';
SET @Character = 'Sansa Stark';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Maisie Williams';
SET @Character = 'Arya Stark';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Nikolaj Coster-Waldau';
SET @Character = 'Jaime Lannister';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Iain Glen';
SET @Character = 'Jorah Mormont';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'John Bradley';
SET @Character = 'Samwell Tarly';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Alfie Allen';
SET @Character = 'Theon Greyjoy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: House of the Dragon
DECLARE @MovieTitle VARCHAR(255) = 'House of the Dragon';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Adventure', 'Drama', 'Fantasy', 'Romance');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Ryan J. Condal', 'Ryan J. Condal', 'Ryan J. Condal');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Matt Smith';
SET @Character = 'Prince Daemon Targaryen / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Fabien Frankel';
SET @Character = 'Ser Criston Cole';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Steve Toussaint';
SET @Character = 'Lord Corlys ''The Sea Snake'' Velaryon / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Emma D''Arcy';
SET @Character = 'Queen Rhaenyra Targaryen / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Rhys Ifans';
SET @Character = 'Ser Otto Hightower';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Olivia Cooke';
SET @Character = 'Queen Alicent Hightower';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jefferson Hall';
SET @Character = 'Ser Tyland Lannister / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sonoya Mizuno';
SET @Character = 'Mysaria ''The White Worm''';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kurt Egyiawan';
SET @Character = 'Grand Maester Orwyle / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Matthew Needham';
SET @Character = 'Lord Larys ''The Clubfoot'' Strong / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: Peaky Blinders
DECLARE @MovieTitle VARCHAR(255) = 'Peaky Blinders';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Crime', 'Drama');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Steven Knight', 'Steven Knight', 'Steven Knight');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Cillian Murphy';
SET @Character = 'Thomas Shelby';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Paul Anderson';
SET @Character = 'Arthur Shelby';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sophie Rundle';
SET @Character = 'Ada Shelby / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Helen McCrory';
SET @Character = 'Polly Gray / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ned Dennehy';
SET @Character = 'Charlie Strong';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Finn Cole';
SET @Character = 'Michael Gray';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Natasha O''Keeffe';
SET @Character = 'Lizzie Stark';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ian Peck';
SET @Character = 'Curly';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Harry Kirton';
SET @Character = 'Finn Shelby';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Packy Lee';
SET @Character = 'Johnny Dogs';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: Black Mirror
DECLARE @MovieTitle VARCHAR(255) = 'Black Mirror';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Crime', 'Drama', 'Mystery', 'Sci-Fi', 'Thriller');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Charlie Brooker', 'Charlie Brooker', 'Charlie Brooker');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Cristin Milioti';
SET @Character = 'Nanette Cole';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jimmi Simpson';
SET @Character = 'Walton';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Billy Magnussen';
SET @Character = 'Karl / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Wunmi Mosaku';
SET @Character = 'Katie / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Monica Dolan';
SET @Character = 'CS Linda Grace / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Milanka Brooks';
SET @Character = 'Elena Tulaska';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Osy Ikhile';
SET @Character = 'Nate Packer';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Daniel Lapaine';
SET @Character = 'Dawson / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Hannah John-Kamen';
SET @Character = 'Selma Telse / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Michaela Coel';
SET @Character = 'Airport Stewardess / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: The Crown
DECLARE @MovieTitle VARCHAR(255) = 'The Crown';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Biography', 'Drama', 'History');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Peter Morgan', 'Peter Morgan', 'Peter Morgan');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Claire Foy';
SET @Character = 'Queen Elizabeth II / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Olivia Colman';
SET @Character = 'Queen Elizabeth II';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Imelda Staunton';
SET @Character = 'Queen Elizabeth II';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Matt Smith';
SET @Character = 'Philip, Duke of Edinburgh / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tobias Menzies';
SET @Character = 'Prince Philip, Duke of Edinburgh';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Dominic West';
SET @Character = 'Prince Charles';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Charles Edwards';
SET @Character = 'Martin Charteris';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jonathan Pryce';
SET @Character = 'Prince Philip, Duke of Edinburgh';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Vanessa Kirby';
SET @Character = 'Princess Margaret / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Marion Bailey';
SET @Character = 'Queen Elizabeth the Queen Mother';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: Sherlock
DECLARE @MovieTitle VARCHAR(255) = 'Sherlock';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Crime', 'Drama', 'Mystery', 'Thriller');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Mark Gatiss', 'Mark Gatiss', 'Mark Gatiss');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Benedict Cumberbatch';
SET @Character = 'Sherlock Holmes';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Martin Freeman';
SET @Character = 'Dr. John Watson';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Una Stubbs';
SET @Character = 'Mrs. Hudson';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Rupert Graves';
SET @Character = 'DI Lestrade / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Louise Brealey';
SET @Character = 'Molly Hooper / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Mark Gatiss';
SET @Character = 'Mycroft Holmes';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Andrew Scott';
SET @Character = 'Jim Moriarty / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Amanda Abbington';
SET @Character = 'Mary Morstan / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jonathan Aris';
SET @Character = 'Anderson';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Vinette Robinson';
SET @Character = 'Sgt Sally Donovan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: Westworld
DECLARE @MovieTitle VARCHAR(255) = 'Westworld';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Drama', 'Mystery', 'Sci-Fi');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Michael Crichton', 'Michael Crichton', 'Lisa Joy');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Thandiwe Newton';
SET @Character = 'Maeve Millay';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jeffrey Wright';
SET @Character = 'Bernard Lowe';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ed Harris';
SET @Character = 'Man in Black';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Evan Rachel Wood';
SET @Character = 'Dolores Abernathy / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tessa Thompson';
SET @Character = 'Charlotte Hale';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'James Marsden';
SET @Character = 'Teddy Flood';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Luke Hemsworth';
SET @Character = 'Ashley Stubbs';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Angela Sarafyan';
SET @Character = 'Clementine Pennyfeather';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Anthony Hopkins';
SET @Character = 'Dr. Robert Ford';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Aaron Paul';
SET @Character = 'Caleb Nichols';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: True Detective
DECLARE @MovieTitle VARCHAR(255) = 'True Detective';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Crime', 'Drama', 'Mystery', 'Thriller');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Nic Pizzolatto', 'Nic Pizzolatto', 'Nic Pizzolatto');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Matthew McConaughey';
SET @Character = 'Detective Rust Cohle';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Colin Farrell';
SET @Character = 'Detective Ray Velcoro';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Mahershala Ali';
SET @Character = 'Detective Wayne Hays';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Woody Harrelson';
SET @Character = 'Detective Marty Hart';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Rachel McAdams';
SET @Character = 'Detective Ani Bezzerides';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Carmen Ejogo';
SET @Character = 'Amelia Reardon';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Michelle Monaghan';
SET @Character = 'Maggie Hart';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Taylor Kitsch';
SET @Character = 'Officer Paul Woodrugh';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Stephen Dorff';
SET @Character = 'Detective Roland West';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Michael Potts';
SET @Character = 'Detective Maynard Gilbough';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: The Boys
DECLARE @MovieTitle VARCHAR(255) = 'The Boys';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Comedy', 'Crime', 'Drama', 'Sci-Fi');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Garth Ennis', 'Garth Ennis', 'Garth Ennis');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Karl Urban';
SET @Character = 'Billy Butcher';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jack Quaid';
SET @Character = 'Hughie Campbell';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Antony Starr';
SET @Character = 'Homelander';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Erin Moriarty';
SET @Character = 'Starlight / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jessie T. Usher';
SET @Character = 'A-Train / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Laz Alonso';
SET @Character = 'Mother''s Milk';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Chace Crawford';
SET @Character = 'The Deep / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tomer Capone';
SET @Character = 'Frenchie';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Karen Fukuhara';
SET @Character = 'Kimiko Miyashiro';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Nathan Mitchell';
SET @Character = 'Black Noir / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: Fargo
DECLARE @MovieTitle VARCHAR(255) = 'Fargo';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Crime', 'Drama', 'Thriller');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Noah Hawley', 'Noah Hawley', 'Lee Edward Colston');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Allison Tolman';
SET @Character = 'Molly Solverson';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Billy Bob Thornton';
SET @Character = 'Lorne Malvo / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Colin Hanks';
SET @Character = 'Gus Grimly';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jason Schwartzman';
SET @Character = 'Josto Fadda / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Martin Freeman';
SET @Character = 'Lester Nygaard / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Russell Harvard';
SET @Character = 'Mr. Wrench';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Bokeem Woodbine';
SET @Character = 'Mike Milligan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Brad Mann';
SET @Character = 'Gale Kitchen';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kirsten Dunst';
SET @Character = 'Peggy Blumquist';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ewan McGregor';
SET @Character = 'Emmit Stussy / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: Dark
DECLARE @MovieTitle VARCHAR(255) = 'Dark';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Crime', 'Drama', 'Mystery', 'Sci-Fi', 'Thriller');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Baran bo Odar', 'Jantje Friese', 'Jantje Friese');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Louis Hofmann';
SET @Character = 'Jonas Kahnwald';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Karoline Eichhorn';
SET @Character = 'Charlotte Doppler / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Lisa Vicari';
SET @Character = 'Martha Nielsen';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Maja Schöne';
SET @Character = 'Hannah Kahnwald / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jördis Triebel';
SET @Character = 'Katharina Nielsen / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Andreas Pietschmann';
SET @Character = 'The Stranger / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Stephan Kampwirth';
SET @Character = 'Peter Doppler / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Paul Lux';
SET @Character = 'Bartosz Tiedemann / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Oliver Masucci';
SET @Character = 'Ulrich Nielsen / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Moritz Jahn';
SET @Character = 'Magnus Nielsen / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: Ozark
DECLARE @MovieTitle VARCHAR(255) = 'Ozark';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Crime', 'Drama', 'Thriller');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Bill Dubuque', 'Bill Dubuque', 'Bill Dubuque');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Jason Bateman';
SET @Character = 'Martin ''Marty'' Byrde';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Laura Linney';
SET @Character = 'Wendy Byrde';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sofia Hublitz';
SET @Character = 'Charlotte Byrde';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Skylar Gaertner';
SET @Character = 'Jonah Byrde';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Julia Garner';
SET @Character = 'Ruth Langmore';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Charlie Tahan';
SET @Character = 'Wyatt Langmore / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Lisa Emery';
SET @Character = 'Darlene Snell';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Carson Holmes';
SET @Character = 'Three Langmore / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jordana Spiro';
SET @Character = 'Rachel / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jessica Frances Dukes';
SET @Character = 'Special Agent Maya Miller';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: Succession
DECLARE @MovieTitle VARCHAR(255) = 'Succession';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Drama');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Jesse Armstrong', 'Jesse Armstrong', 'Jamie Carragher');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Nicholas Braun';
SET @Character = 'Greg Hirsch';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Brian Cox';
SET @Character = 'Logan Roy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kieran Culkin';
SET @Character = 'Roman Roy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Peter Friedman';
SET @Character = 'Frank Vernon';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Matthew Macfadyen';
SET @Character = 'Tom Wambsgans';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Alan Ruck';
SET @Character = 'Connor Roy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sarah Snook';
SET @Character = 'Shiv Roy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jeremy Strong';
SET @Character = 'Kendall Roy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'J. Smith-Cameron';
SET @Character = 'Gerri Kellman';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Scott Nicholson';
SET @Character = 'Colin';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: Narcos
DECLARE @MovieTitle VARCHAR(255) = 'Narcos';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Biography', 'Crime', 'Drama', 'Thriller');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Carlo Bernard', 'Carlo Bernard', 'Carlo Bernard');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Pedro Pascal';
SET @Character = 'Javier Peña';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Wagner Moura';
SET @Character = 'Pablo Escobar';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Boyd Holbrook';
SET @Character = 'Steve Murphy';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Alberto Ammann';
SET @Character = 'Pacho Herrera';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Paulina Gaitan';
SET @Character = 'Tata Escobar';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Juan Murcia';
SET @Character = 'Juan Pablo Escobar';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jorge Monterrosa';
SET @Character = 'Trujillo';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Damián Alcázar';
SET @Character = 'Gilberto Rodríguez Orejuela / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Francisco Denis';
SET @Character = 'Miguel Rodríguez Orejuela / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Raúl Méndez';
SET @Character = 'César Gaviria';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: Mindhunter
DECLARE @MovieTitle VARCHAR(255) = 'Mindhunter';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Crime', 'Drama', 'Mystery', 'Thriller');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('John Douglas', 'Mark Olshaker', 'Joe Penhall');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Jonathan Groff';
SET @Character = 'Holden Ford';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Holt McCallany';
SET @Character = 'Bill Tench';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Anna Torv';
SET @Character = 'Dr. Wendy Carr / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sonny Valicenti';
SET @Character = 'ADT Serviceman';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Stacey Roca';
SET @Character = 'Nancy Tench';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Hannah Gross';
SET @Character = 'Debbie Mitford';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Joe Tuttle';
SET @Character = 'Gregg Smith';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Zachary Scott Ross';
SET @Character = 'Brian Tench';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Cotter Smith';
SET @Character = 'Unit Chief Shepard / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Albert Jones';
SET @Character = 'Jim Barney / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: The Witcher
DECLARE @MovieTitle VARCHAR(255) = 'The Witcher';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Adventure', 'Drama', 'Fantasy', 'Mystery');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Lauren Schmidt Hissrich', 'Lauren Schmidt Hissrich', 'Lauren Schmidt Hissrich');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Freya Allan';
SET @Character = 'Ciri';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Henry Cavill';
SET @Character = 'Geralt of Rivia';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Anya Chalotra';
SET @Character = 'Yennefer';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Eamon Farren';
SET @Character = 'Cahir';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Mimî M Khayisa';
SET @Character = 'Fringilla';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'MyAnna Buring';
SET @Character = 'Tissaia';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Joey Batey';
SET @Character = 'Jaskier';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Wilson Mbomio';
SET @Character = 'Dara';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Anna Shaffer';
SET @Character = 'Triss';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Royce Pierreson';
SET @Character = 'Istredd';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: Mad Men
DECLARE @MovieTitle VARCHAR(255) = 'Mad Men';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Drama');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Matthew Weiner', 'Matthew Weiner', 'Jonathan Igla');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Jon Hamm';
SET @Character = 'Don Draper';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Elisabeth Moss';
SET @Character = 'Peggy Olson';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Vincent Kartheiser';
SET @Character = 'Pete Campbell';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'January Jones';
SET @Character = 'Betty Francis / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Christina Hendricks';
SET @Character = 'Joan Harris / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Aaron Staton';
SET @Character = 'Ken Cosgrove';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Rich Sommer';
SET @Character = 'Harry Crane';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'John Slattery';
SET @Character = 'Roger Sterling';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kiernan Shipka';
SET @Character = 'Sally Draper';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Robert Morse';
SET @Character = 'Bertram Cooper';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: Lost
DECLARE @MovieTitle VARCHAR(255) = 'Lost';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Adventure', 'Drama', 'Fantasy', 'Mystery', 'Sci-Fi', 'Thriller');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('J.J. Abrams', 'J.J. Abrams', 'J.J. Abrams');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Jorge Garcia';
SET @Character = 'Hugo ''Hurley'' Reyes';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Josh Holloway';
SET @Character = 'James ''Sawyer'' Ford';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Yunjin Kim';
SET @Character = 'Sun-Hwa Kwon';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Evangeline Lilly';
SET @Character = 'Kate Austen';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Terry O''Quinn';
SET @Character = 'John Locke / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Naveen Andrews';
SET @Character = 'Sayid Jarrah';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Matthew Fox';
SET @Character = 'Dr. Jack Shephard';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Daniel Dae Kim';
SET @Character = 'Jin-Soo Kwon';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Emilie de Ravin';
SET @Character = 'Claire Littleton';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Michael Emerson';
SET @Character = 'Ben Linus / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: Prison Break
DECLARE @MovieTitle VARCHAR(255) = 'Prison Break';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Crime', 'Drama', 'Mystery', 'Thriller');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Paul T. Scheuring', 'Paul T. Scheuring', 'Paul T. Scheuring');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Dominic Purcell';
SET @Character = 'Lincoln ''Linc'' Burrows / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Wentworth Miller';
SET @Character = 'Michael Scofield';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Amaury Nolasco';
SET @Character = 'Fernando Sucre';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Robert Knepper';
SET @Character = 'Theodore ''T-Bag'' Bagwell';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sarah Wayne Callies';
SET @Character = 'Sara Tancredi / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Wade Williams';
SET @Character = 'Brad Bellick';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'William Fichtner';
SET @Character = 'Alexander Mahone / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Paul Adelstein';
SET @Character = 'Paul Kellerman';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Rockmond Dunbar';
SET @Character = 'Benjamin Miles ''C-Note'' Franklin';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jodi Lyn O''Keefe';
SET @Character = 'Gretchen Morgan / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: The Mandalorian
DECLARE @MovieTitle VARCHAR(255) = 'The Mandalorian';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Adventure', 'Fantasy', 'Sci-Fi');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Jon Favreau', 'Jon Favreau', 'George Lucas');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Pedro Pascal';
SET @Character = 'The Mandalorian';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Chris Bartlett';
SET @Character = 'Nevarro Copper Droid / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Katee Sackhoff';
SET @Character = 'Bo-Katan Kryze';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Carl Weathers';
SET @Character = 'Greef Karga';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Giancarlo Esposito';
SET @Character = 'Moff Gideon';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Emily Swallow';
SET @Character = 'The Armorer / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Brendan Wayne';
SET @Character = 'The Mandalorian / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Misty Rosas';
SET @Character = 'Kuiil Performance Artist / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Leilani Shiu';
SET @Character = 'Jawa / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Lateef Crowder';
SET @Character = 'The Mandalorian';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: Dexter
DECLARE @MovieTitle VARCHAR(255) = 'Dexter';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Crime', 'Drama', 'Mystery', 'Thriller');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Jeff Lindsay', 'James Manos Jr.', 'James Manos Jr.');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Michael C. Hall';
SET @Character = 'Dexter Morgan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jennifer Carpenter';
SET @Character = 'Debra Morgan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'David Zayas';
SET @Character = 'Sgt. Angel Batista / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'James Remar';
SET @Character = 'Harry Morgan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'C.S. Lee';
SET @Character = 'Vince Masuka';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Luna Lauren Velez';
SET @Character = 'Lt. Maria LaGuerta / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Desmond Harrington';
SET @Character = 'Det. Joseph ''Joey'' Quinn';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Julie Benz';
SET @Character = 'Rita Bennett / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Christina Robinson';
SET @Character = 'Astor Bennett';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Geoff Pierson';
SET @Character = 'Deputy Chief Tom Matthews / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: How I Met Your Mother
DECLARE @MovieTitle VARCHAR(255) = 'How I Met Your Mother';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Drama', 'Romance');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Carter Bays', 'Carter Bays', 'Craig Thomas');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Josh Radnor';
SET @Character = 'Ted Mosby';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jason Segel';
SET @Character = 'Marshall Eriksen';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Cobie Smulders';
SET @Character = 'Robin Scherbatsky';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Neil Patrick Harris';
SET @Character = 'Barney Stinson';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Alyson Hannigan';
SET @Character = 'Lily Aldrin / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Lyndsy Fonseca';
SET @Character = 'Daughter';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'David Henrie';
SET @Character = 'Son';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Cristin Milioti';
SET @Character = 'Tracy McConnell / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Marshall Manesh';
SET @Character = 'Ranjit';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Joe Nieves';
SET @Character = 'Carl';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: Brooklyn Nine-Nine
DECLARE @MovieTitle VARCHAR(255) = 'Brooklyn Nine-Nine';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Crime');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Dan Goor', 'Dan Goor', 'Michael Schur');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Andy Samberg';
SET @Character = 'Jake Peralta';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Stephanie Beatriz';
SET @Character = 'Rosa Diaz';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Terry Crews';
SET @Character = 'Terry Jeffords';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Melissa Fumero';
SET @Character = 'Amy Santiago';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Joe Lo Truglio';
SET @Character = 'Charles Boyle';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Andre Braugher';
SET @Character = 'Raymond Holt';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Dirk Blocker';
SET @Character = 'Hitchcock';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Joel McKinnon Miller';
SET @Character = 'Scully';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Chelsea Peretti';
SET @Character = 'Gina Linetti';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Marc Evan Jackson';
SET @Character = 'Kevin Cozner';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: The Big Bang Theory
DECLARE @MovieTitle VARCHAR(255) = 'The Big Bang Theory';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy', 'Romance');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Chuck Lorre', 'Chuck Lorre', 'Chuck Lorre');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Johnny Galecki';
SET @Character = 'Leonard Hofstadter';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jim Parsons';
SET @Character = 'Sheldon Cooper';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kaley Cuoco';
SET @Character = 'Penny / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Simon Helberg';
SET @Character = 'Howard Wolowitz';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kunal Nayyar';
SET @Character = 'Raj Koothrappali';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Melissa Rauch';
SET @Character = 'Bernadette Rostenkowski';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Mayim Bialik';
SET @Character = 'Amy Farrah Fowler';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kevin Sussman';
SET @Character = 'Stuart Bloom';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Carol Ann Susi';
SET @Character = 'Debbie Wolowitz';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'John Ross Bowie';
SET @Character = 'Barry Kripke';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: Parks and Recreation
DECLARE @MovieTitle VARCHAR(255) = 'Parks and Recreation';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Greg Daniels', 'Greg Daniels', 'Michael Schur');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Amy Poehler';
SET @Character = 'Leslie Knope';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Aubrey Plaza';
SET @Character = 'April Ludgate';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Nick Offerman';
SET @Character = 'Ron Swanson';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jim O''Heir';
SET @Character = 'Jerry Gergich';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Aziz Ansari';
SET @Character = 'Tom Haverford';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Retta';
SET @Character = 'Donna Meagle';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Chris Pratt';
SET @Character = 'Andy Dwyer';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Rashida Jones';
SET @Character = 'Ann Perkins';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Adam Scott';
SET @Character = 'Ben Wyatt';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Rob Lowe';
SET @Character = 'Chris Traeger';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: Community
DECLARE @MovieTitle VARCHAR(255) = 'Community';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Comedy');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Dan Harmon', 'Dan Harmon', 'Tim Saccardo');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Joel McHale';
SET @Character = 'Jeff Winger / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Gillian Jacobs';
SET @Character = 'Britta Perry / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Danny Pudi';
SET @Character = 'Abed Nadir / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Alison Brie';
SET @Character = 'Annie Edison / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ken Jeong';
SET @Character = 'Ben Chang / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Yvette Nicole Brown';
SET @Character = 'Shirley Bennett / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jim Rash';
SET @Character = 'Dean Pelton / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Donald Glover';
SET @Character = 'Troy Barnes';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Chevy Chase';
SET @Character = 'Pierce Hawthorne';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Richard Erdman';
SET @Character = 'Leonard';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: Mr. Robot
DECLARE @MovieTitle VARCHAR(255) = 'Mr. Robot';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Crime', 'Drama', 'Thriller');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Sam Esmail', 'Sam Esmail', 'Randolph Leon');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Rami Malek';
SET @Character = 'Elliot Alderson';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Christian Slater';
SET @Character = 'Mr. Robot';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Carly Chaikin';
SET @Character = 'Darlene';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Martin Wallström';
SET @Character = 'Tyrell Wellick';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Portia Doubleday';
SET @Character = 'Angela Moss';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Michael Cristofer';
SET @Character = 'Phillip Price';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Grace Gummer';
SET @Character = 'Dominique DiPierro';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'BD Wong';
SET @Character = 'Whiterose';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Stephanie Corneliussen';
SET @Character = 'Joanna Wellick';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Vaishnavi Sharma';
SET @Character = 'Elliot''s Mother';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: Hannibal
DECLARE @MovieTitle VARCHAR(255) = 'Hannibal';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Crime', 'Drama', 'Horror', 'Mystery', 'Thriller');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Bryan Fuller', 'Bryan Fuller', 'Bryan Fuller');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Hugh Dancy';
SET @Character = 'Will Graham';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Mads Mikkelsen';
SET @Character = 'Dr. Hannibal Lecter';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Caroline Dhavernas';
SET @Character = 'Dr. Alana Bloom';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Laurence Fishburne';
SET @Character = 'Jack Crawford';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Scott Thompson';
SET @Character = 'Jimmy Price';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Aaron Abrams';
SET @Character = 'Brian Zeller';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Gillian Anderson';
SET @Character = 'Dr. Bedelia Du Maurier';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Hettienne Park';
SET @Character = 'Beverly Katz';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kacey Rohl';
SET @Character = 'Abigail Hobbs';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Lara Jean Chorostecki';
SET @Character = 'Freddie Lounds';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: The Umbrella Academy
DECLARE @MovieTitle VARCHAR(255) = 'The Umbrella Academy';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Adventure', 'Comedy', 'Drama', 'Fantasy', 'Sci-Fi');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Steve Blackman', 'Steve Blackman', 'Steve Blackman');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Elliot Page';
SET @Character = 'Vanya Hargreeves / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tom Hopper';
SET @Character = 'Luther Hargreeves';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'David Castañeda';
SET @Character = 'Diego Hargreeves';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Emmy Raver-Lampman';
SET @Character = 'Allison Hargreeves';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Robert Sheehan';
SET @Character = 'Klaus Hargreeves';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Aidan Gallagher';
SET @Character = 'Number Five';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Justin H. Min';
SET @Character = 'Ben Hargreeves';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Colm Feore';
SET @Character = 'Reginald Hargreeves';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ritu Arya';
SET @Character = 'Lila Pitts';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jordan Claire Robbins';
SET @Character = 'Grace';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: The Last of Us
DECLARE @MovieTitle VARCHAR(255) = 'The Last of Us';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Adventure', 'Drama', 'Horror', 'Sci-Fi', 'Thriller');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Craig Mazin', 'Craig Mazin', 'Neil Druckmann');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Pedro Pascal';
SET @Character = 'Joel Miller';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Bella Ramsey';
SET @Character = 'Ellie Williams';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kaitlyn Dever';
SET @Character = 'Abby Anderson';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Brendan Rozario';
SET @Character = 'Guard / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Anna Torv';
SET @Character = 'Theresa ''Tess'' Servopoulos';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Gabriel Luna';
SET @Character = 'Tommy Miller';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Catherine O''Hara';
SET @Character = 'Gail';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Lamar Johnson';
SET @Character = 'Henry Burrell';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Melanie Lynskey';
SET @Character = 'Kathleen Coghlan';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Nico Parker';
SET @Character = 'Sarah Miller';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: Arrow
DECLARE @MovieTitle VARCHAR(255) = 'Arrow';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Adventure', 'Crime', 'Drama', 'Mystery', 'Sci-Fi');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Greg Berlanti', 'Greg Berlanti', 'Marc Guggenheim');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'David Ramsey';
SET @Character = 'John Diggle / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Stephen Amell';
SET @Character = 'Oliver Queen / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Emily Bett Rickards';
SET @Character = 'Felicity Smoak / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Katie Cassidy';
SET @Character = 'Laurel Lance / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Paul Blackthorne';
SET @Character = 'Quentin Lance';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Willa Holland';
SET @Character = 'Thea Queen / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Colton Haynes';
SET @Character = 'Roy Harper / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Rick Gonzalez';
SET @Character = 'Rene Ramirez / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Echo Kellum';
SET @Character = 'Curtis Holt / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'John Barrowman';
SET @Character = 'Malcolm Merlyn / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: The Flash
DECLARE @MovieTitle VARCHAR(255) = 'The Flash';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Adventure', 'Drama', 'Sci-Fi');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Greg Berlanti', 'Greg Berlanti', 'Geoff Johns');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Grant Gustin';
SET @Character = 'Barry Allen / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Candice Patton';
SET @Character = 'Iris West-Allen / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Danielle Panabaker';
SET @Character = 'Caitlin Snow / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jesse L. Martin';
SET @Character = 'Joe West / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Carlos Valdes';
SET @Character = 'Cisco Ramon / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tom Cavanagh';
SET @Character = 'Dr. Harry Wells / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Danielle Nicolet';
SET @Character = 'Cecile Horton / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kayla Compton';
SET @Character = 'Allegra Garcia / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Brandon McKnight';
SET @Character = 'Chester P. Runk';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Hartley Sawyer';
SET @Character = 'Ralph Dibny / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: Smallville
DECLARE @MovieTitle VARCHAR(255) = 'Smallville';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Adventure', 'Drama', 'Sci-Fi');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Alfred Gough', 'Alfred Gough', 'Alfred Gough');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Tom Welling';
SET @Character = 'Clark Kent / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Allison Mack';
SET @Character = 'Chloe Sullivan / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kristin Kreuk';
SET @Character = 'Lana Lang / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Michael Rosenbaum';
SET @Character = 'Lex Luthor / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'John Glover';
SET @Character = 'Lionel Luthor / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Erica Durance';
SET @Character = 'Lois Lane / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Annette O''Toole';
SET @Character = 'Martha Kent / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'John Schneider';
SET @Character = 'Jonathan Kent / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Justin Hartley';
SET @Character = 'Oliver Queen / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sam Jones III';
SET @Character = 'Pete Ross';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: Heroes
DECLARE @MovieTitle VARCHAR(255) = 'Heroes';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Crime', 'Drama', 'Fantasy', 'Mystery', 'Sci-Fi', 'Thriller');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Tim Kring', 'Tim Kring', 'Yule Caise');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Jack Coleman';
SET @Character = 'Noah Bennet';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Hayden Panettiere';
SET @Character = 'Claire Bennet';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Milo Ventimiglia';
SET @Character = 'Peter Petrelli';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Masi Oka';
SET @Character = 'Hiro Nakamura';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sendhil Ramamurthy';
SET @Character = 'Mohinder Suresh';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Greg Grunberg';
SET @Character = 'Matt Parkman';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'James Kyson';
SET @Character = 'Ando Masahashi';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Adrian Pasdar';
SET @Character = 'Nathan Petrelli';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Zachary Quinto';
SET @Character = 'Sylar';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ali Larter';
SET @Character = 'Niki Sanders / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: Daredevil: Born Again
DECLARE @MovieTitle VARCHAR(255) = 'Daredevil: Born Again';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Crime', 'Drama', 'Fantasy', 'Sci-Fi', 'Thriller');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Matt Corman', 'Matt Corman', 'Chris Ord');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Charlie Cox';
SET @Character = 'Daredevil / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Margarita Levieva';
SET @Character = 'Heather Glenn';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Vincent D''Onofrio';
SET @Character = 'Wilson Fisk';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Genneya Walton';
SET @Character = 'BB Urich';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Wilson Bethel';
SET @Character = 'Benjamin ''Dex'' Poindexter / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jon Bernthal';
SET @Character = 'Frank Castle / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Deborah Ann Woll';
SET @Character = 'Karen Page';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Arty Froushan';
SET @Character = 'Buck Cashman';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Nikki M. James';
SET @Character = 'Kirsten Mcduffie';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ayelet Zurer';
SET @Character = 'Vanessa Fisk';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: Jessica Jones
DECLARE @MovieTitle VARCHAR(255) = 'Jessica Jones';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Crime', 'Drama', 'Sci-Fi', 'Thriller');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Brian Michael Bendis', 'Michael Gaydos', 'Melissa Rosenberg');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Krysten Ritter';
SET @Character = 'Jessica Jones';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Rachael Taylor';
SET @Character = 'Trish Walker';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Eka Darville';
SET @Character = 'Malcolm Ducasse';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Carrie-Anne Moss';
SET @Character = 'Jeri Hogarth';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'John Ventimiglia';
SET @Character = 'Detective Costa / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'David Tennant';
SET @Character = 'Kilgrave';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Rebecca De Mornay';
SET @Character = 'Dorothy / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'J.R. Ramirez';
SET @Character = 'Oscar Arocho';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Janet McTeer';
SET @Character = 'Alisa Jones';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Benjamin Walker';
SET @Character = 'Erik Gelden';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: Luke Cage
DECLARE @MovieTitle VARCHAR(255) = 'Luke Cage';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Crime', 'Drama', 'Sci-Fi', 'Thriller');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Cheo Hodari Coker', 'Cheo Hodari Coker', 'Archie Goodwin');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Mike Colter';
SET @Character = 'Luke Cage';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Simone Missick';
SET @Character = 'Misty Knight';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Theo Rossi';
SET @Character = 'Hernan ''Shades'' Alvarez';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Alfre Woodard';
SET @Character = 'Mariah Dillard';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Justin Swain';
SET @Character = 'Detective Mark Bailey / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sean Ringgold';
SET @Character = 'Sugar';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'John Clarence Stewart';
SET @Character = 'Alex / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Karen Pittman';
SET @Character = 'Inspector Priscilla Ridley / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ron Cephas Jones';
SET @Character = 'Bobby Fish';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jeremiah Craft';
SET @Character = 'D.W. Griffith / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: Iron Fist
DECLARE @MovieTitle VARCHAR(255) = 'Iron Fist';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Adventure', 'Crime', 'Fantasy', 'Sci-Fi');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Scott Buck', 'Scott Buck', 'Gil Kane');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Finn Jones';
SET @Character = 'Danny Rand';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jessica Henwick';
SET @Character = 'Colleen Wing';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jessica Stroup';
SET @Character = 'Joy Meachum';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tom Pelphrey';
SET @Character = 'Ward Meachum';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sacha Dhawan';
SET @Character = 'Davos';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'David Wenham';
SET @Character = 'Harold Meachum';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Alice Eve';
SET @Character = 'Mary Walker';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Wai Ching Ho';
SET @Character = 'Madame Gao';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Giullian Yao Gioiello';
SET @Character = 'BB';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Christine Toy Johnson';
SET @Character = 'Mrs. Yang';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: The Defenders
DECLARE @MovieTitle VARCHAR(255) = 'The Defenders';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Adventure', 'Crime', 'Fantasy', 'Sci-Fi');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Brian Michael Bendis', 'Bill Everett', 'Michael Gaydos');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Charlie Cox';
SET @Character = 'Matt Murdock / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Krysten Ritter';
SET @Character = 'Jessica Jones';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Mike Colter';
SET @Character = 'Luke Cage';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Finn Jones';
SET @Character = 'Danny Rand';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Elodie Yung';
SET @Character = 'Elektra Natchios';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jessica Henwick';
SET @Character = 'Colleen Wing';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Scott Glenn';
SET @Character = 'Stick';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sigourney Weaver';
SET @Character = 'Alexandra Reid';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Rosario Dawson';
SET @Character = 'Claire Temple';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Wai Ching Ho';
SET @Character = 'Madame Gao / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: Titans
DECLARE @MovieTitle VARCHAR(255) = 'Titans';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Adventure', 'Crime', 'Drama', 'Fantasy', 'Sci-Fi');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Greg Berlanti', 'Greg Berlanti', 'Akiva Goldsman');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Brenton Thwaites';
SET @Character = 'Dick Grayson / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Anna Diop';
SET @Character = 'Kory Anders / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ryan Potter';
SET @Character = 'Gar Logan / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Teagan Croft';
SET @Character = 'Rachel Roth / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Joshua Orpin';
SET @Character = 'Conner Kent / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Curran Walters';
SET @Character = 'Jason Todd / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Conor Leslie';
SET @Character = 'Donna Troy / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Minka Kelly';
SET @Character = 'Dawn Granger / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jay Lycurgo';
SET @Character = 'Tim Drake / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Alan Ritchson';
SET @Character = 'Hank Hall / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: Gotham
DECLARE @MovieTitle VARCHAR(255) = 'Gotham';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Action', 'Crime', 'Drama', 'Mystery', 'Sci-Fi', 'Thriller');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Bruno Heller', 'Bruno Heller', 'Bill Finger');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Ben McKenzie';
SET @Character = 'James Gordon';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Donal Logue';
SET @Character = 'Harvey Bullock';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'David Mazouz';
SET @Character = 'Bruce Wayne / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Robin Lord Taylor';
SET @Character = 'Oswald Cobblepot / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Camren Bicondova';
SET @Character = 'Selina Kyle';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Cory Michael Smith';
SET @Character = 'Edward Nygma / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sean Pertwee';
SET @Character = 'Alfred Pennyworth';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Erin Richards';
SET @Character = 'Barbara Kean';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Morena Baccarin';
SET @Character = 'Leslie Thompkins';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Chris Chalk';
SET @Character = 'Lucius Fox';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: Supernatural
DECLARE @MovieTitle VARCHAR(255) = 'Supernatural';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Drama', 'Fantasy', 'Horror', 'Mystery', 'Thriller');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Eric Kripke', 'Eric Kripke', 'Eric Kripke');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Jared Padalecki';
SET @Character = 'Sam Winchester / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jensen Ackles';
SET @Character = 'Dean Winchester / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Misha Collins';
SET @Character = 'Castiel / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Mark Sheppard';
SET @Character = 'Crowley / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jim Beaver';
SET @Character = 'Bobby Singer / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Alexander Calvert';
SET @Character = 'Jack / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Mark Pellegrino';
SET @Character = 'Lucifer / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Samantha Smith';
SET @Character = 'Mary Winchester / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Ruth Connell';
SET @Character = 'Rowena MacLeod / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Rob Benedict';
SET @Character = 'Chuck Shurley / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: Lucifer
DECLARE @MovieTitle VARCHAR(255) = 'Lucifer';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Crime', 'Drama', 'Fantasy');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Mike Dringenberg', 'Mike Dringenberg', 'Mike Dringenberg');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Tom Ellis';
SET @Character = 'Lucifer Morningstar / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Lauren German';
SET @Character = 'Chloe Decker / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kevin Alejandro';
SET @Character = 'Dan Espinoza / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'D.B. Woodside';
SET @Character = 'Amenadiel / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Lesley-Ann Brandt';
SET @Character = 'Mazikeen / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Rachael Harris';
SET @Character = 'Linda Martin / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Aimee Garcia';
SET @Character = 'Ella Lopez / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Scarlett Estevez';
SET @Character = 'Trixie Espinoza';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tricia Helfer';
SET @Character = 'Charlotte / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tom Welling';
SET @Character = 'Marcus Pierce';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: American Horror Story
DECLARE @MovieTitle VARCHAR(255) = 'American Horror Story';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Drama', 'Horror', 'Sci-Fi', 'Thriller');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Brad Falchuk', 'Brad Falchuk', 'Ryan Murphy');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Evan Peters';
SET @Character = 'James March / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Sarah Paulson';
SET @Character = 'Lana Winters / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Denis O''Hare';
SET @Character = 'Spalding / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Lily Rabe';
SET @Character = 'Misty Day / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Kathy Bates';
SET @Character = 'Madame Delphine LaLaurie / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Frances Conroy';
SET @Character = 'Myrtle Snow / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Emma Roberts';
SET @Character = 'Madison Montgomery / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jessica Lange';
SET @Character = 'Constance Langdon / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Billie Lourd';
SET @Character = 'Winter Anderson / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Leslie Grossman';
SET @Character = 'Barbara Read / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: The Penguin
DECLARE @MovieTitle VARCHAR(255) = 'The Penguin';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Crime', 'Drama');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('Bill Finger', 'Bob Kane', 'Lauren LeFranc');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'Colin Farrell';
SET @Character = 'Oswald ''Oz'' Cobb';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Cristin Milioti';
SET @Character = 'Sofia Falcone';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Rhenzy Feliz';
SET @Character = 'Victor Aguilar';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Deirdre O''Connell';
SET @Character = 'Francis Cobb';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Carmen Ejogo';
SET @Character = 'Eve Karlo';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Theo Rossi';
SET @Character = 'Dr. Julian Rush';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Clancy Brown';
SET @Character = 'Salvatore Maroni';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Daniel J. Watts';
SET @Character = 'Bruno Tess';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'David H. Holmes';
SET @Character = 'Nick Fuchs';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Michael Kelly';
SET @Character = 'Johnny Vitti / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

-- ========== Keywords ==========
-- No Data Available 

GO
-- ============================================

-- Movie: The Sopranos
DECLARE @MovieTitle VARCHAR(255) = 'The Sopranos';
DECLARE @MovieID INT;
SELECT @MovieID = MovieID FROM Movies WHERE Title = @MovieTitle;

-- ========== Genres ==========
INSERT INTO MovieGenres (MovieID, GenreID)
SELECT @MovieID, GenreID FROM Genres
WHERE GenreName IN ('Crime', 'Drama');

-- ========== Writers ==========
INSERT INTO MovieWriters (MovieID, WriterID)
SELECT @MovieID, WriterID FROM Writers
WHERE WriterName IN ('David Chase', 'David Chase', 'David Chase');

-- ========== Actors ==========
DECLARE @ActorName VARCHAR(100), @Character VARCHAR(100), @ActorID INT;

SET @ActorName = 'James Gandolfini';
SET @Character = 'Tony Soprano';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Edie Falco';
SET @Character = 'Carmela Soprano';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Michael Imperioli';
SET @Character = 'Christopher Moltisanti';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Steven Van Zandt';
SET @Character = 'Silvio Dante';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Robert Iler';
SET @Character = 'A.J. Soprano';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Tony Sirico';
SET @Character = 'Paulie ''Walnuts'' Gualtieri';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Jamie-Lynn Sigler';
SET @Character = 'Meadow Soprano';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Lorraine Bracco';
SET @Character = 'Dr. Jennifer Melfi';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Dominic Chianese';
SET @Character = 'Junior Soprano';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

SET @ActorName = 'Aida Turturro';
SET @Character = 'Janice Soprano / ...';
SELECT @ActorID = ActorID FROM Actors WHERE ActorName = @ActorName;
INSERT INTO MovieActors (MovieID, ActorID, CharacterName) VALUES (@MovieID, @ActorID, @Character);

print('All Initial Data Loaded into database :)');
