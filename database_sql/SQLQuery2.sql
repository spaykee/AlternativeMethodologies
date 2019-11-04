--------------------- BELBIN ------------------------------------------------------------------
INSERT INTO belbin (code, [name], [group], strengths, weaknesses, [description]) 
VALUES (
	'PL',
	'Plant', 
	'Thought Oriented Role',
	'Creative, imaginative, free-thinking, generates ideas and solves difficult problems', 
	'Might ignore incidentals, and may be too preoccupied to communicate effectively. They could be absent-minded or forgetful', 
	'The Plant is the creative innovator who comes up with new ideas and approaches. They thrive on praise but criticism is especially hard for them to deal with. Plants are often introverted and prefer to work apart from the team. Because their ideas are so novel, they can be impractical at times. They may also be poor communicators and can tend to ignore given parameters and constraints');

INSERT INTO belbin (code, [name], [group], strengths, weaknesses, [description]) 
VALUES (
	'RI',
	'Resource Investigator', 
	'People Oriented Role',
	'Outgoing, enthusiastic. Explores opportunities and develops contacts', 
	'Might be over-optimistic, and can lose interest once the initial enthusiasm has passed. They might forget to follow up on a lead', 
	'Resource Investigators are innovative and curious. They explore available options, develop contacts, and negotiate for resources on behalf of the team. They are enthusiastic team members, who identify and work with external stakeholders to help the team accomplish its objective. They are outgoing and are often extroverted, meaning that others are often receptive to them and their ideas. On the downside, they may lose enthusiasm quickly, and are often overly optimistic');

INSERT INTO belbin (code, [name], [group], strengths, weaknesses, [description]) 
VALUES (
	'CO',
	'Co-ordinator', 
	'People Oriented Role',
	'Mature, confident, identifies talent. Clarifies goals', 
	'Can be seen as manipulative and might offload their own share of the work. They might over-delegate, leaving themselves little work to do', 
	'Coordinators are the ones who take on the traditional team-leader role and have also been referred to as the chairmen. They guide the team to what they perceive are the objectives. They are often excellent listeners and they are naturally able to recognize the value that each team member brings to the table. They are calm and good-natured, and delegate tasks very effectively. Their potential weaknesses are that they may delegate away too much personal responsibility, and may tend to be manipulative');

INSERT INTO belbin (code, [name], [group], strengths, weaknesses, [description]) 
VALUES (
	'SH',
	'Shaper', 
	'Action Oriented Role',
	'Challenging, dynamic, thrives on pressure. Has the drive and courage to overcome obstacles', 
	'Can be prone to provocation, and may sometimes offend people"s feelings. They could risk becoming aggressive and bad-humoured in their attempts to get things done', 
	'Shapers are people who challenge the team to improve. They are dynamic and usually extroverted people who enjoy stimulating others, questioning norms, and finding the best approaches for solving problems. The Shaper is the one who shakes things up to make sure that all possibilities are considered and that the team does not become complacent. Shapers often see obstacles as exciting challenges and they tend to have the courage to push on when others feel like quitting. Their potential weaknesses may be that they"re argumentative, and that they may offend people"s feelings');

INSERT INTO belbin (code, [name], [group], strengths, weaknesses, [description]) 
VALUES (
	'ME',
	'Monitor Evaluator', 
	'Thought Oriented Role',
	'Sober, strategic and discerning. Sees all options and judges accurately', 
	'Sometimes lacks the drive and ability to inspire others and can be overly critical. They could be slow to come to decisions', 
	'Monitor-Evaluators are best at analyzing and evaluating ideas that other people (often Plants) come up with. These people are shrewd and objective, and they carefully weigh the pros and cons of all the options before coming to a decision. Monitor-Evaluators are critical thinkers and very strategic in their approach. They are often perceived as detached or unemotional. Sometimes they are poor motivators who react to events rather than instigating them');

INSERT INTO belbin (code, [name], [group], strengths, weaknesses, [description]) 
VALUES (
	'TW',
	'Team Worker', 
	'People Oriented Role',
	'Co-operative, perceptive and diplomatic. Listens and averts friction', 
	'Can be indecisive in crunch situations and tends to avoid confrontation. They might be hesitant to make unpopular decisions', 
	'Team Workers are the people who provide support and make sure that people within the team are working together effectively. These people fill the role of negotiators within the team and they are flexible, diplomatic and perceptive. These tend to be popular people who are very capable in their own right, but who prioritize team cohesion and helping people get along. Their weaknesses may be a tendency to be indecisive, and to maintain uncommitted positions during discussions and decision-making');

INSERT INTO belbin (code, [name], [group], strengths, weaknesses, [description]) 
VALUES (
	'IMP',
	'Implementer', 
	'Action Oriented Role',
	'Practical, reliable, efficient. Turns ideas into actions and organises work that needs to be done', 
	'Can be a bit inflexible and slow to respond to new possibilities. They might be slow to relinquish their plans in favour of positive changes', 
	'Implementers are the people who get things done. They turn the team"s ideas and concepts into practical actions and plans. They are typically conservative, disciplined people who work systematically and efficiently and are very well organized. These are the people who you can count on to get the job done. On the downside, Implementers may be inflexible and can be somewhat resistant to change');

INSERT INTO belbin (code, [name], [group], strengths, weaknesses, [description]) 
VALUES (
	'CF',
	'Completer Finisher', 
	'Action Oriented Role',
	'Painstaking, conscientious, anxious. Searches out errors. Polishes and perfects', 
	'Can be inclined to worry unduly, and reluctant to delegate. They could be accused of taking their perfectionism to extremes', 
	'Completer-Finishers are the people who see that projects are completed thoroughly. They ensure that there have been no errors or omissions and they pay attention to the smallest of details. They are very concerned with deadlines and will push the team to make sure the job is completed on time. They are described as perfectionists who are orderly, conscientious and anxious. However, a Completer-Finisher may worry unnecessarily, and may find it hard to delegate');
---------------------------------------------------------------------------------------------------------

--------------------- BELBIN QUESTIONS ------------------------------------------------------------------
INSERT INTO belbin_question (question) VALUES ('when involved in a project with other people');
INSERT INTO belbin_question (question) VALUES ('in seeking satisfaction through my work');
INSERT INTO belbin_question (question) VALUES ('when the team is trying to solve a particulary complex problem');
INSERT INTO belbin_question (question) VALUES ('in carrying out my day-to-day work');
INSERT INTO belbin_question (question) VALUES ('if I am suddenly given a difficult task with limited time and unfamiliar people');
INSERT INTO belbin_question (question) VALUES ('when suddenly asked to consider a new project');
INSERT INTO belbin_question (question) VALUES ('in contributing to group projects in general');
---------------------------------------------------------------------------------------------------------

--------------------- BELBIN ANSWER ---------------------------------------------------------------------
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (1, 'I can be relied upon to see that work that needs to be done is organised', 7);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (1, 'I pick up slips and omissions that others fail to notice', 8);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (1, 'I react strongly when meetings look like losing track of the main objective', 4);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (1, 'I produce original suggestions', 1);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (1, 'I analyse other people’s ideas objectively, for both merits and failings', 5);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (1, 'I am keen to find out the latest ideas and developments', 2);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (1, 'I have an aptitude for organising people', 3);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (1, 'I am always ready to support good suggestions that help to resolve a problem', 6);

INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (2, 'I like to have a strong influence on decisions', 4);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (2, 'I feel in my element where work requires a high degree of attention and concentration', 8);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (2, 'I am concerned to help colleagues with their problems', 6);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (2, 'I like to make critical discrimination between alternatives', 5);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (2, 'I tend to have a creative approach to problem solving', 1);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (2, 'I enjoy reconciling different points of view', 3);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (2, 'I am more interested in practicalities than new ideas', 7);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (2, 'I particularly enjoy exploring different views and techniques', 2);

INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (3, 'I keep a watching eye on areas where difficulty may arise', 8);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (3, 'I explore ideas that may have a wider application than in the immediate task', 1);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (3, 'I like to weigh up a range of suggestions before choosing a solution', 5);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (3, 'I can co-ordinate and use productively other people’s abilities and talents', 3);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (3, 'I maintain a steady approach whatever the pressures', 7);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (3, 'I often produce a new approach to long continuing problems', 1);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (3, 'I am ready to make my personal views known in a forceful way if necessary', 4);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (3, 'I am ready to help whenever I can', 6);

INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (4, 'I am keen to see there is nothing vague about my task and objectives', 7);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (4, 'I am not reluctant to emphasise my own point of view in meetings', 4);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (4, 'I can work with all sorts of people provided that they have got something worthwhile to contribute', 3);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (4, 'I make a point of following up interesting ideas and/or people', 2);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (4, 'I can usually find the argument to refute unsound propositions', 5);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (4, 'I tend to see patterns where others would see items as unconnected', 1);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (4, 'Being busy gives me real satisfaction', 8);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (4, 'I have an interest in getting to know people better', 6);

INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (5, 'I often find my imagination frustrated by working in a group', 1);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (5, 'I find my personal skill particularly appropriate in achieving agreement', 6);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (5, 'My feelings seldom interfere with my judgement', 5);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (5, 'I strive to build up an effective structure', 7);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (5, 'I can work with people who vary widely in their personal qualities', 3);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (5, 'I feel it is sometimes worth incurring some temporary unpopularity if one is to succeed in getting one’s views across in a group', 4);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (5, 'I usually know someone whose specialist knowledge is particularly apt', 2);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (5, 'I seem to develop a natural sense of urgency', 8);

INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (6, 'I start to look around for possible ideas and openings', 2);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (6, 'I am concerned to finish and perfect current work before I start', 8);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (6, 'I approach the problem in a carefully analytical way', 5);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (6, 'I am able to assert myself to get other people involved if necessary', 3);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (6, 'I am able to take an independent and innovative look at most situations', 1);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (6, 'I am happy to take the lead when action is required', 4);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (6, 'I can respond positively to my colleagues and their initiatives', 6);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (6, 'I find it hard to give in a job where the goals are not clearly defined', 7);

INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (7, 'I think I have a talent for sorting out the concrete steps that need to be taken given a broad brief', 7);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (7, 'My considered judgement may take time but is usually near the mark', 5);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (7, 'A broad range of personal contacts is important to my style of working', 2);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (7, 'I have an eye for getting the details right', 8);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (7, 'I try to make my mark in group meetings', 4);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (7, 'I can see how ideas and techniques can be used in new relationships', 1);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (7, 'I see both sides of a problem and take a decision acceptable to all', 3);
INSERT INTO belbin_answer (question_id, answer, belbin_id) VALUES (7, 'I get on well with others and work hard for the team', 6);
---------------------------------------------------------------------------------------------------------

--------------------- ZODIAC ----------------------------------------------------------------------------
INSERT INTO zodiac (zodiac, [description], date_range, element, quality, color, [day], ruler, compatibility, lucky_numbers) 
VALUES (
	'Aquarius', 
	'Progressive, original, independent, humanitarian, runs from emotional expression, temperamental, uncompromising, aloof, fun with friends, helping others, fighting for causes, intellectual conversation, a good listener, Limitations, broken promises, being lonely, dull or boring situations, people who disagree with them. Aquarius-born are shy and quiet , but on the other hand they can be eccentric and energetic. However, in both cases, they are deep thinkers and highly intellectual people who love helping others. They are able to see without prejudice, on both sides, which makes them people who can easily solve problems. Although they can easily adapt to the energy that surrounds them, Aquarius-born have a deep need to be some time alone and away from everything, in order to restore power. People born under the Aquarius sign, look at the world as a place full of possibilities.', 
	'January 20 - February 18', 
	'Air',
	'Fixed', 
	'Light-Blue, Silver', 
	'Saturday', 
	'Uranus, Saturn',
	'Leo, Sagittarius', 
	'4, 7, 11, 22, 29'
);

INSERT INTO zodiac (zodiac, [description], date_range, element, quality, color, [day], ruler, compatibility, lucky_numbers) 
VALUES (
	'Pisces', 
	'Compassionate, artistic, intuitive, gentle, wise, musical, fearful, overly trusting, sad, desire to escape reality, can be a victim or a martyr, being alone, sleeping, music, romance, visual media, swimming, spiritual themes, know-it-all, being criticized, the past coming back to haunt, cruelty of any kind. Pisces are very friendly, so they often find themselves in a company of very different people. Pisces are selfless, they are always willing to help others, without hoping to get anything back. Pisces is a Water sign and as such this zodiac sign is characterized by empathy and expressed emotional capacity.', 
	'February 19 - March 20', 
	'Water',
	'Mutable',
	'Mauve, Lilac, Purple, Violet, Sea green', 
	'Thursday', 
	'Neptune, Jupiter', 
	'Virgo, Taurus',
	'3, 9, 12, 15, 18, 24'
);

INSERT INTO zodiac (zodiac, [description], date_range, element, quality, color, [day], ruler, compatibility, lucky_numbers) 
VALUES (
	'Aries', 
	'Courageous, determined, confident, enthusiastic, optimistic, honest, passionate, impatient, moody, short-tempered, impulsive, aggressive,  comfortable clothes, taking on leadership roles, physical challenges, individual sports, inactivity, delays, work that does not use one"s talents. As the first sign in the zodiac, the presence of Aries always marks the beginning of something energetic and turbulent. They are continuously looking for dynamic, speed and competition, always being the first in everything - from work to social gatherings. Thanks to its ruling planet Mars and the fact it belongs to the element of Fire (just like Leo and Sagittarius), Aries is one of the most active zodiac signs. It is in their nature to take action, sometimes before they think about it well.', 
	'March 21 - April 19', 
	'Fire',
	'Cardinal', 
	'Red', 
	'Tuesday', 
	'Mars',
	'Libra, Leo', 
	'1, 8, 17'
);

INSERT INTO zodiac (zodiac, [description], date_range, element, quality, color, [day], ruler, compatibility, lucky_numbers) 
VALUES (
	'Taurus', 
	'Reliable, patient, practical, devoted, responsible, stable, stubborn, possessive, uncompromising, gardening, cooking, music, romance, high quality clothes, working with hands, sudden changes, complications, insecurity of any kind, synthetic fabrics. Practical and well-grounded, Taurus is the sign that harvests the fruits of labor. They feel the need to always be surrounded by love and beauty, turned to the material world, hedonism, and physical pleasures. People born with their Sun in Taurus are sensual and tactile, considering touch and taste the most important of all senses. Stable and conservative, this is one of the most reliable signs of the zodiac, ready to endure and stick to their choices until they reach the point of personal satisfaction.', 
	'April 20 - May 20', 
	'Earth',
	'Fixed', 
	'Green, Pink', 
	'Friday, Monday', 
	'Venus',
	'Scorpio, Cancer', 
	'2, 6, 9, 12, 24'
);

INSERT INTO zodiac (zodiac, [description], date_range, element, quality, color, [day], ruler, compatibility, lucky_numbers) 
VALUES (
	'Gemini', 
	'Gentle, affectionate, curious, adaptable, ability to learn quickly and exchange ideas, nervous, inconsistent, indecisive, music, books, magazines, chats with nearly anyone, short trips around the town, being alone, being confined, repetition and routine. Expressive and quick-witted, Gemini represents two different personalities in one and you will never be sure which one you will face. They are sociable, communicative and ready for fun, with a tendency to suddenly get serious, thoughtful and restless. They are fascinated with the world itself, extremely curious, with a constant feeling that there is not enough time to experience everything they want to see.', 
	'May 21 - June 20', 
	'Air',
	'Mutable', 
	'Light-Green, Yellow', 
	'Wednesday', 
	'Mercury',
	'Sagittarius, Aquarius', 
	'5, 7, 14, 23'
);

INSERT INTO zodiac (zodiac, [description], date_range, element, quality, color, [day], ruler, compatibility, lucky_numbers) 
VALUES (
	'Cancer', 
	'Tenacious, highly imaginative, loyal, emotional, sympathetic, persuasive, moody, pessimistic, suspicious, manipulative, insecure, art, home-based hobbies, relaxing near or in water, helping loved ones, a good meal with friends, strangers, any criticism of Mom, revealing of personal life. Deeply intuitive and sentimental, Cancer can be one of the most challenging zodiac signs to get to know. They are very emotional and sensitive, and care deeply about matters of the family and their home. Cancer is sympathetic and attached to people they keep close. Those born with their Sun in Cancer are very loyal and able to empathize with other people"s pain and suffering.', 
	'June 21 - July 22', 
	'Water',
	'Cardinal', 
	'White', 
	'Monday, Thursday', 
	'Moon',
	'Capricorn, Taurus', 
	'2, 3, 15, 20'
);

