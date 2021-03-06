## Background

I was on my phone looking at all of the users on Instagram who requested to follow my private account. Aware that most of them were requests from strangers and/or were spam requests, I wanted to clear them out...all two-hundred fifteen requests. Although I wouldn't have minded handling it manually one by one and tap by tap, two things prompted me to go about composing a script. First, I had a feeling this type of clutter could easily build up again over time and trouble me in the future. Secondly, this program could be useful for someone else going through the same predicament. All of this led me toward exploring Instagram's website.

Using what I learned from my previous experience with automating Yahoo Fantasy Basketball, I had some sort of basis to go off of. After some trial and error, the objective was reached. In my case, I could successfully reject unwanted requests, as demonstrated in the gifs below. I could imagine that in another instance, however, a user would opt to accept all of those requests. A justification for that could be that followers would contribute to growing their brand and online presence in tune with the concept of growth hacking. Perhaps an individual is just starting out on Instagram, so there's a good chance people they personally know will be flooding their account with requests. Regardless of the scenario, the script will inquire with the user which option he or she intends to follow through on in order to handle the responses appropriately.

## The Situation

![Requests](Requests.gif)

## Expected Output (Reject All)

![Output](Output_Updated.gif)

## Dependencies

***If anything is unclear regarding environment setup, navigating directories, or explanations for automation, feel free to check out my YahooFantasyBasketballScript repository which could be helpful***

- **Ruby**: 2.3.3
  - Enter the command `ruby -v` in your terminal to determine which version you may have
- **Watir**: 6.8.4
  - Enter the command `gem list` in your terminal to determine which version you may have
- **Highline**: 1.7.8
  - Enter the command `gem list` in your terminal to determine which version you may have
- **Google Chrome**: 62 (Official Build) (64-bit)
  - Enter `chrome://settings/help` in your search bar to determine which version you may have
- **Google's ChromeDriver**:
  - Check out the YouTube videos by DevNami or Artur Spirin for ChromeDriver installation
  - Also feel free to check out the "[Getting Started](https://sites.google.com/a/chromium.org/chromedriver/getting-started)" section of Google's ChromeDriver support page

## Implementation

1. Clone, download, or fork this repository to your computer
2. Ensure that ChromeDriver is properly placed in your PATH
3. Once in the proper directory/folder, enter the command `bundle install` in your terminal, command line, or shell
4. Execute the file by entering `ruby 'Auto_Handle.rb'`

## Prompts

Preview of Prompt Layout:

```
Enter your Instagram username:
Enter your password:
Confirm your password:
Enter the Letter A to accept all requests; enter the letter R to reject all requests:
```

Example of a Valid Prompt Submission:

```
Enter your Instagram username: david1234321
Enter your password: ********
Confirm your password: ********
Enter the Letter A to accept all requests; enter the letter R to reject all requests: R
```
