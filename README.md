# helloworld!<>

helloworld!<> is a cross-platform mobile app created with Flutter, Dart, MySQL
and MongoDB. It provides a platform to connect all language learners and tutors
all around the world. 

## Table of Contents

* [Motivation](#motivation)
* [Technologies](#technologies)
* [Setup](#setup)
* [Features](#features)
    * [Create an account](#create-an-account)
    * [Hire a mentor](#hire-a-mentor)
    * [View user profile](#view-user-profile)
    * [Connect with others](#connect-with-others)
    * [Schedule a meeting](#schedule-a-meeting)

<a name="motivation"></a>
# Motivation

Our team has seen similar applications that aims to provide language learners
a platform to be able to source credible tutors, like Italki. 

However, when we look into the forum, we see that there are a lot of users who 
are looking for other users to practice speaking in the language they are
trying to master. Looking for someone with the same language goals that can
communicate in a comfortable language is not easy. Several users even included 
video conference links like Skype to hopefully meet up with someone online to 
practice the language together.

Thus, our team hopes to provide a more integrative and seamless experience to
many users who are looking for such alternatives, that is we wish to provide
a platform where users can  

<a name="technologies"></a>
# Technologies

Our team decided to use Flutter mainly due to its cross-platform compatibility 
for both IOS and Android, as well as its great tooling and high performance. 
We also aim to leave our options open for web development by capitalizing on
Flutter's web compatibility. 

Naturally, we use Dart, which is the language Flutter is based in, to handle
the business logic and orchestrate the backend component.

We chose not to use Firebase as we value scalability and customizability.
Despite being a convenient solution, we want our app to remain flexible and
migration-friendly. So we decided to go with MySQL for user information and
MongoDB to store messages and conversations at scale. 

<a name="setup"></a>
# Setup

1. Download [Fluter SDK](https://flutter.dev/docs/get-started/install) from the
   official website.

2. Clone into this repository.
```
$ git clone https://github.com/Aaronsms78/HelloWorld.git
```

3. Fetch dependencies specified in the pubspec.yaml file. 
```
$ flutter pub get
```

4. (Optional) Download [MongoDB](https://www.mongodb.com/download-center/community) 
   or/and [MySQL](https://dev.mysql.com/downloads/) to test on your local
   machine.

5. You're good to go!

<a name="features"></a>
# Features

<a name="create-an-account"></a>
## Create an Account

Sign-up as a learner in 2 steps or a mentor in 3 steps, hassle-free!

<p>
<img src="./prototype/login.jpg" width="250">
<img src="./prototype/sign-up.jpg" width="250">
<img src="./prototype/sign up page - learner.jpg" width="250">
</p>

<a name="hire-a-mentor"></a>
## Hire a Mentor

Book a mentor from our qualified pool of mentors to suit your learning
needs at your preferred timing and location. 

<p>
<img src="./prototype/mentor-preview.jpg" width="250">
<img src="./prototype/homepage - mentor.jpg" width="250">
</p>

<a name="view-user-profile"></a>
## View Learner's Profile

Check out other language learners' profile and learning goals.

<p>
<img src="./prototype/homepage.jpg" width="250">
<img src="./prototype/profile - learner (2).jpg" width="250">
</p>

<a name="view-mentor-profile"></a>
## View Mentors' Profile

Look through mentors' profiles and their respective qualifications 
and ratings. 

<p>
<img src="./prototype/profile - mentor (2).jpg" width="250">
<img src="./prototype/profile - mentor (3).jpg" width="250">
</p>

<a name="schedule-a-meeting"></a>
## Schedule a Meeting

Arrange a meeting with another language learner at the convenience 
of both of you and practice speaking in a safe and conducive environment. 

<p>
<img src="./prototype/booking-preview.jpg" width="250">
<img src="./prototype/booking-calendar.jpg" width="250">
<img src="./prototype/booking-request.jpg" width="250">
</p>

<a name="connect-with-others"></a>
## Connect with others

Find someone with similar learning goals to practice speaking with.

<p>
<img src="./prototype/messenger-preview.jpg" width="250">
<img src="./prototype/messenger.jpg" width="250">
<img src="./prototype/messenger - learner.jpg" width="250">
</p>

<!--
## Meetup online to practice speaking (KIV)

Use our platform to randomly pair up with other language learner who is just as
committed as you to practice speaking and accelerate your learning progress!
-->

