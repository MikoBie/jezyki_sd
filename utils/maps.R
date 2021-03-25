QUESTION_MAP <- list(
  'year' = list(
    c('Which.year.of.the.doctoral.school.are.you.in.',
      'Który.rok.kształcenia.odbywasz.w.szkole.doktorskiej.',
      'Which.year.of.the.doctoral.studies.are.you.in.',
      'Na.którym.roku.studiów.doktoranckich.jesteś.')
  ),
  'position' = list(
    c('Position.',
      'Jestem.doktorantem...doktorantką')
  ),
  'length_of_learning' = list(
    c('How.long.would.you.like.to.study.a.foreign.language.at.UW.for.free.',
      'Jak.długo.chciałabyś...chciałbyś.się.bezpłatnie.uczyć.języka.obcego.na.UW.')
  ),
  'means_of_learning' = list(
    c('How.would.you.like.to.learn.a.foreign.language.',
      'W.jaki.sposób.chciałabyś...chciałbyś.się.uczyć.języka.obcego.')
  ),
  'type_of_course' = list(
    c('Jakim.rodzajem.kursu.jesteś.najbardziej.zainteresowana.y.',
      'What.kind.of.course.are.you.most.interested.in.')
  ),
  'form_of_learning' = list(
    c('What.form.of.free.language.courses.are.you.most.interested.in.',
      "Jaka.forma.bezpłatnych.kursów.językowych.interesuje.Cię.najbardziej.")
  ),
  'first_language' = list(
    c('Jakiego.języka.chciałabyś...chciałbyś.się.uczyć.',
      'What.language.would.you.like.to.learn...Polish.language.is.a.different.course.and.PhD.students.foreigners.can.attend.Polish.language.classes.for.240.tokens.')
  ),
  'level_first_language' = list(
    c('At.what.level.would.you.like.to.learn.the.language.from.the.previous.question.',
      'Na.jakim.poziomie.chciałabyś...chciałbyś.się.uczyć.języka.z.poprzedniego.pytania.')
  ),
  'second_language' = list(
    c('If.you.could.take.a.second.language..then.which.one.',
      'Jakiego.drugiego.języka.chciałabyś...chciałbyś.się.uczyć.')
  ),
  'level_second_language' = list(
    c('Na.jakim.poziomie.chciałabyś...chciałbyś.się.uczyć.drugiego.języka.',
      'At.what.level.would.you.like.to.learn.a.second.language.')
  )
)
      
question_map <- tibble(question = map(QUESTION_MAP,1),
                       variables_names = names(QUESTION_MAP)) %>%
  unnest(question)

LANGUAGE_MAP <- list(
  'English' = list(
    c('angielski', 'angielski (konwersacje na różne tematy w celu nauki swobodnego i poprawnego mówienia; bez przygotowywania wystąpień na konkretny temat)')
  ),
  'Arabic' = list(
    c('arabski')
  ),
  'Chinese' = list(
    c('Chinese', 'chiński')
  ),
  'Croatian' = list(
    c('chorwacki', 'inne języki słowiańskie (np. czeski, chorwacki)')
  ),
  'Czech' = list(
    c('czeski', 'wielu (hiszpański, francuski, czeski)')
  ),
  'Farsi' = list(
    c('Farsi')
  ),
  'Finish' = list(
    c('Fiński')
  ),
  'French' = list(
    c('francuski', 'francuski (kurs ogólny, od podstaw)', 'French', 'oprócz angielskiego (C1) i francuskiego (B2) interesuje w ofercie powinien znaleźć się także włoski (B2)')
  ),
  'German' = list(
    c('German', 'niemiecki', 'jak wyżej, ew. także niemiecki (b2)')
  ),
  'Greek' = list(
    c('Grecki', 'Grecki nowożytny')
  ),
  'Hebrew' = list(
    c('hebrajski', 'Hebrajski')
  ),
  'Hindu' = list(
    c('hindi')
  ),
  'Spanish' = list(
    c('hiszpański', 'Spanish')
  ),
  'Italian' = list(
    c('ITALIAN', 'Italian', 'włoski', 'Wloski', 'Włoski', 'włoski ')
  ),
  'Japanese' = list(
    c('japoński', 'Japoński', 'Japoński ')
  ),
  'Korean' = list(
    c('koreański', 'Koreański', 'Koreański ', 'koreański ')
  ),
  'Dutch' = list(
    c('niderlandzki', 'Niderlandzki')
  ),
  'Persian' = list(
    c('perski', 'Perskiego')
  ),
  'Portugese' = list(
    c('portugalskiego','portugalski', 'portugalski ')
  ),
  'Russian' = list(
    c('rosyjski', 'Russian')
  ),
  'Romanian' = list(
    c('Rumuński')
  ),
  'Swedish' = list(
    c('szwedzki')
  ),
  'Tagolag' = list(
    c('tagalog')
  ),
  'Turkish' = list(
    c('Turecki', 'turecki', 'Turecki, perski')
  ),
  'Chechen' = list(
    c('czeczeński')
  ),
  'Yiddish' = list(
    c('jidysz', 'Yiddish')
  ),
  'Latin' = list(
    c('łaciński', 'Łacina')
  ),
  'Norwegian' = list(
    c('Norweski')
  ),
  'Sign Language' = list(
    c('PJM (polski język migowy)', 'polski język migowy')
  ),
  'Hungarian' = list(
    c('węgierski')
  )
  
)