INSERT INTO zodiac (zodiac, [description], date_range, element, quality, color, [day], ruler, compatibility, lucky_numbers) 
VALUES (
	'Leo', 
	'Creative, passionate, generous, warm-hearted, cheerful, humorous, arrogant, stubborn, self-centered, lazy, inflexible, theater, taking holidays, being admired, expensive things, bright colors, fun with friends, being ignored, facing difficult reality, not being treated like a king or queen. People born under the sign of Leo are natural born leaders. They are dramatic, creative, self-confident, dominant and extremely difficult to resist, able to achieve anything they want to in any area of life they commit to. There is a specific strength to a Leo and their "king of the jungle" status. Leo often has many friends for they are generous and loyal. Self-confident and attractive, this is a Sun sign capable of uniting different groups of people and leading them as one towards a shared cause, and their healthy sense of humor makes collaboration with other people even easier.', 
	'July 23 - August 22', 
	'Fire',
	'Fixed', 
	'Gold, Yellow, Orange', 
	'Sunday', 
	'Sun',
	'Aquarius, Gemini', 
	'1, 3, 10, 19'
);

INSERT INTO zodiac (zodiac, [description], date_range, element, quality, color, [day], ruler, compatibility, lucky_numbers) 
VALUES (
	'Virgo', 
	'Loyal, analytical, kind, hardworking, practical, shyness, worry, overly critical of self and others, all work and no play, animals, healthy food, books, nature, cleanliness, rudeness, asking for help, taking center stage. Virgos are always paying attention to the smallest details and their deep sense of humanity makes them one of the most careful signs of the zodiac. Their methodical approach to life ensures that nothing is left to chance, and although they are often tender, their heart might be closed for the outer world. This is a sign often misunderstood, not because they lack the ability to express, but because they won’t accept their feelings as valid, true, or even relevant when opposed to reason. The symbolism behind the name speaks well of their nature, born with a feeling they are experiencing everything for the first time.', 
	'August 23 - September 22', 
	'Earth',
	'Mutable', 
	'Grey, Beige, Pale-Yellow', 
	'Wednesday', 
	'Mercury',
	'Pisces, Cancer', 
	'5, 14, 15, 23, 32'
);

INSERT INTO zodiac (zodiac, [description], date_range, element, quality, color, [day], ruler, compatibility, lucky_numbers) 
VALUES (
	'Libra', 
	'Cooperative,diplomatic, gracious, fair-minded, social, indecisive, avoids confrontations, will carry a grudge, self-pity, harmony, gentleness, sharing with others, the outdoors, violence, injustice, loudmouths, conformity. People born under the sign of Libra are peaceful, fair, and they hate being alone. Partnership is very important for them, as their mirror and someone giving them the ability to be the mirror themselves. These individuals are fascinated by balance and symmetry, they are in a constant chase for justice and equality, realizing through life that the only thing that should be truly important to themselves in their own inner core of personality. This is someone ready to do nearly anything to avoid conflict, keeping the peace whenever possible', 
	'September 23 - October 22', 
	'Air',
	'Cardinal', 
	'Pink, Green', 
	'Friday', 
	'Venus',
	'Aries, Sagittarius', 
	'4, 6, 13, 15, 24'
);

INSERT INTO zodiac (zodiac, [description], date_range, element, quality, color, [day], ruler, compatibility, lucky_numbers) 
VALUES (
	'Scorpio', 
	'Resourceful, brave, passionate, stubborn, a true friend, distrusting, jealous, secretive, violent, truth, facts, being right, longtime friends, teasing, a grand passion, dishonesty, revealing secrets, passive people. Scorpio-born are passionate and assertive people. They are determined and decisive, and will research until they find out the truth. Scorpio is a great leader, always aware of the situation and also features prominently in resourcefulness. Scorpio is a Water sign and lives to experience and express emotions. Although emotions are very important for Scorpio, they manifest them differently than other water signs. In any case, you can be sure that the Scorpio will keep your secrets, whatever they may be.', 
	'October 23 - November 21', 
	'Water',
	'Fixed', 
	'Scarlet, Red, Rust', 
	'Tuesday', 
	'Pluto, Mars',
	'Taurus, Cancer', 
	'8, 11, 18, 22'
);

INSERT INTO zodiac (zodiac, [description], date_range, element, quality, color, [day], ruler, compatibility, lucky_numbers) 
VALUES (
	'Sagittarius', 
	'Generous, idealistic, great sense of humor, promises more than can deliver, very impatient, will say anything no matter how undiplomatic, freedom, travel, philosophy, being outdoors, lingy people, being constrained, off-the-wall theories, details. Curious and energetic, Sagittarius is one of the biggest travelers among all zodiac signs. Their open mind and philosophical view motivates them to wander around the world in search of the meaning of life. Sagittarius is extrovert, optimistic and enthusiastic, and likes changes. Sagittarius-born are able to transform their thoughts into concrete actions and they will do anything to achieve their goals.', 
	'November 22 - December 21', 
	'Fire',
	'Mutable', 
	'Blue', 
	'Thursday', 
	'Jupiter',
	'Gemini, Aries', 
	'3, 7, 9, 12, 21'
);

INSERT INTO zodiac (zodiac, [description], date_range, element, quality, color, [day], ruler, compatibility, lucky_numbers) 
VALUES (
	'Capricorn', 
	'Responsible, disciplined, self-control, good managers, know-it-all, unforgiving, condescending, expecting the worst, family, tradition, music, understated status, quality craftsmanship, almost everything at some point. Capricorn is a sign that represents time and responsibility, and its representatives are traditional and often very serious by nature. These individuals possess an inner state of independence that enables significant progress both in their personal and professional lives. They are masters of self-control and have the ability to lead the way, make solid and realistic plans, and manage many people who work for them at any time. They will learn from their mistakes and get to the top based solely on their experience and expertise.', 
	'December 22 - January 19', 
	'Earth',
	'Cardinal', 
	'Brown, Black', 
	'Saturday', 
	'Saturn',
	'Taurus, Cancer', 
	'4, 8, 13, 22'
);
---------------------------------------------------------------------------------------------------------

---------------------------- ZODIAC ASCENDENT -----------------------------------------------------------
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (1, 3, '9:19 - 10:19');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (1, 4, '10:19 - 11:48');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (1, 5, '11:48 - 13:42');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (1, 6, '13:42 - 15:59');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (1, 7, '15:59 - 18:34');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (1, 8, '18.34 - 21.14 ');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (1, 9, '21:14 - 23:56');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (1, 10, '23:56 - 2:34');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (1, 11, '2:34 - 4:59');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (1, 12, '4:59 - 6:49');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (1, 1, '6:49 - 8:16');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (1, 2, '8:16 - 9:19');

INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (2, 3, '7:20 - 8:20 ');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (2, 4, '8:20 - 9:49');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (2, 5, '9:49 - 11:43');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (2, 6, '11:43 - 14:00');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (2, 7, '14:00 - 16:35');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (2, 8, '16:35 - 19:15');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (2, 9, '19:15 - 21:57');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (2, 10, '21:57 - 0:35');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (2, 11, '0:35 - 3:00');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (2, 12, '3:00 - 4:50');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (2, 1, '4:50 - 6:17');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (2, 2, '6:17 - 7:20');

INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (3, 3, '5:23 - 6:23');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (3, 4, '6:23 - 7:52');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (3, 5, '7:52 - 9:46');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (3, 6, '9:46 - 12:13');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (3, 7, '12:13 - 14:41');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (3, 8, '14:41 - 17:18');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (3, 9, '17:18 - 20:00');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (3, 10, '20:00 - 22:38');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (3, 11, '22:38 - 1:08');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (3, 12, '1:08 - 2:53');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (3, 1, '2:53 - 4:17');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (3, 2, '4:17 - 5:23');

INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (4, 3, '3:20 - 4:20');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (4, 4, '4:20 - 5:49');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (4, 5, '5:49 - 7:43');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (4, 6, '7:43 - 10:00');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (4, 7, '10:00 - 12:38');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (4, 8, '12:38 - 15:40');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (4, 9, '15:40 - 17:53');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (4, 10, '17:53 - 20:35');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (4, 11, '20:35 - 23:00');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (4, 12, '23:00 - 0:50');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (4, 1, '0:50 - 2:17');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (4, 2, '2:17 - 3:20');

INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (5, 3, '1:48 - 2:48');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (5, 4, '2:48 - 4:17');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (5, 5, '4:17 - 6:11');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (5, 6, '6:11 - 8:28');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (5, 7, '8:28 - 11:03');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (5, 8, '11:03 - 13:43');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (5, 9, '13:43 - 16:25');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (5, 10, '16:25 - 19:03');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (5, 11, '19:03 - 21:28');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (5, 12, '21:28 - 23:18');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (5, 1, '23:18 - 0:45');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (5, 2, '0:45 - 1:48');

INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (6, 3, '23:12 - 0:12');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (6, 4, '0:12 - 1:41');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (6, 5, '1:41 - 3:35');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (6, 6, '3:35 - 5:52');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (6, 7, '5:52 - 8:27');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (6, 8, '8:27 - 11:07');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (6, 9, '11:07 - 13:49');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (6, 10, '13:49 - 16:27');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (6, 11, '16:27 - 18:52');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (6, 12, '18:52 - 20:40');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (6, 1, '20:40 - 22:09');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (6, 2, '22:09 - 23:12');

INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (7, 3, '21:09 - 22:09');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (7, 4, '22:09 - 23:38');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (7, 5, '23:38 - 1:32');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (7, 6, '1:32 - 3:49');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (7, 7, '3:49 - 6:42');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (7, 8, '6:42 - 9:04');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (7, 9, '9:04 - 11:42');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (7, 10, '11:42 - 14:24');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (7, 11, '14.24 - 16.49');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (7, 12, '16:49 - 17:39');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (7, 1, '17:39 - 20:07');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (7, 2, '20:07 - 21:09');

INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (8, 3, '19:07 - 20:07');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (8, 4, '20:07 - 21:36');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (8, 5, '21:36 - 23:30');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (8, 6, '23:30 - 1:47');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (8, 7, '1:47 - 4:22');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (8, 8, '4:22 - 7:02');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (8, 9, '7:02 - 9:44');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (8, 10, '9:44 - 12:22');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (8, 11, '12:22 - 15:47');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (8, 12, '15:47 - 16:37');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (8, 1, '16:37 - 18:04');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (8, 2, '18:04 - 19:07');

INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (9, 3, '17:05 - 18:05');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (9, 4, '18:05 - 19:34');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (9, 5, '19:34 - 21:28');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (9, 6, '21:28 - 23:35');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (9, 7, '23:35 - 2:20');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (9, 8, '2:20 - 5:00');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (9, 9, '5:00 - 7:42');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (9, 10, '7:42 - 10:20');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (9, 11, '10:20 - 12:35');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (9, 12, '12:35 - 13:35');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (9, 1, '13:35 - 16:02');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (9, 2, '16:02 - 17:05');

INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (10, 3, '15:07 - 16:07');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (10, 4, '16:07 - 17:36');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (10, 5, '17:36 - 19:30');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (10, 6, '19:30 - 21:47');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (10, 7, '21:47 - 0:22');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (10, 8, '0:22 - 3:02');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (10, 9, '3:02 - 5:44');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (10, 10, '5:44 - 8:22');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (10, 11, '8:22 - 10:47');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (10, 12, '10:47 - 11:37');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (10, 1, '11.37 - 14.02');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (10, 2, '14:02 - 15:07');

INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (11, 3, '13:08 - 14:08');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (11, 4, '14:08 - 15:37');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (11, 5, '15:37 - 17:31');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (11, 6, '17:31 - 19:48');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (11, 7, '19:48 - 22:23');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (11, 8, '22:23 - 1:03');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (11, 9, '1:03 - 3:45');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (11, 10, '3:45 - 6:23');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (11, 11, '6:23 - 8:48');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (11, 12, '8:48 - 10:38');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (11, 1, '10:38 - 12:05');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (11, 2, '12:05 - 13:08');

INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (12, 3, '11:13 - 12:13');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (12, 4, '12:13 - 13:42');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (12, 5, '13:42 - 15:36');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (12, 6, '15:36 - 17:53');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (12, 7, '17:53 - 20:28');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (12, 8, '20:28 - 23:08');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (12, 9, '23:08 - 1:50');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (12, 10, '1:50 - 4:28');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (12, 11, '4:28 - 6:53');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (12, 12, '6:53 - 8:43');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (12, 1, '8:43 - 10:10');
INSERT INTO zodiac_ascendant (zodiac, ascendant, time_range) VALUES (12, 2, '10:10 - 11:13');
--------------------------------------------------------------------------------------------------------

------------------------------ NUMEROLOGY --------------------------------------------------------------
INSERT INTO numerology (day_of_month, [description]) VALUES (1, 'A determined leader in the truest sense, and can gain the support and trust of others easily, even when his highly independent self would rather work alone.');
INSERT INTO numerology (day_of_month, [description]) VALUES (2, 'Very sensitive and diplomatic, and his warm demeanor is a strength when dealing with or mediating others. His intuition is strong, tapping him into the inner thoughts of those around him.');
INSERT INTO numerology (day_of_month, [description]) VALUES (3, 'Whether he has worked at it or not, he has a highly-developed creative talent and is a natural-born artist. His affectionate demeanor and wit make 3s a social star.');
INSERT INTO numerology (day_of_month, [description]) VALUES (4, '4s are every employer"s dream: a hard working, detail-oriented individual with high principles. And still, he maintains a sense of compassion for others and a love of close family.');
INSERT INTO numerology (day_of_month, [description]) VALUES (5, '5s are lusty ... wanderlusty, that is. His eccentric self loves a change of scene and craves travel and adventure. He is highly adaptable and communicative, and relate well to others.');
INSERT INTO numerology (day_of_month, [description]) VALUES (6, '6s are a generous family person, a kind soul with a strong skill in keeping the peace. He is able to resolve unrest between loved ones by easily finding the best middle ground.');
INSERT INTO numerology (day_of_month, [description]) VALUES (7, '7s mind is its greatest asset. He enjoys contemplating on any topic, from the scientific to the spiritual, and have a great sense of focus. He takes nothing at face value, and can rely on his strong intuition to find truths that are hidden to others.');
INSERT INTO numerology (day_of_month, [description]) VALUES (8, 'He is an "ideas person" when it comes to dreaming up new ventures, and he backs this with a creative approach to business and money matters. 8s are efficient, realistic and confident in its skills, always up for a challenge.');
INSERT INTO numerology (day_of_month, [description]) VALUES (9, 'His open mind, relentless optimism and compassion for his fellow man makes him true humanitarian. He is charming and well-liked by others, and find it easy to relate to others, regardless of their differences.');
INSERT INTO numerology (day_of_month, [description]) VALUES (10, '10s are highly ambitious and (no surprise!) yearn for independence so that he can follow his dreams however he sees fit. His drive for success is strong, and he can rely on his analytical mind and solid managerial skills.');
INSERT INTO numerology (day_of_month, [description]) VALUES (11, 'He is an optimist, but not naive: his rose-colored view of the world is matched with a strong sense of confidence and determination. He is a dreamer, and his intuition is highly refined, helping him to reach an understanding of others.');
INSERT INTO numerology (day_of_month, [description]) VALUES (12, '12s are a true artist, bringing creativity to everything from your home and style to the way he express himself. His enthusiastic nature, imagination and wit makes him the light of his social circle.');
INSERT INTO numerology (day_of_month, [description]) VALUES (13, 'He is "the rock" in his family and community, and dependable above all else. He is organized and detail-oriented, using these skills in everything from nose-to-the-grindstone work to artistic endeavors.');
INSERT INTO numerology (day_of_month, [description]) VALUES (14, 'Hello, globetrotter! His restless nature flocks toward the unexpected twists and turns of travel and variety. While he possesses an analytical mind, on the outside he is a very social, communicative and lucky person.');
INSERT INTO numerology (day_of_month, [description]) VALUES (15, 'His creative spirit pushes him toward artistic expression. While he possess strong instincts in business and financial matters, his sensitivity and range of talents makes him accessible to those around him.');
INSERT INTO numerology (day_of_month, [description]) VALUES (16, 'Never quite at home in the "real world," he loves to concentrate his focus on big ideas. His interests lie in the spiritual and philosophical realms of life, and his intuition is excellent.');
INSERT INTO numerology (day_of_month, [description]) VALUES (17, 'His lofty ambitions and towering goals are balanced out by his grounding skills in finances and business. His judgment is practical and efficient and his confidence level is high, motivating him to meet the expectations of others, and himself.');
INSERT INTO numerology (day_of_month, [description]) VALUES (18, 'Not only he is a natural leader, but his leadership also inspires others. He has a keen understanding of other people, and could be an efficient manager or politician. He is broadminded and able to express himself well.');
INSERT INTO numerology (day_of_month, [description]) VALUES (19, 'He is highly ambitious, and thrive on independence. His pioneering, risk-taking nature is balanced with creativity and sensitivity to help him succeed in a wide variety of endeavors.');
INSERT INTO numerology (day_of_month, [description]) VALUES (20, 'He is like a mood ring, reflecting the emotions, desires and fears of the people who surround himself. His intuition and sensitivity are strong, and he must fight to keep a healthy distance from others.');
INSERT INTO numerology (day_of_month, [description]) VALUES (21, 'His creative visions and unique ideas are propelled by his determination to succeed. His imagination is the driving force behind nearly everything he does, and his passionate nature is reflected in his love of other people.');
INSERT INTO numerology (day_of_month, [description]) VALUES (22, 'He has a strong professional drive and flock toward innovative business rather than supporting the status quo. His greatest strength is in his unusually dualistic perception: he is able to envision what he wants and actually makes his desires materialize.');
INSERT INTO numerology (day_of_month, [description]) VALUES (23, '23s love changes, excitement and risk, and thankfully, he is quite adaptable and easy to get along with. His skills in affection and communication are strong, and his creative, versatile mind loves the experience of something new.');
INSERT INTO numerology (day_of_month, [description]) VALUES (24, 'He is family-oriented, with a gift for restoring and maintaining balance, peace and harmony in relationships. He is an emotional soul who is willing to sacrifice for the good of others. His strongest skills lie in healing and mediation.');
INSERT INTO numerology (day_of_month, [description]) VALUES (25, 'His rational, analytical mind is balanced with a strong intuition, giving him the gift of broad knowledge and understanding to help him makes the best decisions.');
INSERT INTO numerology (day_of_month, [description]) VALUES (26, 'His strong sense of business and financial affairs is supported by a creative, daring mindset, making him a confident and capable professional leader. He just don"t want to lose sight of the details within the bigger picture.');
INSERT INTO numerology (day_of_month, [description]) VALUES (27, 'He makes an efficient manager, capable of organizing the facts and inspiring others. His knack for creativity and expression, paired with a strong understanding of others, helps him excel in such diverse fields as politics, art and law.');
INSERT INTO numerology (day_of_month, [description]) VALUES (28, 'He has a gentle air of authority about him, but feels most comfortable leading others when there"s a sense of cooperation and teamwork. While his mind is rational, his thinking is unconventional and idealistic.');
INSERT INTO numerology (day_of_month, [description]) VALUES (29, 'He has a rich imagination and a visual approach to every area of his life. His intuition is his greatest asset, and his connection to higher spiritual forces is strong.');
INSERT INTO numerology (day_of_month, [description]) VALUES (30, 'He is an artist to his very core. He is a sociable person, and others perceive him as a charming and inspiring individual. While he seeks harmony in all that he does, he must always remind himself to balance his imagination with a sense of discipline.');
INSERT INTO numerology (day_of_month, [description]) VALUES (31, 'His love of family and tradition makes him a solid foundation amongst loved ones. He draws appreciation and support from co-workers because of his affinity toward order, discipline and details. He is urged to make the most of the many opportunities he will encounter.');
--------------------------------------------------------------------------------------------------------

