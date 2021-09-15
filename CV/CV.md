# Curriculum Vitae
## BIO
- __Andrei Ciceu__; _Cluj-Napoca, Cluj, Romania_
- Full-stack developer _& more_
- [+40 726 148 816](tel:0726148816)
- [andrei@soferonline.ro](mailto:andrei@soferonline.ro)
- __RO__ (Native), __EN__ (Proeficient), __FR__ (Elementary)

### Social
[![Github](https://logo.clearbit.com/github.com?size=30)](https://github.com/andreiciceu)  [![LinkedIN](https://logo.clearbit.com/linkedin.com?size=30)](https://www.linkedin.com/in/andrei-ciceu-26a35641/)

### Studies
- _2015 - 2017_: UBB Cluj - Master - Artificial Intelligence
- _2013 - 2014_: University of Wolverhampton, Erasmus, 1 semester - IT Project Management
- _2012 - 2015_: UBB Cluj - Computer Science - English


## Skills
- Front-end: __React, NextJS, EmberJS, TWIG, CSS__ _(SASS, Less, CSS Module, Post CSS)_, HTML, JavaScript, TypeScript
    - Libraries (important ones): __Redux, Redux Saga, SWR, Hooks, TailwindCSS, Bootstrap, Webpack, react-hook-form__
    - Testing: __React testing library, Jest, QUnit__
- Mobile: __React-Native__
- Backend: __PHP__; __Symfony__ 2, 3, 4, 5; [Api-Platform](https://api-platform.com)
- DevOps: __Github Actions__, __CircleCI__, __Fastlane__, Git, GitFlow, Docker, GitHub Container Registry
- Infrastructure: __Kubernetes__ (with __Helm__), __Varnish__ Cache, AWS (EC2, LB, EKS)
### Others
- WebSockets
- Integrations:
    - Facebook
    - Apple (Login, Auto-deployment)
    - Google Play Store, Firebase, Maps API
    - Stripe, MobilPay (Card & SMS payment), Terracomm (SMS payment)
    - Slack, Zoom, FGO, Gmail, Mailgun, Sendgrid, D7SMS, 
    - AWS (S3, RDS, Aurora, Media Platform, etc.)
    - Sentry.io
- Game development: __Unity__ (C#)
- Other known languages/syntaxes: Bash, C, C++, C#, Python, JavaScript, TypeScript, PHP, LUA, Pascal, Delphi, HTML, CSS, Nginx, Apache, Varnish, Dockerfile, docker-compose
- some (limited) GraphQL knowledge (Hasura)
- Understanding and basic knowledge of: Sales, Client Acquisition, Client management, Marketing, Management, Business, Financials, Stock Market, Accounting.
- Soft Skills: Giving proper Feedback (Feed forward), Effective & Assertive Communication, Team player, Seeing the big picture and how things fit together, Fast learner, I can understand & do various/different jobs, Critical thinking, I can come up with innovative solutions.



# Experience

## SoferOnline
- [Web](https://soferonline.ro/) and mobile ([Android](https://www.google.com/search?client=safari&rls=en&q=soferonline+play+store&ie=UTF-8&oe=UTF-8), [iOS](https://apps.apple.com/ro/app/soferonline-chestionare-auto/id1032823451)) e-learning app for drivers licence and CRM platform for driving schools.
- Founder, CEO, CTO, DevOps, Full-Stack Dev: 2015 - present (currently only maintenance)

The idea of this project came up during high-school, while preparing for my drivers licence exam.

Started as a vanilla PHP, HTML, JQuery, CSS project. Was majorly refreshed several times:
- from vanilla PHP to Symfony 2, using Twig (template engine);
- from Symfony 2 to Symfony 3 (& new programming patterns & paradigms)
- from Ionic Cordova to React Native
- adopted EmberJS framework for the CRM part
- from one-server-only architecture to Kubernetes
- from Twig (with JQuery and SCSS) and EmberJS to NextJS (React) and API-only on the PHP part

Technically, I've contributed to:
- __the infrastructure__: Kubernetes on IntoVPS.com, MySQL Database in a hosterion.ro managed VM, S3 for file storage, JWT for authentication; faced by a load balancer (ingress-nginx), and Nginx
- __Backend__: PHP Symfony 3, with Continuous integration & testing with GitHub actions, deployment into K8S cluster
- __FrontEnd__: NextJS, React-Native, EmberJS
- __Mobile app__: React Native Android/iOS, with SQLite, Redux, Push notifications, Analytics, Fastlane integration with GitHub actions for atumoatic releases
- __CI/CD__: GitHub Actions, with automatic deployment on GitHub releases
    - Reporting using Sentry.io and Prometheus for k8 health
- __Testing__: PHPUnit, Jest
- __Integrated services__: Sentry.io, Netopia Mobilpay Card Payments, D7SMS, Facebook (Auth, Friends), Apple Login, In App Purchases (Process & Verify), Analytics (Google & Firebase), AdMob, Teracomm SMS Payment, Gmail SMTP, Slack, Zoom

The transition to NextJS, Kubernetes and Github Actions was a major step , as it improved a the developers life, ease of updates, stability and quality of the product.
Over the years, I've worked with 6 developers. Currently the project is in maintenance mode, and has a dedicated team for marketing & support.

Overall, I've occupied all positions (at different times): General Management, Project Management, Sales, Client Management, Marketing, Customer Support, etc. . I've went through them all, in order to better understand the business.

It was a lengthy process to get here, but I've learned a lot:
- it's better to start with simple, robust things, and build upon them
- it's easier & usually better to use existing tools (e.g. I've build from scratch a PHP WebSocket chat system for live-chat, and replaced it entirely 4 years later with a simple Facebook Chat Widget)
- it's better (but usually hard) to choose the right tools to start with; the ones widely used are usually the best choice (frameworks, libraries)
- after creating the requirements, go through them again with the client, and get an OK/agreement/pre-contract
- much much more...



## ATACGames
- Puzzle freemium mobile games: [ColorBOX 2](https://play.google.com/store/apps/details?id=com.ATACGames.ColorBox), [ColorBOX 2](https://play.google.com/store/apps/details?id=com.ATACGames.ColorBoxJourney)
- Co-Founder, Unity Developer: 06.2014 - 09.2017

With my associate, we started our journey into game development by making a copy of Flappy Bird in Unity. After, we decided to create something unique, fun & relaxing to play, so we decided on a connect-3 puzzle game (similar to CandyCrush). I did the development part, while my associate handled design and marketing.

The game was built in Unity3D, written in C#, with the following integrations:
- Facebook Login, Friends, Share
- Google Play Services (Leaderboard)
- Push & Local Notifications
- Flurry Analytics (after transitioning from our in-house solution) & Crash Reporting
- In App Payments
- Reward Video ADS (with Flurry)

This also constituted my licence thesis. The games are still available and played, but development (and maintenance) have been discontinued due to not enough revenue :/.



## Soundmix.live (now EventMix)
- [Web](https://eventmix.live) and mobile event streaming app.
- Senior BE PHP Developer: 03.2019 - 08.2019

I was part of the feature team; our mission was to stream events from the Neversea festival (which we successfully accomplished). 

As a PHP back-end developer (Symfony + API-Platform) I helped at building the APIs for the mobile and web clients, along with writing tests (BeHat). I also contributed to the distributed (via Redis) NodeJS WebSocket chat platform that was used in-app along the live-stream.

Here is where I also dove deeper into server configuration and CI/CD, tweaking the Varnish cache to improve response times for publicly-available resources, managing AWS services (load-balancer, Redis, Kubernetes configuration) to fix some issues and improve overall server performance, stability and CI/CD.

Based on my past experiences with react-native mobile apps from SoferOnline, I communicated effectively and offered solutions to the mobile team. I also managed the festival events in the app during one night of the festival (the stream URLs needed to be updated, and events marked accordingly to who was actually on the stage).




## WhitePipe
- [Web](https://white-pipe.com) SaaS business management platform for Freelancers and SMEs
- CTO, DevOps, Senior FE React Developer: 09.2021 - present

Leading a team of 6 developers, to build a platform that helps freelancers manage mundane/repetitive undertakings (contracts, bills, calendar events, tasks, time-tracking).

Helped create the CI/CD pipelines, server Infrastructure, some coding guidelines and overall structure of the app, while being the middleware between the CEO and dev team.

I also code as a front-end developer, NextJS (React). A nice aspect of the project, where we've had some challenges, is the use of [codegen tools](https://github.com/OpenAPITools/openapi-generator) to generate boilerplate "glue" code for both the Java Spring backend and React Axios front-end. This keeps things alike, avoids types mismatches, and the burden of manually defining TypeScript types.


## Others
- built WordPress websites, some with custom themes:
    - https://psiholog-psihoterapeut-cluj.ro
    - https://truenaturedevelopment.ro
    - https://afacereatasubway.ro
    - https://lemnulverde.ro
- [Album ordering form](http://fplus-order.softatac.com) (NexJS)
- Built a Crypto Trading BOT using the Binance API
- [Raspberry PI home heating automation](https://github.com/woof-woof)
- Built on a start-up idea, SmartStore (shopping delivery app, similar to https://www.bringo.ro/), but it was probably ahead of its time or didn't have the right go-to-market strategy
- PlayTwin.com (on hold) - GraphQL





# Other info
- I love music (listening & playing), skiing, biking, basketball, nature, programming, geeky stuff, SF, movies, gaming, barbecue-ing
- I hate badly written code & poor specs
- Attended & finished Spherik Accelerator Progamme
- Investor @ [Risky Business Ventures](https://riskybusiness.ro)
- Won many prizes in IT/Math/Physics challenges & olympiads (mainly in high-school); proud of 2 mentions at National IT Olympiad ^^



------
_Spare the trees & Don't print this if possible_

Good day,

Andrei.