language_map <- tibble(response = map(LANGUAGE_MAP,1),
                       response_map = names(LANGUAGE_MAP)) %>%
  unnest(response)  
  
LEVEL_MAP = list(
  'A1' = list(
    c('A1 -- beginner',
      'A1 -- początkujący')
  ),
  'A2' = list(
    c('A2 -- elementary',
      'A2 -- podstawowy')
  ),
  'B1' = list(
    c('B1 -- lower intermediate',
      'B1 -- niższy średniozaawansowany')
  ),
  'B2' = list(
    c('B2 -- upper intermediate',
      'B2 -- wyższy średniozaawansowany')
  ),
  'C1' = list(
    c('C1 -- zaawansowany',
      'C1 -- advanced')
  ),
  'C2' = list(
    c('C2 -- biegły',
      'C2 -- proficient')
  )
)
  
      
level_map <- tibble(response = map(LEVEL_MAP,1),
                    response_map = names(LEVEL_MAP)) %>%
  unnest(response)  
      
YEARS_MAP <- list(
  '1st' = list(
    c('1st', 'pierwszym', 'pierwszy')
  ),
  '2nd' = list(
    c('2nd', 'drugi')
  ),
  '3rd' = list(
    c('3rd', 'trzecim')
  ),
  '4th' = list(
    c('4rd', 'czwartym', 'Urlop zdrowotny na 4 roku')
  ),
  'prolongation' = list(
    c('przedłużenie')
  )
)
      
year_map <- tibble(response = map(YEARS_MAP,1),
                   response_map = names(YEARS_MAP)) %>%
  unnest(response)   

LENGTH_MAP <- list(
  '>120 hours' = list(
    c('(dwa semestry i więcej)', '120 academic hours (two semesters)',
      '120 godz. akademickich (przez dwa semestry)', '240', '240 godz. (Przez cztery semestry)',
      '240 godz. akademickich', 'Doskonalenie języków obcych podczas całego okresu kształcenia',
      'Im więcej tym lepiej', 'Im więcej tym lepiej - biegłość językowa jest kluczowa; ciężko przewidywać, w jakim czasie uda się osiągnąć cel',
      'intensywniej: 240 godzin przez dwa semestry', 'Jak najdłużej ', 'Jak najdłużej!:)',
      'Języki obce są bardzo ważne, więc wydaje mi się, iż nauka może być dłuższa (>120h), np. dla osiągnięcia kolejnych poziomów zaawansowania językowego.',
      'lub w wyższym wymiarze godzin (180)', 'Możliwie najwiecej', 'Najdłużej jak się da',
      'Nawet dłużej niż 120 godzin.', 'Przez cały okres studiów doktoranckich - jako opcja dla chętnych/potrzebujących tej formy.',
      'tak długo jak to by było możliwe', 'W każdym semestrze kształcenia')
  ),
  '60 hours' = list(
    c('60 academic hours (one semester)', '60 godz. akademickich (przez jeden semestr)')
  ))
      
      
length_map <- tibble(response = map(LENGTH_MAP,1),
                   response_map = names(LENGTH_MAP)) %>%
  unnest(response)   

POSITION_MAP <- list(
  'Doctoral School' = list(
    c('PhD student in doctoral school',
      'w szkole doktorskiej')
  ),
  'Doctoral Studies' = list(
    c('PhD student in doctoral studies',
      'na studiach doktoranckich')
  )
)
      
position_map <- tibble(response = map(POSITION_MAP,1),
                   response_map = names(POSITION_MAP)) %>%
  unnest(response)   
      
TYPE_MAP <- list(
  'general course (any language)' = list(
    c('kurs ogólny (dowolny język)', 'język hiszpański', 'Kurs przygotowujący przed zrobieniem certyfikatu C1.',
      'oprócz możliwości nauki dowolnego języka, pomocna  byłoby również możliwość wzięcia udziału w kursach z pkt. 2-4',
      'Francuski prawniczy', 'Lub kurs ogólny innego języka ')
  ),
  'academic writing in English' = list(
    c('Academic writing albo dowolny kurs ogolny z innego jezyka', 'kurs ogólny (dowolny język) oraz academic writing and speaking in English'
      )
  ),
  'academic speaking (presenting & debating)' = list(
    c('academic speaking and general speaking', 'włoski akademicki', 'kurs ogólny i academic speaking'
      )
  ),
  'English for research publications' = list(
    c('Wszystkie powyższe opcje mnie interesują.')
  )
)
      
  
type_map <- tibble(response = map(TYPE_MAP,1),
                   response_map = names(TYPE_MAP)) %>%
  unnest(response)   