----------------------------- MBTI QUESTION ------------------------------------------------------------
INSERT INTO mbti_question (question) VALUES ('At a party do you');
INSERT INTO mbti_question (question) VALUES ('Are you more');
INSERT INTO mbti_question (question) VALUES ('Is it worse to');
INSERT INTO mbti_question (question) VALUES ('Are you more impressed by');
INSERT INTO mbti_question (question) VALUES ('Are more drawn toward the');
INSERT INTO mbti_question (question) VALUES ('Do you prefer to work');
INSERT INTO mbti_question (question) VALUES ('Do you tend to choose');
INSERT INTO mbti_question (question) VALUES ('At parties do you');
INSERT INTO mbti_question (question) VALUES ('Are you more attracted to');
INSERT INTO mbti_question (question) VALUES ('Are you more interested in');

INSERT INTO mbti_question (question) VALUES ('In judging others are you more swayed by');
INSERT INTO mbti_question (question) VALUES ('In approaching others is your inclination to be somewhat');
INSERT INTO mbti_question (question) VALUES ('Are you more');
INSERT INTO mbti_question (question) VALUES ('Does it bother you more having things');
INSERT INTO mbti_question (question) VALUES ('In your social groups do you');
INSERT INTO mbti_question (question) VALUES ('In doing ordinary things are you more likely to');
INSERT INTO mbti_question (question) VALUES ('Writers should');
INSERT INTO mbti_question (question) VALUES ('Which appeals to you more');
INSERT INTO mbti_question (question) VALUES ('Are you more comfortable in making');
INSERT INTO mbti_question (question) VALUES ('Do you want things');

INSERT INTO mbti_question (question) VALUES ('Would you say you are more');
INSERT INTO mbti_question (question) VALUES ('In phoning do you');
INSERT INTO mbti_question (question) VALUES ('Facts');
INSERT INTO mbti_question (question) VALUES ('Are visionaries');
INSERT INTO mbti_question (question) VALUES ('Are you more often');
INSERT INTO mbti_question (question) VALUES ('Is it worse to be');
INSERT INTO mbti_question (question) VALUES ('Should one usually let events occur');
INSERT INTO mbti_question (question) VALUES ('Do you feel better about');
INSERT INTO mbti_question (question) VALUES ('In company do you');
INSERT INTO mbti_question (question) VALUES ('Common sense is');

INSERT INTO mbti_question (question) VALUES ('Children often do not');
INSERT INTO mbti_question (question) VALUES ('In making decisions do you feel more comfortable with');
INSERT INTO mbti_question (question) VALUES ('Are you more');
INSERT INTO mbti_question (question) VALUES ('Which is more admirable');
INSERT INTO mbti_question (question) VALUES ('Do you put more value on');
INSERT INTO mbti_question (question) VALUES ('Does new and non-routine interaction with others');
INSERT INTO mbti_question (question) VALUES ('Are you more frequently');
INSERT INTO mbti_question (question) VALUES ('Are you more likely to');
INSERT INTO mbti_question (question) VALUES ('Which is more satisfying');
INSERT INTO mbti_question (question) VALUES ('Which rules you more');

INSERT INTO mbti_question (question) VALUES ('Are you more comfortable with work that is');
INSERT INTO mbti_question (question) VALUES ('Do you tend to look for');
INSERT INTO mbti_question (question) VALUES ('Do you prefer');
INSERT INTO mbti_question (question) VALUES ('Do you go more by');
INSERT INTO mbti_question (question) VALUES ('Are you more interested in');
INSERT INTO mbti_question (question) VALUES ('Which is more of a compliment');
INSERT INTO mbti_question (question) VALUES ('Do you value in yourself more that you are');
INSERT INTO mbti_question (question) VALUES ('Do you more often prefer the');
INSERT INTO mbti_question (question) VALUES ('Are you more comfortable');
INSERT INTO mbti_question (question) VALUES ('Do you');

INSERT INTO mbti_question (question) VALUES ('Are you more likely to trust your');
INSERT INTO mbti_question (question) VALUES ('Do you feel');
INSERT INTO mbti_question (question) VALUES ('Which person is more to be complimented – one of');
INSERT INTO mbti_question (question) VALUES ('Are you inclined more to be');
INSERT INTO mbti_question (question) VALUES ('Is it preferable mostly to');
INSERT INTO mbti_question (question) VALUES ('In relationships should most things be');
INSERT INTO mbti_question (question) VALUES ('When the phone rings do you');
INSERT INTO mbti_question (question) VALUES ('Do you prize more in yourself');
INSERT INTO mbti_question (question) VALUES ('Are you drawn more to');
INSERT INTO mbti_question (question) VALUES ('Which seems the greater error');

