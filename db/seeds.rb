pathologies = [

  # ─── DOULEURS CHRONIQUES ────────────────────────────────────────────────────

  {
    name: "Endométriose",
    slug: "endometriose",
    category: "douleur_chronique",
    avg_diagnosis_delay: 84,
    description: "Maladie gynécologique chronique où du tissu semblable à la muqueuse utérine se développe en dehors de l'utérus. Touche environ 2,5 millions de femmes en France.",
    key_symptoms: ["douleurs pelviennes", "règles douloureuses", "douleurs pendant les rapports", "fatigue chronique", "douleurs digestives pendant les règles", "infertilité"],
    key_exams: "Échographie pelvienne, IRM pelvienne, cœlioscopie (seul examen de certitude)",
    bias_notes: "Les douleurs menstruelles sont souvent banalisées par les soignants et l'entourage.",
    what_to_ask: "Avez-vous exploré une endométriose ? Pouvez-vous me prescrire une IRM pelvienne ?",
    dismissive_phrases: [
      "C'est normal d'avoir mal pendant ses règles.",
      "Toutes les femmes souffrent, vous êtes juste sensible.",
      "Ça va passer avec la grossesse.",
      "Vos examens sont normaux, c'est peut-être psychologique.",
      "C'est de famille, votre mère avait la même chose."
    ],
    association_name: "EndoFrance",
    association_url: "https://www.endofrance.org",
    image_url: "https://images.unsplash.com/photo-1584820927498-cfe5211fd8bf?w=600",
    testimonials: [
      { initials: "M., 34 ans", quote: "J'ai eu mes premières douleurs à 16 ans. On m'a dit que c'était normal d'avoir mal. Il m'a fallu 11 ans et 6 médecins pour qu'on prononce enfin le mot endométriose." },
      { initials: "S., 29 ans", quote: "Je pensais que tout le monde souffrait autant pendant ses règles. Ce n'est qu'après une cœlioscopie à 27 ans que j'ai compris que ce n'était pas normal." }
    ]
  },
  {
    name: "Fibromyalgie",
    slug: "fibromyalgie",
    category: "douleur_chronique",
    avg_diagnosis_delay: 72,
    description: "Syndrome caractérisé par des douleurs musculo-squelettiques diffuses, une fatigue chronique et des troubles du sommeil. Touche 1,5 à 2 millions de personnes en France.",
    key_symptoms: ["douleurs diffuses dans tout le corps", "fatigue intense", "troubles du sommeil", "douleurs au toucher", "brouillard mental", "maux de tête"],
    key_exams: "Diagnostic clinique — pas de marqueur biologique. Évaluation par rhumatologue.",
    bias_notes: "Longtemps considérée comme psychosomatique. Majorité de femmes diagnostiquées.",
    what_to_ask: "Pourrait-il s'agir d'une fibromyalgie ? Pouvez-vous m'adresser à un rhumatologue ?",
    dismissive_phrases: [
      "Tout le monde est fatigué, c'est la vie moderne.",
      "Vos analyses sont parfaites, vous êtes en bonne santé.",
      "C'est certainement du stress ou de l'anxiété.",
      "Vous devriez faire plus de sport, ça ira mieux.",
      "À votre âge c'est normal d'avoir quelques douleurs."
    ],
    association_name: "AFPric",
    association_url: "https://www.afpric.fr",
    image_url: "https://images.unsplash.com/photo-1544367567-0f2fcb009e0b?w=600",
    testimonials: [
      { initials: "C., 41 ans", quote: "Pendant 6 ans on m'a dit que j'étais dépressive, que je cherchais l'attention. Les douleurs étaient réelles. Le diagnostic de fibromyalgie a tout changé." },
      { initials: "L., 38 ans", quote: "Mon médecin m'a dit que c'était dans ma tête. J'ai fini par y croire moi-même. J'avais honte de mes douleurs parce qu'elles n'avaient pas de nom." }
    ]
  },

  # ─── FATIGUE CHRONIQUE ──────────────────────────────────────────────────────

  {
    name: "Syndrome de fatigue chronique (ME/CFS)",
    slug: "syndrome-fatigue-chronique",
    category: "fatigue",
    avg_diagnosis_delay: 60,
    description: "Maladie complexe caractérisée par une fatigue invalidante non soulagée par le repos, aggravée par l'effort. 250 000 à 300 000 personnes en France.",
    key_symptoms: ["fatigue extrême non soulagée par le repos", "malaise post-effort", "troubles cognitifs", "sommeil non réparateur", "douleurs musculaires"],
    key_exams: "Pas de test unique. Critères IOM 2015. Bilan pour éliminer d'autres causes.",
    bias_notes: "Très fréquemment attribué à la dépression ou à l'anxiété. Le symptôme clé — aggravation à l'effort — est souvent négligé.",
    what_to_ask: "Connaissez-vous le ME/CFS ? Le fait que mes symptômes s'aggravent après l'effort vous semble-t-il significatif ?",
    dismissive_phrases: [
      "Vous travaillez trop, il faut vous reposer.",
      "C'est classique après un virus, ça va passer.",
      "Tout le monde est épuisé en ce moment.",
      "Avez-vous pensé à consulter un psychologue ?",
      "Vos examens sont normaux — vous n'avez rien."
    ],
    association_name: "FFMRF",
    association_url: "https://www.ffmrf.fr",
    image_url: "https://images.unsplash.com/photo-1519823551278-64ac92734fb1?w=600",
    testimonials: [
      { initials: "L., 50 ans", quote: "Je passais tout mon temps libre à essayer d'apaiser mes douleurs. Pas de temps pour autre chose. J'étais prête à tout pourvu qu'on m'explique ce qu'il m'arrivait." },
      { initials: "M., 46 ans", quote: "Tout m'épuisait : le bruit de la ville, les bavardages. On me disait que c'était dans ma tête. Trois ans sans diagnostic, trois ans d'isolement." }
    ]
  },
  {
    name: "Apnées du sommeil",
    slug: "apnees-sommeil",
    category: "fatigue",
    avg_diagnosis_delay: 36,
    description: "Interruptions répétées de la respiration pendant le sommeil. 3 millions diagnostiqués en France, 5 à 7 millions non diagnostiqués.",
    key_symptoms: ["fatigue chronique malgré un sommeil long", "ronflements", "maux de tête au réveil", "somnolence diurne", "difficultés de concentration", "réveils nocturnes"],
    key_exams: "Polygraphie ventilatoire nocturne. Polysomnographie.",
    bias_notes: "Le patient dort quand le symptôme se produit. Sous-diagnostiqué chez la femme.",
    what_to_ask: "Pourrait-il s'agir d'apnées du sommeil ? Pouvez-vous me prescrire une polygraphie ?",
    dismissive_phrases: [
      "Ronfler c'est banal, tout le monde le fait.",
      "La fatigue c'est normal avec votre rythme de vie.",
      "Vous dormez suffisamment, ce n'est pas les apnées.",
      "Les apnées ça touche surtout les hommes en surpoids.",
      "Dormez plus tôt, vous verrez ça ira mieux."
    ],
    association_name: "ANTADIR",
    association_url: "https://www.antadir.com",
    image_url: "https://images.unsplash.com/photo-1531353826977-0941b4779a1c?w=600",
    testimonials: [
      { initials: "P., 45 ans", quote: "Je dormais 9h et me réveillais épuisé. Trois ans s'étaient écoulés sans que personne ne pose la question des apnées." },
      { initials: "S., 41 ans", quote: "Certains amis ont pris leurs distances. On pensait que je cherchais des excuses pour annuler. La fatigue sans nom, personne ne la comprend." }
    ]
  },
  {
    name: "Narcolepsie",
    slug: "narcolepsie",
    category: "fatigue",
    avg_diagnosis_delay: 84,
    description: "Trouble neurologique du sommeil provoquant une somnolence diurne excessive et des accès de sommeil incontrôlables. Environ 30 000 personnes en France.",
    key_symptoms: ["somnolence diurne excessive", "endormissements soudains", "cataplexie", "paralysie du sommeil", "hallucinations hypnagogiques", "sommeil nocturne fragmenté"],
    key_exams: "Polysomnographie nocturne. Test itératif de latence à l'endormissement (TILE). Centre du sommeil.",
    bias_notes: "Souvent attribuée à un manque de sommeil, à la dépression ou à la paresse. La cataplexie est rarement reconnue.",
    what_to_ask: "Pourrait-il s'agir d'une narcolepsie ? Pouvez-vous me référer à un centre du sommeil pour un TILE ?",
    dismissive_phrases: [
      "Dormez plus la nuit, vous serez moins fatigué·e.",
      "Tout le monde somnole après les repas.",
      "C'est de la dépression qui provoque cette fatigue.",
      "Vous manquez de motivation, pas de sommeil.",
      "Ces endormissements c'est une question d'hygiène de vie."
    ],
    association_name: "LUCIA (Ligue contre la narcolepsie)",
    association_url: "https://www.narcolepsie.fr",
    image_url: "https://images.unsplash.com/photo-1531353826977-0941b4779a1c?w=600",
    testimonials: [
      { initials: "G., 22 ans", quote: "J'ai eu mes premiers symptômes à 16 ans. On m'a dit que j'étais paresseux, que je ne dormais pas assez. La narcolepsie a été diagnostiquée 6 ans plus tard." },
      { initials: "A., 35 ans", quote: "Les accès de faiblesse musculaire quand je riais — la cataplexie — on pensait que c'était de l'anxiété. Le centre du sommeil a tout résolu." }
    ]
  },

  # ─── SANTÉ MENTALE & NEURODÉVELOPPEMENT ─────────────────────────────────────

  {
    name: "Trouble bipolaire",
    slug: "trouble-bipolaire",
    category: "psychiatrie",
    avg_diagnosis_delay: 96,
    description: "Trouble psychiatrique caractérisé par l'alternance d'épisodes dépressifs et maniaques ou hypomaniaques. Touche environ 1 million de personnes en France.",
    key_symptoms: ["épisodes dépressifs récurrents", "périodes d'énergie inhabituelle", "besoin de sommeil réduit", "irritabilité intense", "impulsivité", "projets multiples simultanés"],
    key_exams: "Diagnostic clinique psychiatrique. Questionnaires MDQ, HCL-32. Consultation psychiatre.",
    bias_notes: "Diagnostiqué à tort comme dépression unipolaire. Les antidépresseurs seuls peuvent aggraver le trouble.",
    what_to_ask: "Avez-vous envisagé un trouble bipolaire plutôt qu'une dépression ? Pouvez-vous me référer à un psychiatre ?",
    dismissive_phrases: [
      "Vous êtes juste dépressif·ve, c'est très courant.",
      "Ces hauts et ces bas font partie de la personnalité.",
      "Vous êtes très émotif·ve, c'est votre caractère.",
      "On va ajuster les antidépresseurs, ça devrait aller.",
      "C'est une période difficile, ça passera."
    ],
    association_name: "ARGOS 2001",
    association_url: "https://www.argos2001.fr",
    image_url: "https://images.unsplash.com/photo-1474314170901-ba7732e2c74c?w=600",
    testimonials: [
      { initials: "T., 33 ans", quote: "8 ans sous antidépresseurs, 4 psychiatres. C'est le cinquième qui a posé le diagnostic de bipolarité. Les médicaments ont enfin changé." },
      { initials: "A., 29 ans", quote: "On me disait que j'étais 'intense', 'difficile'. Personne ne reliait mes épisodes. Le diagnostic a été un soulagement immense malgré tout." }
    ]
  },
  {
    name: "TDAH adulte",
    slug: "tdah-adulte",
    category: "psychiatrie",
    avg_diagnosis_delay: 120,
    description: "Le trouble déficit de l'attention persiste à l'âge adulte chez 60% des personnes. Beaucoup ne sont jamais diagnostiquées. 1,5 à 2 millions de personnes concernées.",
    key_symptoms: ["difficultés de concentration", "procrastination chronique", "oublis fréquents", "impulsivité", "désorganisation", "hypersensibilité émotionnelle"],
    key_exams: "Évaluation neuropsychologique. Questionnaire ASRS. Consultation psychiatre ou neurologue.",
    bias_notes: "Chez les femmes, le profil inattentif est masqué par des stratégies de compensation. Souvent confondu avec anxiété ou dépression.",
    what_to_ask: "Pourrait-il s'agir d'un TDAH adulte ? Y a-t-il un centre spécialisé dans ma région ?",
    dismissive_phrases: [
      "Vous êtes simplement distrait·e, faites des efforts.",
      "Tout le monde a du mal à se concentrer parfois.",
      "C'est une question d'organisation, pas une maladie.",
      "Le TDAH c'est pour les enfants, pas les adultes.",
      "Vous manquez juste de motivation et de discipline."
    ],
    association_name: "HyperSupers TDAH France",
    association_url: "https://www.tdah-france.fr",
    image_url: "https://images.unsplash.com/photo-1455642305367-68834a9b6ade?w=600",
    testimonials: [
      { initials: "A., 27 ans", quote: "J'étais 'brillante mais pas à la hauteur de son potentiel' depuis l'enfance. Diagnostiquée TDAH à 26 ans. Tout s'est éclairé d'un coup." },
      { initials: "V., 35 ans", quote: "On me disait que j'étais intelligente mais paresseuse. Des années de honte. Le diagnostic m'a rendu une légitimité que je n'avais jamais eue." }
    ]
  },
  {
    name: "Autisme adulte",
    slug: "autisme-adulte",
    category: "psychiatrie",
    avg_diagnosis_delay: 240,
    description: "Le trouble du spectre autistique est souvent diagnostiqué très tardivement chez les adultes, surtout les femmes. De nombreux adultes ne sont jamais diagnostiqués.",
    key_symptoms: ["difficultés dans les interactions sociales", "hypersensibilité sensorielle", "intérêts intenses et spécifiques", "besoin de routines", "fatigue sociale intense", "difficultés de communication non verbale"],
    key_exams: "Bilan neuropsychologique complet. Entretien diagnostique ADI-R ou ADOS. Centre spécialisé TSA.",
    bias_notes: "Le profil féminin de l'autisme diffère du profil masculin de référence. Les femmes développent des stratégies de camouflage (masking) qui retardent le diagnostic.",
    what_to_ask: "Pourrait-il s'agir d'un trouble du spectre autistique ? Existe-t-il un centre de diagnostic TSA adulte dans ma région ?",
    dismissive_phrases: [
      "Vous êtes juste introvertie, ce n'est pas l'autisme.",
      "L'autisme c'est pour les enfants avec des troubles sévères.",
      "Vous parlez trop bien pour être autiste.",
      "C'est de l'anxiété sociale, pas de l'autisme.",
      "Vous avez fait des études, donc vous ne pouvez pas être autiste."
    ],
    association_name: "Autisme France",
    association_url: "https://www.autisme-france.fr",
    image_url: "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=600",
    testimonials: [
      { initials: "C., 34 ans", quote: "Diagnostiquée à 32 ans après une vie à me demander pourquoi les interactions sociales m'épuisaient autant. Le diagnostic a été un soulagement immense." },
      { initials: "M., 28 ans", quote: "On me disait que j'étais bizarre, trop sensible, asociale. J'avais appris à imiter les autres pour passer inaperçue. Le TSA a tout expliqué." }
    ]
  },
  {
    name: "Trouble anxieux généralisé",
    slug: "trouble-anxieux-generalise",
    category: "psychiatrie",
    avg_diagnosis_delay: 60,
    description: "Anxiété chronique et excessive touchant de nombreux domaines de la vie. Souvent sous-diagnostiqué ou utilisé comme diagnostic fourre-tout masquant d'autres pathologies.",
    key_symptoms: ["inquiétudes excessives et incontrôlables", "tension musculaire", "troubles du sommeil", "irritabilité", "difficultés de concentration", "fatigue chronique", "palpitations"],
    key_exams: "Évaluation clinique psychiatrique ou psychologique. Questionnaires GAD-7. Éliminer causes organiques.",
    bias_notes: "Utilisé parfois comme diagnostic par défaut avant d'explorer d'autres causes. Peut masquer un TDAH, un trouble bipolaire ou une maladie physique non diagnostiquée.",
    what_to_ask: "L'anxiété pourrait-elle être secondaire à une autre pathologie ? Un TDAH ou un trouble bipolaire ont-ils été exclus ?",
    dismissive_phrases: [
      "Tout le monde est anxieux, c'est la vie moderne.",
      "Faites du yoga et de la méditation.",
      "Vous pensez trop, apprenez à lâcher prise.",
      "Ce n'est que de l'anxiété, pas une vraie maladie.",
      "Évitez le café et dormez plus."
    ],
    association_name: "France Dépression",
    association_url: "https://www.france-depression.org",
    image_url: "https://images.unsplash.com/photo-1474314170901-ba7732e2c74c?w=600",
    testimonials: [
      { initials: "L., 31 ans", quote: "5 ans sous le diagnostic d'anxiété. En réalité j'avais un TDAH non traité qui générait l'anxiété. Le bon diagnostic a tout changé." },
      { initials: "S., 27 ans", quote: "On traitait mon anxiété sans chercher la cause. C'était en réalité une thyroïdite de Hashimoto qui la provoquait." }
    ]
  },

  # ─── MALADIES AUTO-IMMUNES ──────────────────────────────────────────────────

  {
    name: "Lupus érythémateux systémique",
    slug: "lupus",
    category: "auto_immune",
    avg_diagnosis_delay: 72,
    description: "Maladie auto-immune touchant plusieurs organes. Touche majoritairement les femmes. Environ 50 000 personnes en France.",
    key_symptoms: ["fatigue intense", "douleurs articulaires", "éruption cutanée en papillon", "sensibilité au soleil", "fièvre récurrente", "chute de cheveux"],
    key_exams: "Bilan immunologique : ANA, anti-ADN natif, complément. NFS, créatinine.",
    bias_notes: "Symptômes très variables. Errance fréquente entre spécialistes. Touche 9 femmes pour 1 homme.",
    what_to_ask: "Un bilan immunologique a-t-il été réalisé ? Pourriez-vous prescrire une recherche d'ANA ?",
    dismissive_phrases: [
      "Vous êtes juste fatiguée, reposez-vous davantage.",
      "Ces douleurs articulaires sont normales avec l'âge.",
      "Votre bilan standard est normal, tout va bien.",
      "C'est probablement du stress ou de l'anxiété.",
      "L'éruption vient sûrement d'une allergie banale."
    ],
    association_name: "AFL+",
    association_url: "https://www.lupus-france.fr",
    image_url: "https://images.unsplash.com/photo-1559757175-5700dde675bc?w=600",
    testimonials: [
      { initials: "N., 31 ans", quote: "4 ans d'errance entre rhumatologue, dermatologue et néphrologue. C'est finalement un interne en stage qui a pensé au lupus." },
      { initials: "I., 41 ans", quote: "Quand j'ai eu le diagnostic, mon compagnon a enfin compris ce que je vivais. Avant, même mes proches pensaient que j'exagérais." }
    ]
  },
  {
    name: "Thyroïdite de Hashimoto",
    slug: "hashimoto",
    category: "auto_immune",
    avg_diagnosis_delay: 48,
    description: "Maladie auto-immune thyroïdienne entraînant une hypothyroïdie progressive. Touche environ 1 million de personnes en France.",
    key_symptoms: ["fatigue chronique", "prise de poids inexpliquée", "frilosité", "dépression", "constipation", "chute de cheveux", "ralentissement général"],
    key_exams: "TSH, T4 libre, anticorps anti-TPO. Échographie thyroïdienne.",
    bias_notes: "Symptômes souvent attribués au stress ou à la dépression. TSH peut rester normale longtemps.",
    what_to_ask: "A-t-on recherché des anticorps anti-TPO ? La TSH normale exclut-elle une thyroïdite ?",
    dismissive_phrases: [
      "Votre TSH est normale, votre thyroïde va bien.",
      "La prise de poids c'est l'alimentation, pas la thyroïde.",
      "La fatigue et la déprime c'est le quotidien de tout le monde.",
      "Vous prenez de l'âge, c'est normal de ralentir.",
      "Faites du sport, vous verrez ça ira mieux."
    ],
    association_name: "Vivre sans Thyroïde",
    association_url: "https://www.vivre-sans-thyroide.fr",
    image_url: "https://images.unsplash.com/photo-1576091160550-2173dba999ef?w=600",
    testimonials: [
      { initials: "V., 36 ans", quote: "Deux ans de fatigue écrasante. Mon médecin me prescrivait des antidépresseurs. Les anticorps anti-TPO ont tout expliqué." },
      { initials: "E., 42 ans", quote: "D'après les analyses j'en souffrais depuis sept ans. Sept ans durant lesquels j'ai annulé des sorties, des soirées. À force, mes proches ont cessé de me proposer des choses." }
    ]
  },
  {
    name: "Spondylarthrite ankylosante",
    slug: "spondylarthrite",
    category: "auto_immune",
    avg_diagnosis_delay: 84,
    description: "Maladie inflammatoire chronique touchant principalement le rachis et les articulations sacro-iliaques. Touche environ 300 000 personnes en France.",
    key_symptoms: ["douleurs dorsales chroniques", "raideur matinale", "douleurs nocturnes", "fatigue", "douleurs aux hanches", "inflammation des tendons"],
    key_exams: "Radiographie bassin et rachis. IRM sacro-iliaque. HLA-B27. Consultation rhumatologue.",
    bias_notes: "Souvent confondu avec des douleurs banales de dos. Délai moyen de 7 ans. Touche aussi les femmes mais sous une forme moins visible.",
    what_to_ask: "Avez-vous recherché le marqueur HLA-B27 ? Une IRM sacro-iliaque a-t-elle été faite ?",
    dismissive_phrases: [
      "Mal de dos à votre âge, c'est banal.",
      "Vous êtes assis toute la journée, c'est normal.",
      "Faites de la kiné, ça suffira.",
      "Ce n'est pas une vraie maladie inflammatoire.",
      "La raideur le matin c'est juste parce que vous bougez peu."
    ],
    association_name: "AFPric",
    association_url: "https://www.afpric.fr",
    image_url: "https://images.unsplash.com/photo-1485827404703-89b55fcc595e?w=600",
    testimonials: [
      { initials: "A., 40 ans", quote: "J'ai annulé des tas de choses par peur ou parce que j'avais déjà super mal. Les longs trajets, rester debout, dormir ailleurs — tout devenait source d'anxiété." },
      { initials: "M., 35 ans", quote: "À force d'annuler, mes amis ont arrêté de proposer. La douleur sans nom pousse à la solitude. Le diagnostic a au moins légitimé mes bizarreries." }
    ]
  },
  {
    name: "Polyarthrite rhumatoïde",
    slug: "polyarthrite-rhumatoide",
    category: "auto_immune",
    avg_diagnosis_delay: 12,
    description: "Maladie auto-immune inflammatoire touchant les articulations. Environ 300 000 personnes en France. Les formes débutantes sont souvent méconnues.",
    key_symptoms: ["douleurs articulaires symétriques", "raideur matinale prolongée", "gonflement des articulations", "fatigue intense", "fièvre légère", "perte de poids"],
    key_exams: "FR (facteur rhumatoïde), anti-CCP. Bilan inflammatoire. Radiographies. Consultation rhumatologue.",
    bias_notes: "Les formes débutantes peuvent être séronégatives — les tests reviennent normaux malgré la maladie.",
    what_to_ask: "A-t-on recherché les anti-CCP ? Une consultation rhumatologique est-elle possible ?",
    dismissive_phrases: [
      "À votre âge c'est normal d'avoir des douleurs articulaires.",
      "Votre bilan est normal, vous n'avez pas d'arthrite.",
      "Faites du sport, vos articulations s'en porteront mieux.",
      "C'est de l'arthrose classique, pas de la polyarthrite.",
      "La raideur matinale c'est parce que vous bougez peu."
    ],
    association_name: "AFPric",
    association_url: "https://www.afpric.fr",
    image_url: "https://images.unsplash.com/photo-1576091160399-112ba8d25d1d?w=600",
    testimonials: [
      { initials: "A., 43 ans", quote: "Deux ans de douleurs articulaires ignorées. Mon rhumatologue a finalement trouvé des anti-CCP positifs. Un traitement précoce aurait préservé mes articulations." },
      { initials: "N., 38 ans", quote: "On me disait que mes douleurs étaient liées au stress. Diagnostiquée PR séronégative après 18 mois d'errance." }
    ]
  },
  {
    name: "Maladie cœliaque",
    slug: "maladie-coeliaque",
    category: "auto_immune",
    avg_diagnosis_delay: 120,
    description: "Maladie auto-immune déclenchée par le gluten. Touche environ 600 000 personnes en France, dont 80% sont non diagnostiquées.",
    key_symptoms: ["douleurs abdominales", "diarrhée chronique", "fatigue intense", "perte de poids", "ballonnements", "carences en fer et vitamines", "aphtes récurrents"],
    key_exams: "Sérologie IgA anti-transglutaminase. Biopsie duodénale. À faire impérativement sans régime sans gluten.",
    bias_notes: "Souvent confondue avec intestin irritable. Formes atypiques sans symptômes digestifs très fréquentes et méconnues.",
    what_to_ask: "A-t-on recherché des anticorps anti-transglutaminase ? Une biopsie intestinale est-elle indiquée ?",
    dismissive_phrases: [
      "C'est un côlon irritable, mangez équilibré.",
      "La fatigue vient de votre alimentation, pas de votre intestin.",
      "Le gluten ce n'est pas une vraie intolérance.",
      "Vos analyses sanguines sont normales.",
      "Essayez un régime et voyez si ça va mieux."
    ],
    association_name: "AFDIAG",
    association_url: "https://www.afdiag.fr",
    image_url: "https://images.unsplash.com/photo-1547592180-85f173990554?w=600",
    testimonials: [
      { initials: "C., 31 ans", quote: "10 ans de douleurs abdominales, de fatigue, d'anémie. On me disait que c'était dans ma tête ou un côlon irritable. La biopsie a tout résolu." },
      { initials: "T., 45 ans", quote: "Je n'avais pas de symptômes digestifs classiques. Juste une fatigue écrasante et des carences. La maladie cœliaque était la dernière chose qu'on cherchait." }
    ]
  },
  {
    name: "Syndrome de Sjögren",
    slug: "sjogren",
    category: "auto_immune",
    avg_diagnosis_delay: 72,
    description: "Maladie auto-immune touchant les glandes exocrines, provoquant sécheresse oculaire et buccale. Environ 100 000 personnes en France.",
    key_symptoms: ["sécheresse oculaire", "sécheresse buccale", "fatigue chronique", "douleurs articulaires", "difficultés à avaler", "sensibilité à la lumière"],
    key_exams: "Anticorps anti-SSA et anti-SSB. Test de Schirmer. Biopsie des glandes salivaires.",
    bias_notes: "Symptômes attribués à l'âge ou à l'environnement. Souvent associé à d'autres maladies auto-immunes non diagnostiquées.",
    what_to_ask: "A-t-on recherché les anticorps anti-SSA ? Une consultation en rhumatologie est-elle possible ?",
    dismissive_phrases: [
      "La sécheresse oculaire c'est dû aux écrans.",
      "À votre âge c'est normal d'avoir la bouche sèche.",
      "Buvez plus d'eau et utilisez des gouttes.",
      "La fatigue c'est le quotidien de tout le monde.",
      "Ce sont des petits inconforts, pas une maladie."
    ],
    association_name: "Association Française du Gougerot-Sjögren",
    association_url: "https://www.afgs-asso.org",
    image_url: "https://images.unsplash.com/photo-1559757175-0eb30cd8c063?w=600",
    testimonials: [
      { initials: "M., 52 ans", quote: "6 ans avec des yeux qui brûlaient, une bouche toujours sèche. On me donnait des collyres. Le Sjögren a finalement été trouvé par hasard." },
      { initials: "F., 44 ans", quote: "J'avais honte de ma sécheresse buccale en réunion. On ne m'avait jamais dit que ça pouvait être une maladie auto-immune." }
    ]
  },

  # ─── NEUROLOGIE ─────────────────────────────────────────────────────────────

  {
    name: "Sclérose en plaques",
    slug: "sclerose-en-plaques",
    category: "neurologie",
    avg_diagnosis_delay: 36,
    description: "Maladie inflammatoire chronique du système nerveux central. Les premières poussées peuvent disparaître spontanément, retardant le diagnostic. Environ 120 000 personnes en France.",
    key_symptoms: ["fatigue intense", "troubles de la vision", "engourdissements", "difficultés motrices", "troubles de l'équilibre", "douleurs neuropathiques"],
    key_exams: "IRM cérébrale et médullaire. Potentiels évoqués. Ponction lombaire. Consultation neurologue.",
    bias_notes: "Les premières poussées régressent souvent spontanément, donnant l'illusion d'une guérison. Les symptômes sont très variables selon les patients.",
    what_to_ask: "Une IRM cérébrale a-t-elle été réalisée ? Pourriez-vous me référer à un neurologue ?",
    dismissive_phrases: [
      "C'est de la fatigue, vous travaillez trop.",
      "Vos troubles visuels sont liés au stress.",
      "Les engourdissements c'est circulatoire, pas grave.",
      "Ça a disparu donc ce n'était rien.",
      "À votre âge ce n'est pas une SEP."
    ],
    association_name: "SEP France",
    association_url: "https://www.sep-france.fr",
    image_url: "https://images.unsplash.com/photo-1559757148-5c350d0d3c56?w=600",
    testimonials: [
      { initials: "C., 32 ans", quote: "Mes premiers symptômes ont disparu en deux semaines. Mon médecin a dit que c'était du stress. Trois ans plus tard, une deuxième poussée a conduit au diagnostic." },
      { initials: "M., 28 ans", quote: "J'avais des fourmillements dans les jambes depuis un an. On m'a dit que c'était de l'anxiété. L'IRM a tout changé." }
    ]
  },
  {
    name: "Migraine chronique",
    slug: "migraine-chronique",
    category: "neurologie",
    avg_diagnosis_delay: 24,
    description: "La migraine chronique touche environ 3 millions de personnes en France. Elle est souvent sous-diagnostiquée et mal traitée, confondue avec de simples maux de tête.",
    key_symptoms: ["maux de tête récurrents", "nausées", "sensibilité à la lumière", "sensibilité au bruit", "aura visuelle", "douleur pulsatile unilatérale"],
    key_exams: "Diagnostic clinique. Journal des crises. Consultation neurologue spécialisé en céphalées.",
    bias_notes: "Souvent minimisée comme 'juste un mal de tête'. Les femmes sont 3 fois plus touchées que les hommes.",
    what_to_ask: "Pourrait-il s'agir de migraines chroniques ? Existe-t-il un traitement de fond adapté ?",
    dismissive_phrases: [
      "Tout le monde a des maux de tête, prenez de l'ibuprofène.",
      "C'est du stress, essayez de vous détendre.",
      "Vous êtes sensible, c'est tout.",
      "Un mal de tête ne mérite pas une consultation spécialisée.",
      "Buvez plus d'eau, ça passera."
    ],
    association_name: "La Voix des Migraineux",
    association_url: "https://www.lavoixdesmigraineux.fr",
    image_url: "https://images.unsplash.com/photo-1541199249251-f713e6145474?w=600",
    testimonials: [
      { initials: "S., 35 ans", quote: "15 ans de crises invalidantes. On m'a dit que c'était psychosomatique. Un neurologue a enfin posé le diagnostic de migraine chronique avec aura." },
      { initials: "L., 29 ans", quote: "Je ratais des journées de travail entières. Mon entourage pensait que j'exagérais. Le diagnostic m'a rendu une légitimité." }
    ]
  },
  {
    name: "Névralgie du trijumeau",
    slug: "nevralgie-trijumeau",
    category: "neurologie",
    avg_diagnosis_delay: 24,
    description: "Douleur faciale intense et paroxystique affectant le nerf trijumeau. Souvent confondue avec des problèmes dentaires. Environ 15 000 nouveaux cas par an en France.",
    key_symptoms: ["douleurs faciales fulgurantes", "douleurs déclenchées par le toucher", "douleurs à la mastication", "douleurs à la parole", "crises courtes et intenses"],
    key_exams: "IRM cérébrale. Consultation neurologue. Éliminer cause dentaire.",
    bias_notes: "Fréquemment attribuée à des problèmes dentaires. De nombreux patients subissent des soins dentaires inutiles avant le diagnostic.",
    what_to_ask: "Pourrait-il s'agir d'une névralgie du trijumeau ? Une IRM a-t-elle été prescrite ?",
    dismissive_phrases: [
      "C'est sûrement une dent, allez voir un dentiste.",
      "Ces douleurs sont d'origine psychosomatique.",
      "Prenez des antalgiques, ça devrait passer.",
      "À votre âge c'est normal d'avoir des douleurs.",
      "Le bilan dentaire est normal donc ce n'est pas réel."
    ],
    association_name: "AFVD",
    association_url: "https://www.afvd.fr",
    image_url: "https://images.unsplash.com/photo-1566616213894-2d4e1baee5d8?w=600",
    testimonials: [
      { initials: "P., 54 ans", quote: "J'ai eu 4 extractions dentaires inutiles avant qu'un neurologue prononce enfin le mot névralgie du trijumeau." },
      { initials: "M., 61 ans", quote: "Les douleurs étaient si intenses que je ne pouvais plus manger. On me disait que c'était dans ma tête." }
    ]
  },
  {
    name: "Maladie à corps de Lewy",
    slug: "maladie-a-corps-de-lewy",
    category: "neurologie",
    avg_diagnosis_delay: 30,
    description: "La maladie à corps de Lewy (MCL) est la deuxième cause de démence neurodégénérative après Alzheimer. Elle résulte de l'accumulation anormale d'une protéine — l'alpha-synucléine — dans les neurones, provoquant une triade de symptômes : fluctuations cognitives, hallucinations visuelles et signes moteurs proches de Parkinson. Très souvent confondue avec Alzheimer ou des troubles psychiatriques, elle reste diagnostiquée tardivement chez 2 malades sur 3 — avec des conséquences graves, notamment la prescription de neuroleptiques formellement contre-indiqués dans cette maladie.",
    key_symptoms: [
      "Hallucinations visuelles (personnes, animaux, objets inexistants)",
      "Fluctuations cognitives : lucidité variable d'un jour à l'autre",
      "Ralentissement moteur, rigidité, tremblement (parkinsonisme)",
      "Troubles du sommeil paradoxal : cris, mouvements pendant les rêves",
      "Hypotension orthostatique : vertiges en se levant, malaises",
      "Troubles de l'attention et de la mémoire",
      "Dépression ou apathie prolongée"
    ],
    key_exams: "DAT scan (SPECT dopamine) · Scintigraphie cardiaque MIBG · Polysomnographie (enregistrement du sommeil) · IRM cérébrale · Bilan neuropsychologique complet · Consultation en centre mémoire spécialisé",
    bias_notes: "Décrite cliniquement seulement en 1992, la MCL est absente de la formation de nombreux médecins formés avant les années 2000. Ses symptômes cognitifs miment Alzheimer, ses symptômes moteurs miment Parkinson, et ses troubles de l'humeur sont pris pour de la dépression ou de la psychose. 65 % des patients reçoivent un premier diagnostic erroné. Les neuroleptiques souvent prescrits pour les hallucinations sont contre-indiqués dans la MCL et peuvent provoquer des réactions sévères.",
    what_to_ask: "Mes troubles cognitifs varient beaucoup d'un jour à l'autre — est-ce compatible avec Alzheimer ? J'ai des hallucinations visuelles très précises. Je bouge ou crie pendant mes rêves depuis plusieurs années. Pourrait-il s'agir d'une maladie à corps de Lewy ? Signalez tout neuroleptique prescrit — certains sont dangereux dans la MCL.",
    dismissive_phrases: [
      "C'est simplement de la vieillesse.",
      "Vous faites de la dépression, ce n'est pas neurologique.",
      "Ces hallucinations sont liées à votre anxiété.",
      "C'est un début d'Alzheimer, il n'y a pas grand-chose à faire.",
      "Les fluctuations, c'est normal à cet âge."
    ],
    association_name: "A2MCL — Aidants et Malades à Corps de Lewy",
    association_url: "https://association-maladie-corps-lewy.a2mcl.org",
    image_url: "https://images.unsplash.com/photo-1559757175-0eb30cd8c063?w=600",
    testimonials: [
      { initials: "C.M., 51 ans (aidante)", quote: "Trois ans de psychiatres, d'antidépresseurs, de neuroleptiques. Personne ne faisait le lien entre les hallucinations de mon père, ses chutes et ses nuits agitées. Le diagnostic de MCL est tombé après une hospitalisation en urgence." },
      { initials: "Françoise, 68 ans", quote: "Mon médecin m'avait dit début d'Alzheimer. Mais ma mémoire variait tellement d'un jour à l'autre — certains matins j'étais presque normale. C'est un neurologue de CHU qui a enfin posé le bon diagnostic." },
      { initials: "Bernard, 72 ans", quote: "Je voyais des enfants dans ma chambre chaque soir. Des enfants très réels. Quand j'en ai parlé à mon généraliste il a pensé à de la psychose. Deux ans plus tard on a trouvé : corps de Lewy." }
    ]
  },

  # ─── MALADIES RARES ─────────────────────────────────────────────────────────

  {
    name: "Syndrome d'Ehlers-Danlos",
    slug: "ehlers-danlos",
    category: "rare",
    avg_diagnosis_delay: 84,
    description: "Maladie génétique du tissu conjonctif provoquant hyperlaxité articulaire, douleurs chroniques et grande fatigue. Probablement 100 000 personnes en France.",
    key_symptoms: ["hyperlaxité articulaire", "douleurs articulaires chroniques", "entorses fréquentes", "fatigue intense", "peau douce et extensible", "luxations récurrentes"],
    key_exams: "Score de Beighton. Consultation rhumatologue ou généticien.",
    bias_notes: "Confondu avec fibromyalgie ou hyperlaxité bénigne.",
    what_to_ask: "Avez-vous évalué mon score de Beighton ? Pourrait-il s'agir d'un Ehlers-Danlos ?",
    dismissive_phrases: [
      "Vous êtes juste très souple, c'est une chance !",
      "Ces entorses à répétition, faites attention c'est tout.",
      "La fatigue vient sûrement de votre mode de vie.",
      "Il n'y a pas de traitement donc inutile de chercher.",
      "C'est fonctionnel, apprenez à vivre avec."
    ],
    association_name: "AFSED",
    association_url: "https://www.afsed.com",
    image_url: "https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=600",
    testimonials: [
      { initials: "R., 24 ans", quote: "On me disait que j'étais souple, que c'était une chance. Personne ne reliait mes entorses, mes douleurs, ma fatigue. Le SED a tout expliqué." },
      { initials: "L., 50 ans", quote: "Les médecins m'ont tellement répété que c'était dans ma tête que j'ai fini par y croire. Je cachais mes douleurs. J'avais l'impression d'être un imposteur." }
    ]
  },
  {
    name: "Syndrome de POTS",
    slug: "pots",
    category: "rare",
    avg_diagnosis_delay: 60,
    description: "Tachycardie orthostatique posturale : le cœur s'emballe au passage à la position debout. 100 000 à 200 000 personnes en France.",
    key_symptoms: ["palpitations en se levant", "étourdissements", "malaises", "fatigue intense", "brouillard mental", "intolérance à l'effort"],
    key_exams: "Test d'orthostatisme. Test de tilt. Holter cardiaque.",
    bias_notes: "Très fréquemment attribué à l'anxiété chez les jeunes femmes.",
    what_to_ask: "Avez-vous mesuré ma fréquence cardiaque allongée puis debout ? Pourrait-il s'agir d'un POTS ?",
    dismissive_phrases: [
      "C'est de l'hypotension orthostatique bénigne, c'est normal.",
      "Vous êtes anxieuse, c'est pour ça que le cœur s'emballe.",
      "Buvez plus d'eau et mangez plus salé.",
      "À votre âge c'est normal d'avoir des malaises.",
      "Vos examens cardiaques sont normaux, ne vous inquiétez pas."
    ],
    association_name: "France POTS",
    association_url: "https://www.france-pots.fr",
    image_url: "https://images.unsplash.com/photo-1493836512294-502baa1986e2?w=600",
    testimonials: [
      { initials: "E., 22 ans", quote: "Je m'évanouissais régulièrement. On me disait que c'était du stress, de l'anxiété. Le test de tilt a tout changé en 20 minutes." },
      { initials: "A., 40 ans", quote: "On m'a dit que j'avais la phobie des médecins, que c'était psychosomatique. Cinq ans plus tard, le POTS était évident pour le premier cardiologue spécialisé." }
    ]
  },
  {
    name: "Maladie de Lyme chronique",
    slug: "lyme-chronique",
    category: "rare",
    avg_diagnosis_delay: 36,
    description: "Infection bactérienne transmise par les tiques pouvant provoquer des symptômes chroniques persistants. Sujet controversé mais touchant des milliers de patients en France.",
    key_symptoms: ["fatigue chronique", "douleurs articulaires migratrices", "troubles cognitifs", "maux de tête", "troubles du sommeil", "symptômes neurologiques variables"],
    key_exams: "Sérologie Elisa + Western Blot. Consultation infectiologue ou médecin spécialisé Lyme.",
    bias_notes: "Sujet très controversé. Les tests sérologiques peuvent être faux négatifs. Certains médecins ne reconnaissent pas la forme chronique.",
    what_to_ask: "Avez-vous été piqué par une tique ? Un Western Blot a-t-il été réalisé ?",
    dismissive_phrases: [
      "Votre sérologie Lyme est négative donc ce n'est pas Lyme.",
      "Le Lyme chronique n'existe pas médicalement.",
      "Vos symptômes sont trop diffus pour être une maladie.",
      "C'est de la fibromyalgie ou de l'anxiété.",
      "Internet vous fait croire des choses qui n'existent pas."
    ],
    association_name: "France Lyme",
    association_url: "https://www.francelyme.fr",
    image_url: "https://images.unsplash.com/photo-1448375240586-882707db888b?w=600",
    testimonials: [
      { initials: "B., 47 ans", quote: "Trois ans de symptômes inexpliqués après une randonnée. Mon médecin ne croyait pas au Lyme chronique. J'ai dû chercher un spécialiste par moi-même." },
      { initials: "S., 39 ans", quote: "On m'a dit que c'était dans ma tête, que le Lyme chronique n'existait pas. Trouver un médecin qui m'écoute a pris deux ans." }
    ]
  },
  {
    name: "Porphyrie",
    slug: "porphyrie",
    category: "rare",
    avg_diagnosis_delay: 120,
    description: "Groupe de maladies métaboliques rares affectant la production d'hémoglobine. Les crises peuvent être déclenchées par des médicaments, l'alcool ou le stress. Environ 10 000 personnes en France.",
    key_symptoms: ["douleurs abdominales intenses", "douleurs neuropathiques", "troubles psychiatriques", "urine rouge ou brune", "sensibilité cutanée au soleil", "nausées et vomissements"],
    key_exams: "Dosage des porphyrines urinaires pendant une crise. Test génétique. Centre de référence maladies rares.",
    bias_notes: "Extrêmement méconnue. Souvent diagnostiquée comme abdomen aigu chirurgical ou trouble psychiatrique.",
    what_to_ask: "A-t-on dosé mes porphyrines urinaires ? Existe-t-il un centre de référence pour les porphyries ?",
    dismissive_phrases: [
      "Ces douleurs abdominales sont fonctionnelles.",
      "C'est un côlon irritable avec anxiété.",
      "Vos examens d'imagerie sont normaux.",
      "Les troubles psychiatriques expliquent tout.",
      "C'est trop rare pour que ce soit ça."
    ],
    association_name: "Association Française des Porphyries",
    association_url: "https://www.porphyrie.net",
    image_url: "https://images.unsplash.com/photo-1532187863486-abf9dbad1b69?w=600",
    testimonials: [
      { initials: "E., 28 ans", quote: "Des années de crises abdominales inexpliquées, d'hospitalisations, de chirurgies inutiles. La porphyrie a finalement été trouvée par un interne curieux." },
      { initials: "V., 35 ans", quote: "On m'a dit que c'était psychosomatique, que j'inventais mes douleurs. Le test urinaire pendant une crise a tout changé." }
    ]
  },
  {
    name: "Maladie de Behçet",
    slug: "behcet",
    category: "rare",
    avg_diagnosis_delay: 60,
    description: "Vascularite systémique rare provoquant des ulcérations et inflammations multiples. Environ 7 000 personnes en France.",
    key_symptoms: ["aphtes buccaux récurrents", "ulcérations génitales", "atteinte oculaire", "lésions cutanées", "douleurs articulaires", "atteinte neurologique"],
    key_exams: "Diagnostic clinique selon critères internationaux. Consultation interniste ou dermatologiste spécialisé.",
    bias_notes: "Méconnue des médecins généralistes. Les aphtes récurrents sont rarement reliés à une maladie systémique.",
    what_to_ask: "Mes aphtes récurrents pourraient-ils être liés à une maladie systémique ? Connaissez-vous la maladie de Behçet ?",
    dismissive_phrases: [
      "Les aphtes c'est banal, tout le monde en a.",
      "C'est du stress qui provoque ces ulcérations.",
      "Utilisez un bain de bouche, ça suffira.",
      "Ces symptômes n'ont aucun lien entre eux.",
      "C'est trop rare pour envisager cette hypothèse."
    ],
    association_name: "Association Française de la Maladie de Behçet",
    association_url: "https://www.association-behcet.com",
    image_url: "https://images.unsplash.com/photo-1576671081837-49000212a370?w=600",
    testimonials: [
      { initials: "K., 33 ans", quote: "Aphtes, douleurs oculaires, lésions cutanées — j'allais voir trois spécialistes différents. Personne ne reliait les points. Le Behçet a mis 5 ans à être nommé." }
    ]
  },
  {
    name: "Hypotension orthostatique",
    slug: "hypotension-orthostatique",
    category: "rare",
    avg_diagnosis_delay: 24,
    description: "Chute de la pression artérielle lors du passage en position debout. Souvent confondue avec anxiété ou simple malaise. Peut être le signe d'une dysautonomie sous-jacente.",
    key_symptoms: ["malaises en se levant", "étourdissements", "vision floue", "palpitations", "fatigue", "syncopes", "brouillard mental"],
    key_exams: "Mesure de la tension allongé puis debout. Test de tilt. Holter tensionnel.",
    bias_notes: "Souvent banalisée ou attribuée à l'anxiété. Le test diagnostique est simple mais rarement réalisé spontanément.",
    what_to_ask: "Avez-vous mesuré ma tension en position allongée puis debout ? Pourrait-il s'agir d'une dysautonomie ?",
    dismissive_phrases: [
      "Tout le monde a des malaises en se levant parfois.",
      "Buvez plus d'eau et mangez plus salé.",
      "C'est de l'anxiété qui provoque ces malaises.",
      "Votre tension est normale en consultation.",
      "C'est bénin, inutile d'investiguer."
    ],
    association_name: "France POTS",
    association_url: "https://www.france-pots.fr",
    image_url: "https://images.unsplash.com/photo-1559757175-5700dde675bc?w=600",
    testimonials: [
      { initials: "A., 26 ans", quote: "Je m'évanouissais deux fois par semaine. On me disait que c'était de l'anxiété. Une mesure tensionnelle allongé/debout a tout expliqué en cinq minutes." }
    ]
  },

  # ─── TROUBLES DIGESTIFS ─────────────────────────────────────────────────────

  {
    name: "Syndrome des ovaires polykystiques",
    slug: "sopk",
    category: "digestif",
    avg_diagnosis_delay: 24,
    description: "Trouble hormonal très courant touchant 1 femme sur 10 en âge de procréer. Souvent non diagnostiqué ou minimisé. Environ 3 millions de femmes en France.",
    key_symptoms: ["cycles irréguliers", "acné persistante", "pilosité excessive", "prise de poids", "fatigue", "difficulté à concevoir", "chute de cheveux"],
    key_exams: "Échographie ovarienne. Bilan hormonal (LH, FSH, testostérone, AMH). Glycémie et insulinémie.",
    bias_notes: "Souvent minimisé ou attribué à un simple déséquilibre hormonal passager. Lien avec résistance à l'insuline méconnu.",
    what_to_ask: "Pourrait-il s'agir d'un SOPK ? Un bilan hormonal complet a-t-il été réalisé ?",
    dismissive_phrases: [
      "Des cycles irréguliers c'est normal à votre âge.",
      "L'acné disparaîtra avec le temps.",
      "Perdez du poids et vos cycles reviendront.",
      "Ce n'est pas grave si vous ne voulez pas d'enfants.",
      "La pilule va régler le problème."
    ],
    association_name: "SOPK Europe",
    association_url: "https://www.sopkeurope.org",
    image_url: "https://images.unsplash.com/photo-1576091160550-2173dba999ef?w=600",
    testimonials: [
      { initials: "J., 27 ans", quote: "10 ans avec des cycles tous les 3 mois. On me mettait sous pilule sans chercher la cause. Le SOPK a été diagnostiqué par une endocrinologue à 26 ans." },
      { initials: "L., 31 ans", quote: "On m'a dit que l'acné et la pilosité c'était mon caractère. Personne n'avait fait le lien avec mes cycles irréguliers." }
    ]
  },
  {
    name: "Syndrome de l'intestin irritable",
    slug: "intestin-irritable",
    category: "digestif",
    avg_diagnosis_delay: 36,
    description: "Trouble fonctionnel intestinal chronique touchant environ 5 millions de personnes en France. Souvent minimisé ou utilisé comme diagnostic par défaut cachant une autre pathologie.",
    key_symptoms: ["douleurs abdominales chroniques", "ballonnements", "alternance diarrhée/constipation", "fatigue", "douleurs soulagées par la défécation", "mucus dans les selles"],
    key_exams: "Diagnostic d'exclusion. Coloscopie si signes d'alarme. Éliminer maladie cœliaque, MICI, SIBO.",
    bias_notes: "Utilisé comme diagnostic fourre-tout. Masque parfois une maladie cœliaque, une MICI débutante ou un SIBO.",
    what_to_ask: "A-t-on éliminé une maladie cœliaque ? Un SIBO ? Une MICI débutante ? Le diagnostic d'intestin irritable est-il définitif ?",
    dismissive_phrases: [
      "C'est du stress qui agite votre intestin.",
      "Mangez mieux et faites du sport.",
      "Tout le monde a un intestin sensible.",
      "C'est fonctionnel, il n'y a rien à faire.",
      "Apprenez à gérer votre anxiété."
    ],
    association_name: "APSSII",
    association_url: "https://www.apssii.org",
    image_url: "https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=600",
    testimonials: [
      { initials: "R., 34 ans", quote: "Diagnostiqué intestin irritable pendant 8 ans. En réalité c'était une maladie de Crohn débutante. Le diagnostic tardif a aggravé les lésions." },
      { initials: "C., 29 ans", quote: "On me disait que c'était du stress. En fait j'avais une maladie cœliaque. Le bon diagnostic m'a changé la vie." }
    ]
  },
  {
    name: "Maladie de Crohn",
    slug: "crohn",
    category: "digestif",
    avg_diagnosis_delay: 36,
    description: "Maladie inflammatoire chronique de l'intestin pouvant toucher tout le tube digestif. Environ 125 000 personnes en France.",
    key_symptoms: ["douleurs abdominales", "diarrhée chronique", "fatigue intense", "perte de poids", "fièvre", "sang dans les selles", "fissures anales récurrentes"],
    key_exams: "Coloscopie avec biopsies. Bilan inflammatoire (CRP, calprotectine fécale). IRM abdominale.",
    bias_notes: "Souvent confondue avec le syndrome de l'intestin irritable pendant des années. Les signes extra-digestifs sont méconnus.",
    what_to_ask: "Une coloscopie a-t-elle été réalisée ? La calprotectine fécale a-t-elle été dosée ?",
    dismissive_phrases: [
      "C'est un côlon irritable, gérez votre stress.",
      "Mangez plus de fibres.",
      "Vos analyses sanguines sont normales.",
      "La diarrhée chronique c'est banal.",
      "Vous êtes trop anxieux·se pour votre intestin."
    ],
    association_name: "Association François Aupetit",
    association_url: "https://www.afa.asso.fr",
    image_url: "https://images.unsplash.com/photo-1505751172876-fa1923c5c528?w=600",
    testimonials: [
      { initials: "M., 26 ans", quote: "3 ans de douleurs abdominales quotidiennes. Diagnostiqué intestin irritable. C'est une coloscopie demandée en urgence qui a révélé le Crohn." },
      { initials: "T., 32 ans", quote: "J'avais perdu 10kg. Mon médecin disait que c'était le stress. Le diagnostic de Crohn a finalement justifié ce que je ressentais." }
    ]
  },
  {
    name: "Rectocolite hémorragique",
    slug: "rectocolite-hemorragique",
    category: "digestif",
    avg_diagnosis_delay: 12,
    description: "Maladie inflammatoire chronique du côlon et du rectum. Environ 100 000 personnes en France. Souvent confondue avec des hémorroïdes ou un côlon irritable.",
    key_symptoms: ["diarrhée avec sang", "douleurs abdominales basses", "urgences défécatoires", "fatigue", "fièvre lors des poussées", "anémie"],
    key_exams: "Coloscopie avec biopsies. Calprotectine fécale. Bilan inflammatoire.",
    bias_notes: "Les saignements rectaux sont souvent attribués aux hémorroïdes sans investigation complémentaire.",
    what_to_ask: "Les saignements ont-ils été investigués par coloscopie ? La calprotectine fécale a-t-elle été dosée ?",
    dismissive_phrases: [
      "C'est des hémorroïdes, c'est très courant.",
      "Un peu de sang dans les selles c'est normal.",
      "Mangez plus de fibres pour réguler le transit.",
      "C'est du stress qui irrite votre intestin.",
      "Attendez, ça devrait se calmer."
    ],
    association_name: "Association François Aupetit",
    association_url: "https://www.afa.asso.fr",
    image_url: "https://images.unsplash.com/photo-1532938911079-1b06ac7ceec7?w=600",
    testimonials: [
      { initials: "C., 24 ans", quote: "Un an de saignements attribués aux hémorroïdes. La coloscopie a finalement montré une rectocolite étendue. Un an de traitement inadapté." }
    ]
  }

]

