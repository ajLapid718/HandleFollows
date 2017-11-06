## Background

I was on my phone and looked at all of the people on Instagram who requested to follow my private account. Aware that most of them were from strangers and/or were spam requests, I wanted to clear them out...all two-hundred fifteen of them. Although I would not have minded handling it manually on my smartphone, two things prompted me to compose a script. One: I had a feeling that this clutter could easily happen again in the future. Two: This could be useful for someone else going through the same thing. All of this led me to observing the Instagram website and planning out various approaches.

Using what I learned from my previous experience with automating Yahoo Fantasy Basketball, I had some sort of basis to go off of. After some trial and error, the objective was reached. In my case, I could reject unwanted requests. I could imagine that in another instance, a user would want to accept all of those requests in order to grow their brand or if they are just starting out with an account. The script will ask the user which option he or she intends to follow through on.

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

```
Enter your Instagram username:
Enter your password:
Confirm your password:
Enter the Letter A to accept all requests; enter the letter R to reject all requests:
```