INSERT INTO mbti_question (question) VALUES ('Do you see yourself as basically');
INSERT INTO mbti_question (question) VALUES ('Which situation appeals to you more');
INSERT INTO mbti_question (question) VALUES ('Are you a person that is more');
INSERT INTO mbti_question (question) VALUES ('Are you more inclined to be');
INSERT INTO mbti_question (question) VALUES ('In writings do you prefer');
INSERT INTO mbti_question (question) VALUES ('Is it harder for you to');
INSERT INTO mbti_question (question) VALUES ('Which do you wish more for yourself');
INSERT INTO mbti_question (question) VALUES ('Which is the greater fault');
INSERT INTO mbti_question (question) VALUES ('Do you prefer the');
INSERT INTO mbti_question (question) VALUES ('Do you tend to be more');
--------------------------------------------------------------------------------------------------------

-------------------------------------- MBTI ANSWER -----------------------------------------------------
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (1, 'Interact with many, including strangers', 'E');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (1, 'Interact with a few, known to you', 'I');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (2, 'Realistic than speculative', 'S');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (2, 'Speculative than realistic', 'N');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (3, 'Have your “head in the clouds"', 'S');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (3, 'Be “in a rut”', 'N');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (4, 'Principles', 'T');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (4, 'Emotions', 'F');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (5, 'Convincing', 'T');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (5, 'Touching', 'F');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (6, 'To deadlines', 'J');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (6, ' Just “whenever”', 'P');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (7, 'Rather carefully', 'J');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (7, 'Somewhat impulsively ', 'P');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (8, 'Stay late, with increasing energy', 'E');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (8, 'Leave early with decreased energy', 'I');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (9, 'Sensible people', 'S');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (9, 'Imaginative people', 'N');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (10, 'What is actual', 'S');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (10, 'What is possible', 'N');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (11, 'Laws than circumstances', 'T');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (11, 'Circumstances than laws', 'F');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (12, 'Objective', 'T');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (12, 'Personal', 'F');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (13, 'Punctual', 'J');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (13, 'Leisurely', 'P');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (14, 'Incomplete', 'J');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (14, 'Completed', 'P');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (15, 'Keep abreast of other’s happenings', 'E');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (15, 'Get behind on the news', 'I');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (16, 'Do it the usual way', 'S');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (16, 'Do it your own way', 'N');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (17, '“Say what they mean and mean what they say”', 'S');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (17, 'Express things more by use of analogy', 'N');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (18, 'Consistency of thought', 'T');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (18, 'Harmonious human relationships', 'F');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (19, 'Logical judgments', 'T');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (19, 'Value judgments', 'F');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (20, 'Settled and decided', 'J');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (20, 'Unsettled and undecided', 'P');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (21, 'Serious and determined', 'J');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (21, 'Easy-going', 'P');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (22, 'Rarely question that it will all be said', 'E');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (22, 'Rehearse what you’ll say', 'I');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (23, '“Speak for themselves” ', 'S');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (23, 'Illustrate principles', 'N');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (24, 'somewhat annoying', 'S');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (24, 'rather fascinating', 'N');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (25, 'a cool-headed person', 'T');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (25, 'a warm-hearted person', 'F');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (26, 'unjust', 'T');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (26, 'merciless', 'F');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (27, 'by careful selection and choice', 'J');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (27, 'randomly and by chance', 'P');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (28, 'having purchased', 'J');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (28, 'having the option to buy', 'P');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (29, 'initiate conversation', 'E');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (29, 'wait to be approached', 'I');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (30, 'rarely questionable', 'S');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (30, 'frequently questionable', 'N');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (31, 'make themselves useful enough', 'S');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (31, 'exercise their fantasy enough', 'N');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (32, 'standards', 'T');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (32, 'feelings', 'F');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (33, 'firm than gentle', 'T');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (33, 'gentle than firm', 'F');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (34, 'the ability to organize and be methodical', 'J');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (34, 'the ability to adapt and make do', 'P');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (35, 'infinite', 'J');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (35, 'open-minded', 'P');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (36, 'stimulate and energize you', 'E');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (36, 'tax your reserves', 'I');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (37, 'a practical sort of person', 'S');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (37, 'a fanciful sort of person', 'N');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (38, 'see how others are useful', 'S');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (38, 'see how others see', 'N');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (39, 'to discuss an issue thoroughly', 'T');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (39, 'to arrive at agreement on an issue', 'F');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (40, 'your head', 'T');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (40, 'your heart', 'F');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (41, 'contracted', 'J');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (41, 'done on a casual basis', 'P');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (42, 'the orderly', 'J');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (42, 'whatever turns up', 'P');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (43, 'many friends with brief contact', 'E');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (43, 'a few friends with more lengthy contact', 'I');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (44, 'facts', 'S');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (44, 'principles', 'N');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (45, 'production and distribution', 'S');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (45, 'design and research', 'N');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (46, '“There is a very logical person”', 'T');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (46, '“There is a very sentimental person”', 'F');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (47, 'unwavering', 'T');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (47, 'devoted', 'F');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (48, 'final and unalterable statement', 'J');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (48, 'tentative and preliminary statement', 'P');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (49, 'after a decision', 'J');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (49, 'before a decision', 'P');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (50, 'speak easily and at length with strangers', 'E');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (50, 'find little to say to strangers', 'I');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (51, 'experience', 'S');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (51, 'hunch', 'N');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (52, 'more practical than ingenious', 'S');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (52, 'more ingenious than practical', 'N');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (53, 'clear reason', 'T');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (53, 'strong feeling', 'F');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (54, 'fair-minded', 'T');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (54, 'sympathetic', 'F');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (55, 'make sure things are arranged', 'J');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (55, 'just let things happen', 'P');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (56, 're-negotiable', 'J');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (56, 'random and circumstantial', 'O');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (57, 'hasten to get to it first', 'E');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (57, 'hope someone else will answer', 'I');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (58, 'a strong sense of reality', 'S');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (58, 'a vivid imagination', 'N');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (59, 'fundamentals', 'S');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (59, 'overtones', 'N');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (60, 'to be too passionate', 'T');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (60, 'to be too objective', 'F');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (61, 'hard-headed', 'T');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (61, 'soft-hearted', 'F');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (62, 'the structured and scheduled', 'J');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (62, 'the unstructured and unscheduled', 'P');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (63, 'routinized than whimsical', 'J');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (63, 'whimsical than routinized', 'P');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (64, 'easy to approach', 'E');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (64, 'somewhat reserved', 'I');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (65, 'the more literal', 'S');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (65, 'the more figurative', 'N');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (66, 'identify with others', 'S');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (66, 'utilize others', 'N');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (67, 'clarity of reason', 'T');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (67, 'strength of compassion', 'F');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (68, 'being indiscriminate', 'T');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (68, 'being critical', 'F');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (69, 'planned event', 'J');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (69, 'unplanned event', 'P');

INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (70, 'deliberate than spontaneous', 'J');
INSERT INTO mbti_answer (question_id, answer, mbti_type) VALUES (70, 'spontaneous than deliberate', 'P');
--------------------------------------------------------------------------------------------------------