# ─── BOUCLE D'INSERTION ─────────────────────────────────────────────────────

pathologies.each do |attrs|
  testimonials       = attrs.delete(:testimonials)
  dismissive_phrases = attrs.delete(:dismissive_phrases)
  image_url          = attrs.delete(:image_url)

  p = Pathology.find_or_create_by(slug: attrs[:slug]) do |rec|
    rec.assign_attributes(attrs.merge(
      key_symptoms:       attrs[:key_symptoms].to_json,
      dismissive_phrases: dismissive_phrases.to_json,
      testimonials:       testimonials.to_json,
      image_url:          image_url,
      published:          true
    ))
  end
  puts "✓ #{p.name}"
end

puts "\n#{Pathology.count} pathologies en base."

# Nombre de personnes concernées en France
nb_patients_data = {
  "endometriose"              => "2,5 millions de femmes",
  "fibromyalgie"              => "1,5 à 2 millions",
  "syndrome-fatigue-chronique"=> "250 000 à 300 000",
  "apnees-sommeil"            => "5 à 7 millions non diagnostiqués",
  "narcolepsie"               => "30 000",
  "trouble-bipolaire"         => "1 million",
  "tdah-adulte"               => "1,5 à 2 millions",
  "autisme-adulte"            => "600 000 non diagnostiqués",
  "trouble-anxieux-generalise"=> "3 millions",
  "lupus"                     => "50 000",
  "hashimoto"                 => "1 million",
  "spondylarthrite"           => "300 000",
  "polyarthrite-rhumatoide"   => "300 000",
  "maladie-coeliaque"         => "600 000 (80% non diagnostiqués)",
  "sjogren"                   => "100 000",
  "sclerose-en-plaques"       => "120 000",
  "migraine-chronique"        => "3 millions",
  "nevralgie-trijumeau"       => "15 000 nouveaux cas/an",
  "ehlers-danlos"             => "100 000",
  "pots"                      => "100 000 à 200 000",
  "lyme-chronique"            => "30 000 à 50 000",
  "porphyrie"                 => "10 000",
  "behcet"                    => "7 000",
  "hypotension-orthostatique" => "200 000",
  "sopk"                      => "3 millions de femmes",
  "intestin-irritable"        => "5 millions",
  "crohn"                     => "125 000",
  "rectocolite-hemorragique"  => "100 000",
  "maladie-a-corps-de-lewy"  => "200 000 à 250 000 (67% non diagnostiqués)"
}

nb_patients_data.each do |slug, nb|
  Pathology.find_by(slug: slug)&.update(nb_patients: nb)
  puts "👥 #{slug}"
end
