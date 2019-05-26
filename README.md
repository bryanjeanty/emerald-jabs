# Emerald

![ea_img](./public/images/emerald_app_IMG_V01.png)
[Emerald](https://emerald-app.herokuapp.com/) is an online learning management system application. This project came about as a group effort between three other developers and myself.

## Table of Contents

1. [Getting Started](#getting-started)
2. [Technology](#technology)
3. [Installation](#installation)
4. [Features](#features)
5. [Contributing](#contributing)
6. [Author](#author)
7. [License](#license)

## Getting Started

Initial software environment conditions

* Version Manager - [RVM](https://rvm.io)
* Package Manager - GEMS (Installed with Ruby)
* Code Editor - [VS Code](https://code.visualstudio.com/), [Atom](https://atom.io/), [Sublime Text](https://www.sublimetext.com/), etc.
* Operating System - MAC OS, Windows or any Linux Distro
* Modern Browser - [Google Chrome](https://www.google.com/chrome/) or [Firefox](https://www.mozilla.org/en-US/firefox/new/)

## Technology

**_PostgreSQL_**: SQL database used to store user, sessions, documents, images, posts and comments <br>
**_Rails_**: Full-stack framework used to create server, connect to database and serve up dynamic HTML content <br>
**_Active Storage_**: Used for cloud storage of uploaded files <br>
**_Quill Editor_**: Provided in-browser rich text editor <br>
**_Prawn_**: Convert HTML to PDF <br>
**_Devise_**: User registration and session setup <br>
**_Bootstrap_**: Reliable CSS framework used to quickly add UI components and responsiveness to application <br>

## Installation

* Install [RVM](https://rvm.io)

```bash
$ gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

$ \curl -sSL https://get.rvm.io | bash -s stable
```

* Install Ruby

```bash
$ rvm install ruby-2.5.3

$ rvm use ruby-2.5.3
```

* Install Bundler

```bash
$ gem install bundler --no-rdoc --no-ri
```

* Install Rails

```bash
$ gem install rails -v 5.2.2 --no-rdoc --no-ri
```

* Create Rails Project With PostgreSQL DB

```bash
$ rails new <app name> --database=postgresql

$ cd <app name directory>/
```

* Install Remaining Tech Stack

```bash
$ gem install pg devise activestorage twitter-bootstrap-rails prawn
```

## Features

* Authentication
* Sessions
* Rich Text Editor
* Embedded PDF Viewer
* File & Image Upload
* Posting
* Commenting
* Calculator

## Contributing

Pull requests are welcome. Please read [CONTRIBUTING.md](https://github.com/bryanjeanty/emerald-jabs/blob/master/CONTRIBUTING.md) for more details.

## Author

* **[Bryan Jeanty](https://github.com/bryanjeanty)** - Lead Developer & Client-Side Overseer
* **[Johnny Kim](https://github.com/johnnyk1m)** - Server-Side Samurai, Researcher & CSS Framework Integrator 
* **[Syed Fahim](https://github.com/sfahim)** - Project Management and UI/UX
* **[Abimbola Famuyiwa](https://github.com/bolamuyis)** - UI Design

I encourage you to explore the profiles and some of the projects created by these talented developers 😃!

## License

[MIT](https://github.com/bryanjeanty/emerald-jabs/blob/master/LICENSE.md)
