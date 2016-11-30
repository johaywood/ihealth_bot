#iHealthBot

iHealthBot is an automated tool to create iHealth data for several endpoints. Just install the gem, configure your iHealth credentials, and create data.

##Installation

```sh
$ gem install ihealth_bot
```

iHealthBot uses the [capybara-webkit driver](https://github.com/thoughtbot/capybara-webkit), so you'll need to install Qt as well.

```sh
$ brew install qt55
```

##Configuration

You need to configure iHealthBot with your iHealth credentials before creating data. You can do that with

```sh
$ ihealth_bot config --email your.email@example.com --password pASsW0Rd
```

or create it directly in `~/.ihealth_bot`

```javascript
  {
    "credentials": {
      "email": "your.email@example.com",
      "password": "pASsW0Rd"
    }
  }
```

##Usage

Currently iHealthBot supports creating data for the following endpoints

*   Activities
*   Blood Glucose
*   Blood Pressure
*   Food
*  Weight

To create data

```sh
$ ihealth_bot create
```

At the moment, data creation is only enabled for bulk creates meaning you can't create data for a specific endpoint. I'm hoping to enable single endpoint creation in the future.
