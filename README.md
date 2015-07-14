# Crimson Correlation

Crimson Correlation is a software designer to aid on the calculation and analysis of series' autocorrelation values.

## System Requirements

As of version 0.2 the requirements are:

+ Ruby Version
    * 2.1.6 (x32)
+ Rails Version
    * 4.1.2
+ OS
    * Windows
    * Linux

## How to Run?

1. Run *bundle install* to install any gem that might be missing
2. Run *rake db:migrate* in order to create and populate the database;
3. Run *rake db:seed* to fill the database with 3 basic sets of series;
4. Run *rails server* on the project's root directory to start the server;
5. Open up your web browser, go to http://localhost:3000/ and enjoy!

## Gems used on this project

As of right now not everything is set on stone, but besides the builtin Rails' gems these are the ones being used:

+ Googlecharts
    * 1.6.10
+ Bootstrap-Sass
    * 3.2.0
+ Autoprefixer-Rails

## Special Thanks

+ Brandon Conway (http://www.gotealeaf.com/)
    * For writing an amazing tutorial on how to used bootstrap on a rails application. The tutorial is available [here] (http://www.gotealeaf.com/blog/integrating-rails-and-bootstrap-part-1)

## History

+ Version 0.1 - 'Simple Man':
    * Initial Version of CC;
    * Basic MVC implemented:
        - Series Model added
        - Series Controller added
        - Series' Views added
    * Basic statistics methods added:
        - Mean, Variance and Autocorrelation
    * Basic Charts added
    * Git versioning implemented
+ Version 0.2 - 'Hells Bells':
    * Updated Readme:
        - Added *System Requirements* section
        - Added *How to Run instructions* section
        - Added *Gems used on the Project* section
        - Added *History* section
        - Added *Special Thanks* section
        - Changed README from rdoc to md
    * Updated Views:
        - Added *Bootstrap* Css
        - Added *Navigation* Bar
        - Added *Footer*
        - Index:
            + Now using modals to display Data Series
        - Fine-tuning of generated charts:
            + Now with proper labels and data ranges
            + Removed bar charts for now
            + Changed from default theme to *pastel*
    * Dependencies:
        - Added *bootstrap-sass* to the Gemfile
        - Added *autoprefixer-rails* to the Gemfile
    * Versioning:
        - Added epic codenames for each version
+ Version 0.3 - 'Winds of Change':
    * Updated Views:
        - Show:
            + *Show* view now matches the other views' styles
            + Added Tooltips
            + Further fine-tuning of charts mechanics
        - Edit:
            + *Edit* view now matches the other views' styles
        - Index:
            + Tooltips added (Mouseover description for created @ data)
    * Fine-Tuning of Data processing:
        - Autocorrelation no longer calculates out of range entries
+ Version 0.4 - 'War Marchine' (Planned)
    * Dependencies:
        - Removed *googlecharts* from the Gemfile
        - Added *chartkick* to the Gemfile
    * Views:
        - Changed from bootstrap's default theme to a new custom theme
        - Show:
            + Charts updated from *googlecharts* to *chartkick*
            + Added an option to export the series' data to a CSV file