------------------- MBTI -------------------------------------------------------------------------------
INSERT INTO mbti (code, [description]) VALUES ('ISTJ', 'Quiet, serious, earn success by thoroughness and dependability. Practical, matter-of-fact, realistic, and responsible. Decide logically what should be done and work toward it steadily, regardless of distractions. Take pleasure in making everything orderly and organized - their work, their home, their life. Value traditions and loyalty.');
INSERT INTO mbti (code, [description]) VALUES ('ISFJ', 'Quiet, friendly, responsible, and conscientious. Committed and steady in meeting their obligations. Thorough, painstaking, and accurate. Loyal, considerate, notice and remember specifics about people who are important to them, concerned with how others feel. Strive to create an orderly and harmonious environment at work and at home.');
INSERT INTO mbti (code, [description]) VALUES ('INFJ', 'Seek meaning and connection in ideas, relationships, and material possessions. Want to understand what motivates people and are insightful about others. Conscientious and committed to their firm values. Develop a clear vision about how best to serve the common good. Organized and decisive in implementing their vision.');
INSERT INTO mbti (code, [description]) VALUES ('INTJ', 'Have original minds and great drive for implementing their ideas and achieving their goals. Quickly see patterns in external events and develop long-range explanatory perspectives. When committed, organize a job and carry it through. Skeptical and independent, have high standards of competence and performance - for themselves and others.');
INSERT INTO mbti (code, [description]) VALUES ('ISTP', 'Tolerant and flexible, quiet observers until a problem appears, then act quickly to find workable solutions. Analyze what makes things work and readily get through large amounts of data to isolate the core of practical problems. Interested in cause and effect, organize facts using logical principles, value efficiency.');
INSERT INTO mbti (code, [description]) VALUES ('ISFP', 'Quiet, friendly, sensitive, and kind. Enjoy the present moment, what"s going on around them. Like to have their own space and to work within their own time frame. Loyal and committed to their values and to people who are important to them. Dislike disagreements and conflicts, do not force their opinions or values on others.');
INSERT INTO mbti (code, [description]) VALUES ('INFP', 'Idealistic, loyal to their values and to people who are important to them. Want an external life that is congruent with their values. Curious, quick to see possibilities, can be catalysts for implementing ideas. Seek to understand people and to help them fulfill their potential. Adaptable, flexible, and accepting unless a value is threatened.');
INSERT INTO mbti (code, [description]) VALUES ('INTP', 'Seek to develop logical explanations for everything that interests them. Theoretical and abstract, interested more in ideas than in social interaction. Quiet, contained, flexible, and adaptable. Have unusual ability to focus in depth to solve problems in their area of interest. Skeptical, sometimes critical, always analytical.');
INSERT INTO mbti (code, [description]) VALUES ('ESTP', 'Flexible and tolerant, they take a pragmatic approach focused on immediate results. Theories and conceptual explanations bore them - they want to act energetically to solve the problem. Focus on the here-and-now, spontaneous, enjoy each moment that they can be active with others. Enjoy material comforts and style. Learn best through doing.');
INSERT INTO mbti (code, [description]) VALUES ('ESFP', 'Outgoing, friendly, and accepting. Exuberant lovers of life, people, and material comforts. Enjoy working with others to make things happen. Bring common sense and a realistic approach to their work, and make work fun. Flexible and spontaneous, adapt readily to new people and environments. Learn best by trying a new skill with other people.');
INSERT INTO mbti (code, [description]) VALUES ('ENFP', 'Warmly enthusiastic and imaginative. See life as full of possibilities. Make connections between events and information very quickly, and confidently proceed based on the patterns they see. Want a lot of affirmation from others, and readily give appreciation and support. Spontaneous and flexible, often rely on their ability to improvise and their verbal fluency.');
INSERT INTO mbti (code, [description]) VALUES ('ENTP', 'Quick, ingenious, stimulating, alert, and outspoken. Resourceful in solving new and challenging problems. Adept at generating conceptual possibilities and then analyzing them strategically. Good at reading other people. Bored by routine, will seldom do the same thing the same way, apt to turn to one new interest after another.');
INSERT INTO mbti (code, [description]) VALUES ('ESTJ', 'Practical, realistic, matter-of-fact. Decisive, quickly move to implement decisions. Organize projects and people to get things done, focus on getting results in the most efficient way possible. Take care of routine details. Have a clear set of logical standards, systematically follow them and want others to also. Forceful in implementing their plans.');
INSERT INTO mbti (code, [description]) VALUES ('ESFJ', 'Warmhearted, conscientious, and cooperative. Want harmony in their environment, work with determination to establish it. Like to work with others to complete tasks accurately and on time. Loyal, follow through even in small matters. Notice what others need in their day-by-day lives and try to provide it. Want to be appreciated for who they are and for what they contribute.');
INSERT INTO mbti (code, [description]) VALUES ('ENFJ', 'Warm, empathetic, responsive, and responsible. Highly attuned to the emotions, needs, and motivations of others. Find potential in everyone, want to help others fulfill their potential. May act as catalysts for individual and group growth. Loyal, responsive to praise and criticism. Sociable, facilitate others in a group, and provide inspiring leadership.');
INSERT INTO mbti (code, [description]) VALUES ('ENTJ', 'Frank, decisive, assume leadership readily. Quickly see illogical and inefficient procedures and policies, develop and implement comprehensive systems to solve organizational problems. Enjoy long-term planning and goal setting. Usually well informed, well read, enjoy expanding their knowledge and passing it on to others. Forceful in presenting their ideas.');
--------------------------------------------------------------------------------------------------------


------------- ENEAGRAM QUESTIONS -----------------------------------------------------------------------
INSERT INTO enneagram_question (question) VALUES ('1');
INSERT INTO enneagram_question (question) VALUES ('2');
INSERT INTO enneagram_question (question) VALUES ('3');
INSERT INTO enneagram_question (question) VALUES ('4');
INSERT INTO enneagram_question (question) VALUES ('5');
INSERT INTO enneagram_question (question) VALUES ('6');
INSERT INTO enneagram_question (question) VALUES ('7');
INSERT INTO enneagram_question (question) VALUES ('8');
INSERT INTO enneagram_question (question) VALUES ('9');
INSERT INTO enneagram_question (question) VALUES ('10');
INSERT INTO enneagram_question (question) VALUES ('11');
INSERT INTO enneagram_question (question) VALUES ('12');
INSERT INTO enneagram_question (question) VALUES ('13');
INSERT INTO enneagram_question (question) VALUES ('14');
INSERT INTO enneagram_question (question) VALUES ('15');
INSERT INTO enneagram_question (question) VALUES ('16');
INSERT INTO enneagram_question (question) VALUES ('17');
INSERT INTO enneagram_question (question) VALUES ('18');
INSERT INTO enneagram_question (question) VALUES ('19');
INSERT INTO enneagram_question (question) VALUES ('20');
INSERT INTO enneagram_question (question) VALUES ('21');
INSERT INTO enneagram_question (question) VALUES ('22');
INSERT INTO enneagram_question (question) VALUES ('23');
INSERT INTO enneagram_question (question) VALUES ('24');
INSERT INTO enneagram_question (question) VALUES ('25');
INSERT INTO enneagram_question (question) VALUES ('26');
INSERT INTO enneagram_question (question) VALUES ('27');
INSERT INTO enneagram_question (question) VALUES ('28');
INSERT INTO enneagram_question (question) VALUES ('29');
INSERT INTO enneagram_question (question) VALUES ('30');
INSERT INTO enneagram_question (question) VALUES ('31');
INSERT INTO enneagram_question (question) VALUES ('32');
INSERT INTO enneagram_question (question) VALUES ('33');
INSERT INTO enneagram_question (question) VALUES ('34');
INSERT INTO enneagram_question (question) VALUES ('35');
INSERT INTO enneagram_question (question) VALUES ('36');
--------------------------------------------------------------------------------------------------------

----------------------- ENEAGRAM ANSWERS ---------------------------------------------------------------
INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (1, 'I"ve been romantic and imaginative', 2);
INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (1, 'I"ve been pragmatic and down to earth', 6);

INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (2, 'I have tended to take on confrontations', 8);
INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (2, 'I have tended avoid confrontations', 9);

INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (3, 'I have typically been diplomatic, charming, and ambitious', 3);
INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (3, 'I have typically been direct, formal, and idealistic', 1);

INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (4, 'I have tended to be focused and intense', 5);
INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (4, 'I have tended to be spontaneous and fun-loving', 7);

INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (5, 'I have been a hospitable person and have enjoyed welcoming new friends into my life', 2);
INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (5, 'I have been a private person and have not mixed much with others', 4);

INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (6, 'Generally, it"s been easy to "get a rise" out of me', 6);
INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (6, 'Generally, it"s been difficult to "get a rise" out of me', 9);

INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (7, 'I"ve been more of a "street-smart" survivor', 8);
INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (7, 'I"ve been more of a "high-minded" idealist ', 1);

INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (8, 'I have needed to show affection to people', 2);
INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (8, 'I have preferred to maintain a certain distance with people', 5);

INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (9, 'When presented with a new experience, I"ve usually asked myself if it would be useful to me', 3);
INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (9, 'When presented with a new experience, I"ve usually asked myself if it would be enjoyable', 7);

INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (10, 'I have tended to focus too much on myself', 4);
INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (10, 'I have tended to focus too much on others', 9);

INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (11, 'Others have depended on my insight and knowledge', 5);
INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (11, 'Others have depended on my strength and decisiveness', 8);

INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (12, 'I have come across as being too unsure of myself', 6);
INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (12, 'I have come across as being too sure of myself', 1);

INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (13, 'I have been more relationship-oriented than goal-oriented', 2);
INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (13, 'I have been more goal-oriented than relationship-oriented', 3);

INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (14, 'I have not been able to speak up for myself very well', 4);
INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (14, 'I have been outspoken - I"ve said what others wished they had the nerve to say', 7);

INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (15, 'It"s been difficult for me to stop considering alternatives and do something definite', 5);
INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (15, 'It"s been difficult for me to take it easy and be more flexible.', 1);

INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (16, 'I have tended to be hesitant and procrastinating', 6);
INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (16, 'I have tended to be bold and domineering', 8);

INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (17, 'My reluctance to get too involved has gotten me into trouble with people', 9);
INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (17, 'My eagerness to have people depend on me has gotten me into trouble with them', 2);

INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (18, 'Usually, I have been able to put my feelings aside to get the job done', 3);
INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (18, 'Usually, I have needed to work through my feelings before I could act', 4);

INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (19, 'Generally, I have been methodical and cautious', 6);
INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (19, 'Generally, I have been adventurous and taken risks', 7);

INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (20, 'I have tended to be a supportive, giving person who enjoys the company of others', 2);
INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (20, 'I have tended to be a serious, reserved person who likes discussing issues', 1);

INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (21, 'I"ve often felt the need to be a "pillar of strength."', 8);
INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (21, 'I"ve often felt the need to perform perfectly', 3);

INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (22, 'I"ve typically been interested in asking tough questions and maintaining my independence', 5);
INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (22, 'I"ve typically been interested in maintaining my stability and peace of mind', 9);

INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (23, 'I"ve been too hard-nosed and sceptical', 6);
INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (23, 'I"ve been too soft-hearted and sentimental', 2);

INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (24, 'I"ve often worried that I"m missing out on something better', 7);
INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (24, 'I"ve often worried that if I let down my guard, someone will take advantage of me', 8);

INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (25, 'My habit of being "stand-offish" has annoyed people', 4);
INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (25, 'My habit of telling people what to do has annoyed people', 1);

INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (26, 'Usually, when troubles have gotten to me, I have been able to "tune them out', 9);
INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (26, 'Usually, when troubles have gotten to me, I have treated myself to something I"ve enjoyed', 7);

INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (27, 'I have depended upon my friends and they have known that they can depend on me', 6);
INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (27, 'I have not depended on people; I have done things on my own', 3);

INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (28, 'I have tended to be detached and preoccupied', 5);
INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (28, 'I have tended to be moody and self-absorbed', 4);

INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (29, 'I have liked to challenge people and "shake them up." ', 8);
INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (29, 'I have liked to comfort people and calm them down', 2);

INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (30, 'I have generally been an outgoing, sociable person', 7);
INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (30, 'I have generally been an earnest, self-disciplined person', 1);

INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (31, 'I"ve usually been shy about showing my abilities', 9);
INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (31, 'I"ve usually liked to let people know what I can do well', 3);

INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (32, 'Pursuing my personal interests has been more important to me than having comfort and security', 5);
INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (32, 'Having comfort and security has been more important to me than pursuing my personal interests', 6);

INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (33, 'When I"ve had conflict with others, I"ve tended to withdraw', 4);
INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (33, 'When I"ve had conflict with others, I"ve rarely backed down', 8);

INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (34, 'I have given in too easily and let others push me around', 9);
INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (34, 'I have been too uncompromising and demanding with others', 1);

INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (35, 'I"ve been appreciated for my unsinkable spirit and great sense of humour', 7);
INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (35, 'I"ve been appreciated for my quiet strength and exceptional generosite', 2);

INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (36, 'Much of my success has been due to my talent for making a favourable impression', 3);
INSERT INTO enneagram_answer (question_id, answer, eneagram_type) VALUES (36, 'Much of my success has been achieved despite my lack of interest in developing "interpersonal skills." ', 5);
--------------------------------------------------------------------------------------------------------

---------------------- ENNEAGRAM -----------------------------------------------------------------------
INSERT INTO enneagram ([name], [description]) VALUES ('The Reformer', ' The rational, idealistic type. Ones are conscientious and ethical, with a strong sense of right and wrong. They are teachers, crusaders, and advocates for change: always striving to improve things, but afraid of making a mistake. Wellorganized, orderly, and fastidious, they try to maintain high standards, but can slip into being critical and perfectionistic. They typically have problems with resentment and impatience. At their Best: wise, discerning, realistic, and noble. Can be morally heroic');
INSERT INTO enneagram ([name], [description]) VALUES ('The Helper', 'The caring, interpersonal type. Twos are empathetic, sincere, and warm-hearted. They are friendly, generous, and self-sacrificing, but can also be sentimental, flattering, and people-pleasing. They are well-meaning and driven to be close to others, but can slip into doing things for others in order to be needed. They typically have problems with possessiveness and with acknowledging their own needs. At their Best: unselfish and altruistic, they have unconditional love for others');
INSERT INTO enneagram ([name], [description]) VALUES ('The Achiever', 'The success-oriented, pragmatic type. Threes are self-assured, attractive, and charming. Ambitious, competent, and energetic, they can also be status-conscious and highly driven for advancement. They are diplomatic and poised, but can also be overly concerned with their image and what others think of them. They typically have problems with workaholism and competitiveness. At their Best: self-accepting, authentic, everything they seem to be—role models who inspire others');
INSERT INTO enneagram ([name], [description]) VALUES ('The Individualist', 'The sensitive, introspective, type. Fours are self-aware, expressive, and reserved. They are emotionally honest, creative, and personal, but can also be moody and self-conscious. Withholding themselves from others due to feeling vulnerable and defective, they can also feel disdainful and exempt from ordinary ways of living. They typically have problems with melancholy, selfindulgence, and self-pity. At their Best: inspired and highly creative, they are able to renew themselves and transform their experiences');
INSERT INTO enneagram ([name], [description]) VALUES ('The Investigator', 'The intense, cerebral type. Fives are alert, insightful, and curious. They are able to concentrate and focus on developing complex ideas and skills. Independent, innovative, and inventive, they can also become preoccupied with their thoughts and imaginary constructs. They become detached, yet high-strung and intense. They typically have problems with eccentricity, nihilism, and isolation. At their Best: visionary pioneers, often ahead of their time, and able to see the world in an entirely new way');
INSERT INTO enneagram ([name], [description]) VALUES ('The Loyalist', 'The committed, security-oriented type. Sixes are reliable, hard-working, responsible, and trustworthy. Excellent “trouble-shooters,” they foresee problems and foster cooperation, but can also become defensive, evasive, and anxious-running on stress while complaining about it. They can be cautious and indecisive, but also reactive, defiant and rebellious. They typically have problems with self-doubt and suspicion. At their Best: internally stable and self-reliant, courageously championing themselves and others');
INSERT INTO enneagram ([name], [description]) VALUES ('The Enthusiast', 'The busy, variety-seeking type. Sevens are extroverted, optimistic, versatile, and spontaneous. Playful, high-spirited, and practical, they can also misapply their many talents, becoming over-extended, scattered, and undisciplined. They constantly seek new and exciting experiences, but can become distracted and exhausted by staying on the go. They typically have problems with impatience and impulsiveness. At their Best: they focus their talents on worthwhile goals, becoming appreciative, joyous, and satisfied');
INSERT INTO enneagram ([name], [description]) VALUES ('The Challenger', 'The powerful, dominating type. Eights are self-confident, strong, and assertive. Protective, resourceful, straight-talking, and decisive, but can also be egocentric and domineering. Eights feel they must control their environment, especially people, sometimes becoming confrontational and intimidating. Eights typically have problems with their tempers and with allowing themselves to be vulnerable. At their Best: self-mastering, they use their strength to improve others" lives, becoming heroic, magnanimous, and inspiring.');
INSERT INTO enneagram ([name], [description]) VALUES ('The Peacemaker', 'The easygoing, self-effacing type. Nines are accepting, trusting, and stable. They are usually creative, optimistic, and supportive, but can also be too willing to go along with others to keep the peace. They want everything to go smoothly and be without conflict, but they can also tend to be complacent, simplifying problems and minimizing anything upsetting. They typically have problems with inertia and stubbornness. At their Best: indomitable and all-embracing, they are able to bring people together and heal conflicts');
--------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------
















