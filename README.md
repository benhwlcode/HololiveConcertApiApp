# HololiveConcertApp

This project consists of a Web API and a SQL database. To see the repo page for the Blazor app, [click here](https://github.com/benhwlcode/HololiveConcertBlazorApp).

## Introduction

This is a RESTful API that retrieves data from a SQL server hosted on Azure. The API includes health check, rate limiting, caching, and uses JWT bearer tokens for authorization. A [Blazor SSR web app](https://hololiveconcertapiblazor-demo.azurewebsites.net) calls into the API and displays the data retrieved. See the repo page linked above for instructions on how to use the web app, this page will focus on instructions for the API iteself. 

The database contains information on concert performances for the online streamer group known as hololive. 

## Base URL and Endpoints

This is the root URL for the entire API:

`https://hololiveconcerts.azurewebsites.net/api/`

The following endpoints will determine which concert performances are returned.

- `Performance` will return every performance.
- `Performance/{page}` will return 50 performances per {page}.
- `Performance/Talent/{id}` will return every performance by talent {id}.
- `Performance/Concert/{id}` will return every performance by concert {id}.

The data returned will be in the following format:
```
{
  ActNumber: 1, // note: the order in which the song is performed in the setlist, an integer
  SongName: "Prism Melody", // note: the name of the song being performed, a string
  IsHololiveOriginal: true, // note: whether the song is an original song or not (cover), a boolean/bit
  FirstName: "IRyS", // note: the first name of the performer/talent, a string
  LastName: "", // note: the last name of the performer/talent, a string and can be empty
  IsGroupPerformance: true, // note: whether the song is performed with others in a group, a boolean/bit
  EventName: "hololive 5th Fes.", // note: the name of the event that hosted the concert, a string and can be empty
  ConcertName: "Capture the Moment", // note: the name of the concert, a string
  StageName: "Stage 2", // note: the name of the concert stage, a string
  ConcertDate: "2024-03-16" // note: the date of the concert, a date in "YYYY-MM-DD" format
}
```

## Authentication

The API uses JWT Bearer Tokens for authentication. Use the following HTTP Post endpoint to acquire the token.

`Authentication`

The authentication requires the below JSON object as the body.

```
{
  "UserKey": "ThisIsTheDemoHardCodedUserKey",
  "ApiKey": "ThisIsTheDemoHardCodedApiKey"
}
```

## Rate Limiting

The rate of is limited to 20 calls per minute, as well as the Azure server limit.

## Health Check

Use the `health` endpoint for health check.

## Afterword

Thank you for reading. You can go to [my website](https://www.benhwliu.com) to check out my other projects.

